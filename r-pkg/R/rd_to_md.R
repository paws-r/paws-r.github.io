#' Rewrite a bare operator name as a relative link
#'
#' Finds the first `>name<` token in `string` and replaces its bare text
#' occurrence with an HTML link to `../{operator}_{name}/`.
#'
#' @param string Character scalar containing an HTML tag like
#'   `<td>...>name<...</td>`.
#' @param operator Character scalar service/operator prefix used to build the
#'   link target.
#' @return Character scalar with the link substituted in.
#' @export
find_and_replace <- function(string, operator) {
  m <- regexpr(">[a-z0-9_]+<", string)
  found <- gsub(">|<", "", regmatches(string, m))
  gsub(
    found,
    sprintf('<a href="../%s_%s/"> %s </a>', operator, found, found),
    string
  )
}

#' Convert pandoc HTML `<table>` blocks to `<dl>` definition lists
#'
#' `tools::Rd2HTML()` renders Rd `\\describe{}` blocks as HTML tables, which
#' pandoc then preserves as literal `<table>` markup in the Markdown output.
#' This rewrites each `<table>...</table>` block in place into a `<dl>` list.
#'
#' Every page's first table is the Rd2HTML page-header table (title + "R
#' Documentation"), which is always left untouched; any later top-level
#' tables are `\\describe{}` blocks and get converted. Table tags are
#' matched regardless of attributes (`Rd2HTML`/pandoc always emit e.g.
#' `<table role="presentation">`, never a bare `<table>`).
#'
#' @param lines Character vector of Markdown lines, as read by `readLines()`.
#' @return Character vector of Markdown lines with tables converted to lists.
#' @export
html_table_to_list <- function(lines) {
  # convert table to list; skip the first (page-header) table
  open_idx <- grep("^<table(>| )", lines)[-1]
  close_idx <- grep("^</table>$", lines)[-1]
  idx_ranges <- Map(function(o, c) o:c, open_idx, close_idx)

  for (idx_range in idx_ranges) {
    lines[idx_range[1]] <- "<dl>"
    lines[idx_range[length(idx_range)]] <- "</dl>"

    lines[idx_range] <- gsub("<td><code", "<dt><code", lines[idx_range])
    lines[idx_range] <- gsub(
      '<td style="text-align: left;"><a',
      "<dt><a",
      lines[idx_range]
    )

    lines[idx_range] <- gsub("</code></td>", "</code></dt>", lines[idx_range])
    lines[idx_range] <- gsub("</a></td>", "</a></dt>", lines[idx_range])

    lines[idx_range] <- gsub("<td><p>", "<dd><p>", lines[idx_range])
    lines[idx_range] <- gsub(
      '<td style="text-align: left;">',
      "<dd>",
      lines[idx_range]
    )

    lines[idx_range] <- gsub("</p></td>", "</p></dd>", lines[idx_range])
    lines[idx_range] <- gsub("</td>", "</dd>", lines[idx_range])

    rm_tbody <- grep("<tbody>|</tbody>", lines[idx_range])
    rm_tr <- grep("<tr|</tr>", lines[idx_range])
    rm_colgp <- grep("<colgroup>|</colgroup>", lines[idx_range])
    if (length(rm_colgp) > 0) {
      rm_colgp <- rm_colgp[1]:rm_colgp[2]
    }
    remove <- c(rm_tbody, rm_tr, rm_colgp)
    lines[idx_range][remove] <- "REMOVE LINE"
  }
  Filter(
    function(x) {
      x != "REMOVE LINE"
    },
    lines
  )
}

#' Convert a single Rd file to a post-processed Markdown file
#'
#' Renders `rd_file` to HTML via [tools::Rd2HTML()], converts that HTML to
#' Markdown via [rmarkdown::pandoc_convert()], then applies link injection
#' ([find_and_replace()]), table-to-list conversion ([html_table_to_list()])
#' and code-fence wrapping ([wrap_r_code()]). The source `.Rd` file and the
#' intermediate `.html` file are deleted once consumed.
#'
#' @param rd_file Path to the `.Rd` file to convert.
#' @param html_dir Directory to write (and delete) the intermediate `.html`
#'   file in.
#' @param md_dir Directory to write the resulting `.md` file in.
#' @return Path to the Markdown file that was written, invisibly.
#' @export
rd_to_md <- function(rd_file, html_dir, md_dir) {
  # get rd name and not use alias
  lines <- readLines(rd_file, n = 5)
  name <- lines[grep("\\\\name\\{", lines, perl = TRUE)]
  name <- gsub("\\\\name\\{|\\}", "", name)

  html_file <- fs::path(html_dir, paste(name, "html", sep = "."))
  md_file <- fs::path(md_dir, paste(name, "md", sep = "."))

  tools::Rd2HTML(rd_file, html_file)

  # delete rd file
  fs::file_delete(rd_file)

  rmarkdown::pandoc_convert(
    html_file,
    to = "markdown_strict",
    output = md_file
  )

  # delete html file
  fs::file_delete(html_file)

  md <- readLines(md_file)
  # add url links
  if (!grepl("_", basename(md_file))) {
    idx <- grep('style=\"text-align: left;\">[a-z0-9_]+</td>', md)
    operator <- gsub("\\.md$", "", basename(md_file))
    for (j in idx) {
      md[[j]] <- find_and_replace(md[[j]], operator)
    }
  }

  md <- html_table_to_list(md)
  md <- wrap_r_code(md)
  writeLines(md, md_file)

  invisible(md_file)
}
