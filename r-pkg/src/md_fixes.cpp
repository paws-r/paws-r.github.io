#include <Rcpp.h>
#include <algorithm>
#include <cctype>
#include <fstream>
#include <string>
#include <vector>
using namespace Rcpp;

// ---------------------------------------------------------------------------
// 1. add_r_to_fences(): tag bare opening code fences with "r"
// ---------------------------------------------------------------------------

//' @useDynLib pawsdocs _pawsdocs_add_r_to_fences
//' @importFrom Rcpp evalCpp
// [[Rcpp::export]]
int add_r_to_fences(std::string path, std::string out = "", int max_indent = 3) {
  std::ifstream in(path.c_str());
  if (!in) stop("Cannot open file: " + path);

  std::vector<std::string> lines;
  std::string line;
  while (std::getline(in, line)) lines.push_back(line);
  in.close();

  bool in_fence = false;
  char fence_char = 0;
  size_t fence_len = 0;
  int n_changed = 0;

  for (auto &ln : lines) {
    // preserve Windows line endings
    std::string cr;
    if (!ln.empty() && ln.back() == '\r') { cr = "\r"; ln.pop_back(); }

    size_t indent = 0;
    while (indent < ln.size() && ln[indent] == ' ') indent++;

    if (indent <= static_cast<size_t>(max_indent) && indent < ln.size() &&
        (ln[indent] == '`' || ln[indent] == '~')) {
      char c = ln[indent];
      size_t j = indent;
      while (j < ln.size() && ln[j] == c) j++;
      size_t run = j - indent;

      if (run >= 3) {
        std::string rest = ln.substr(j);
        bool blank = rest.find_first_not_of(" \t") == std::string::npos;

        if (!in_fence) {
          // backtick info strings can't contain backticks (inline code, not a fence)
          if (!(c == '`' && rest.find('`') != std::string::npos)) {
            in_fence = true;
            fence_char = c;
            fence_len = run;
            if (blank) {              // opening fence with no language
              ln = ln.substr(0, j) + "r";
              n_changed++;
            }
          }
        } else if (c == fence_char && run >= fence_len && blank) {
          in_fence = false;           // closing fence: leave untouched
        }
      }
    }
    ln += cr;
  }

  if (n_changed > 0 || !out.empty()) {
    std::string target = out.empty() ? path : out;
    std::ofstream o(target.c_str());
    if (!o) stop("Cannot write to file: " + target);
    for (const auto &l : lines) o << l << "\n";
  }

  return n_changed;
}

 
// ---------------------------------------------------------------------------
// 2. reindent_lists(): normalise nested list indentation to `width` spaces
// ---------------------------------------------------------------------------
 
// indent: original indent of the item marker
// delta:  shift applied to the item line itself
// cdelta: shift applied to the item's body (continuation paragraphs, fences);
//         set lazily from the first body line so already-correct bodies stay put
struct Item { size_t indent; int delta; int cdelta; bool cset; };
 
static std::string shift_line(const std::string &ln, int d) {
  if (d == 0) return ln;
  size_t ind = 0;
  while (ind < ln.size() && ln[ind] == ' ') ind++;
  if (ind == ln.size()) return ln;                       // blank line
  if (d > 0) return std::string(d, ' ') + ln;
  return ln.substr(std::min(ind, static_cast<size_t>(-d)));
}
 
// shift for a body line of the deepest list item that "owns" it. The first body
// line fixes the shift so the body sits at (level + 1) * width; later lines get
// the same shift, which preserves their relative indentation.
static int cont_delta(std::vector<Item> &st, size_t ind, int width) {
  for (size_t k = st.size(); k-- > 0;) {
    if (st[k].indent < ind) {
      if (!st[k].cset) {
        st[k].cdelta = static_cast<int>((k + 1) * width) - static_cast<int>(ind);
        st[k].cset = true;
      }
      return st[k].cdelta;
    }
  }
  return st[0].delta;
}
 
