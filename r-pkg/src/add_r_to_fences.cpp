#include <Rcpp.h>
#include <fstream>
#include <string>
#include <vector>
using namespace Rcpp;

//' @useDynLib pawsdocs _pawsdocs_add_r_to_fences
//' @importFrom Rcpp evalCpp
// [[Rcpp::export]]
int add_r_to_fences(std::string path, std::string out = "") {
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

    // up to 3 spaces of indent allowed before a fence
    size_t indent = 0;
    while (indent < ln.size() && ln[indent] == ' ') indent++;

    if (indent <= 3 && indent < ln.size() &&
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

  std::ofstream o((out.empty() ? path : out).c_str());
  if (!o) stop("Cannot write to file: " + (out.empty() ? path : out));
  for (const auto &ln : lines) o << ln << "\n";

  return n_changed;
}