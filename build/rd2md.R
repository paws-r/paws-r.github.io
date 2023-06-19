dir <- "vendor/paws/paws/man"
temp_html_dir <- tempfile()
md_dir <- "build/mkdocs/docs/docs"

find_and_replace <- function(string, operator) {
  m <- regexpr(">[a-z0-9_]+<", string)
  found <- gsub(">|<", "", regmatches(string, m))
  gsub(
    found,
    sprintf('<a href="../%s_%s/"> %s </a>', operator, found, found),
    string
  )
}

# basic logger
log_info <- function(msg) {
  on.exit(flush.console())
  date_time <- strftime(Sys.time(), format = "%Y-%m-%d %H:%M:%S")
  log_msg <- sprintf("INFO %s: %s", date_time, msg)
  writeLines(log_msg)
}

build_long_rd <- function(long_doc = "vendor/paws/paws") {
  suppressMessages({
    roxygen2::update_collate(long_doc)
    roxygen2::roxygenize(long_doc, roclets = c("rd"))
  })
}

if (file.exists(md_dir)) fs::dir_delete(md_dir)
fs::dir_create(c(md_dir, temp_html_dir), recurse = TRUE)

log_info("Build Rd docs")

# create Rd docs
build_long_rd()

log_info("Converting Rd to Markdown")

files <- list.files(dir)

# remove paws-package.Rd
files <- files[files != "paws-package.Rd"]

md_dir <- fs::path_abs(md_dir)
rd_files <- fs::path_abs(file.path(dir, files))

col_width <- c(
  "<colgroup>",
  '<col style="width: 35%" />',
  '<col style="width: 65%" />',
  "</colgroup>"
)

file_name <- function(dir, name, ext = "") {
  fs::path(dir, sprintf("%s.%s", name, ext))
}

html_table_to_list <- function(lines) {
  # convert table to list
  idx <- grep("<table>|</table>", lines)[-1]
  idx_ranges <- split(idx, ceiling(seq_along(idx) / 2))
  idx_ranges <- lapply(idx_ranges, \(x) x[1]:x[2])

  for (idx_range in idx_ranges) {
    lines[idx_range] <- gsub("<table>", "<dl>", lines[idx_range])
    lines[idx_range] <- gsub("</table>", "</dl>", lines[idx_range])

    lines[idx_range] <- gsub("<td><code", "<dt><code", lines[idx_range])
    lines[idx_range] <- gsub('<td style="text-align: left;"><a', "<dt><a", lines[idx_range])

    lines[idx_range] <- gsub("</code></td>", "</code></dt>", lines[idx_range])
    lines[idx_range] <- gsub("</a></td>", "</a></dt>", lines[idx_range])

    lines[idx_range] <- gsub("<td><p>", "<dd><p>", lines[idx_range])
    lines[idx_range] <- gsub('<td style="text-align: left;">', "<dd>", lines[idx_range])

    lines[idx_range] <- gsub("</p></td>", "</p></dd>", lines[idx_range])
    lines[idx_range] <- gsub("</td>", "</dd>", lines[idx_range])

    rm_tbody <- grep("<tbody>|</tbody>", lines[idx_range])
    rm_tr <- grep("<tr|</tr>", lines[idx_range])
    rm_colgp <- grep("<colgroup>|</colgroup>", lines[idx_range])
    if (length(rm_colgp) > 0) {
      rm_colgp <- rm_colgp[1]:rm_colgp[2]
    }
    remove <- c(rm_tbody, rm_tr, rm_colgp)
    lines[idx_range][remove] <- ""
  }
  return(lines)
}

# rd to markdown
for (i in seq_along(rd_files)) {
  # get rd name and not use alias
  lines <- readLines(rd_files[[i]], n = 3)
  name <- lines[grep("\\\\name\\{", lines, perl = TRUE)]
  name <- gsub("\\\\name\\{|\\}", "", name)

  html_file <- file_name(temp_html_dir, name, "html")
  md_file <- file_name(md_dir, name, "md")

  tools::Rd2HTML(rd_files[[i]], html_file)
  rmarkdown::pandoc_convert(
    html_file,
    to = "markdown_strict",
    output = md_file
  )
  # add url links
  if (!grepl("_", basename(md_file))) {
    md <- readLines(md_file)
    idx <- grep('style=\"text-align: left;\">[a-z0-9_]+</td>', md)
    operator <- gsub("\\.md$", "", basename(md_file))
    for (j in idx) {
      md[[j]] <- find_and_replace(md[[j]], operator)
    }
    md <- html_table_to_list(md)
    writeLines(md, md_file)
  } else {
    md <- readLines(md_file)
    md <- html_table_to_list(md)
    writeLines(md, md_file)
  }
}

fs::dir_delete(temp_html_dir)