static bool is_list_item(const std::string &s, size_t i) {
  if (i >= s.size()) return false;
  char c = s[i];
  size_t j = i;
  if (c == '-' || c == '*' || c == '+') {
    j = i + 1;
  } else if (std::isdigit(static_cast<unsigned char>(c))) {
    while (j < s.size() && std::isdigit(static_cast<unsigned char>(s[j]))) j++;
    if (j - i > 9 || j >= s.size() || (s[j] != '.' && s[j] != ')')) return false;
    j++;
  } else {
    return false;
  }
  if (j < s.size() && s[j] != ' ' && s[j] != '\t') return false;
 
  if (c == '-' || c == '*') {                            // thematic break: "* * *"
    int n = 0;
    bool only = true;
    for (size_t k = i; k < s.size(); k++) {
      if (s[k] == c) n++;
      else if (s[k] != ' ' && s[k] != '\t') { only = false; break; }
    }
    if (only && n >= 3) return false;
  }
  return true;
}
 
//' @useDynLib pawsdocs _pawsdocs_reindent_lists
//' @importFrom Rcpp evalCpp
// [[Rcpp::export]]
int reindent_lists(std::string path, std::string out = "", int width = 4) {
  std::ifstream in(path.c_str());
  if (!in) stop("Cannot open file: " + path);
  std::vector<std::string> lines;
  std::string line;
  while (std::getline(in, line)) lines.push_back(line);
  in.close();
 
  std::vector<Item> st;
  bool in_fence = false, in_front = false;
  char fchar = 0;
  size_t flen = 0, find_ind = 0;
  int fdelta = 0, n_changed = 0;
 
  for (size_t idx = 0; idx < lines.size(); idx++) {
    std::string &ln = lines[idx];
    std::string cr;
    if (!ln.empty() && ln.back() == '\r') { cr = "\r"; ln.pop_back(); }
    std::string res = ln;
 
    do {
      // skip YAML front matter
      if (idx == 0 && ln == "---") { in_front = true; break; }
      if (in_front) { if (ln == "---" || ln == "...") in_front = false; break; }
 
      size_t ws = 0, ind = 0;
      while (ws < ln.size() && (ln[ws] == ' ' || ln[ws] == '\t')) ws++;
      while (ind < ln.size() && ln[ind] == ' ') ind++;
      bool blank = (ws == ln.size());
 
      char c = ind < ln.size() ? ln[ind] : 0;
      size_t run = 0, j = ind;
      if (c == '`' || c == '~') { while (j < ln.size() && ln[j] == c) j++; run = j - ind; }
      bool fence_like = run >= 3;
      std::string rest = fence_like ? ln.substr(j) : "";
      bool rest_blank = rest.find_first_not_of(" \t") == std::string::npos;
 
      // inside a fence: shift with the owning list item, watch for the closer
      if (in_fence) {
        res = shift_line(ln, fdelta);
        if (fence_like && c == fchar && run >= flen && rest_blank && ind <= find_ind + 3)
          in_fence = false;
        break;
      }
 
      if (blank) break;
      if (ind != ws) break;                              // tab indentation: leave alone
 
      // opening fence (may sit inside a list item)
      bool can_fence = st.empty() ? ind <= 3 : true;
      if (fence_like && can_fence && !(c == '`' && rest.find('`') != std::string::npos)) {
        int d = 0;
        if (!st.empty()) { if (ind == 0) st.clear(); else d = cont_delta(st, ind, width); }
        res = shift_line(ln, d);
        in_fence = true; fchar = c; flen = run; find_ind = ind; fdelta = d;
        break;
      }
 
      // list item
      bool item = (st.empty() ? ind <= 3 : true) && is_list_item(ln, ind);
      if (item) {
        while (!st.empty() && st.back().indent > ind) st.pop_back();
        if (!st.empty() && st.back().indent == ind) st.pop_back();   // sibling
        int new_ind = static_cast<int>(st.size()) * width;
        int d = new_ind - static_cast<int>(ind);
        st.push_back({ind, d, 0, false});
        res = shift_line(ln, d);
        break;
      }
 
      // plain text: continuation of a list item, or the end of the list
      if (!st.empty()) {
        if (ind == 0) st.clear();
        else res = shift_line(ln, cont_delta(st, ind, width));
      }
    } while (false);
 
    if (res != ln) n_changed++;
    ln = res + cr;
  }
 
  if (n_changed > 0 || !out.empty()) {
    std::string target = out.empty() ? path : out;
    std::ofstream o(target.c_str());
    if (!o) stop("Cannot write to file: " + target);
    for (const auto &l : lines) o << l << "\n";
  }
  return n_changed;
}
 
