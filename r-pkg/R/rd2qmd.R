#' Locate the installed rd2qmd binary
#'
#' Errors with a clear fix rather than installing silently - CI should
#' provision `rd2qmd` with an explicit [install_rd2qmd()] call, the same way
#' R package dependencies are provisioned, not have it appear as a
#' surprising side effect of a build step.
#'
#' @param path Directory to look for the binary in.
#' @return Path to the rd2qmd binary.
#' @export
rd2qmd_bin <- function(path = rd2qmd_path()) {
  binary <- fs::path(path, rd2qmd_bin_name(system_os()))
  if (!fs::file_exists(binary)) {
    stop(
      "rd2qmd is not installed. Run pawsdocs::install_rd2qmd() first.",
      call. = FALSE
    )
  }
  binary
}

#' Convert a directory of Rd files to Markdown via rd2qmd
#'
#' Runs the `rd2qmd` binary ([rd2qmd_bin()]) once over the whole
#' directory: converts every `.Rd` file to Markdown, resolves internal
#' cross-reference links between them, and parallelizes the work across
#' `workers` jobs - all in one subprocess call. See
#' `plans/adopt-rd2qmd.md` for why each flag below is needed.
#'
#' @param man_dir Directory of `.Rd` files to convert. All files in this
#'   directory are treated as one topic set for internal link resolution,
#'   so files that should cross-link each other (e.g. an operation and its
#'   service's addon pages) need to be staged here together.
#' @param md_dir Output directory for the converted `.md` files. Created if
#'   it doesn't exist.
#' @param workers Number of parallel jobs (`rd2qmd`'s `-j`).
#' @return `md_dir`, invisibly.
#' @export
convert_rd_dir <- function(man_dir, md_dir, workers = parallel::detectCores()) {
  fs::dir_create(md_dir)
  result <- processx::run(
    rd2qmd_bin(),
    c(
      "convert", fs::path_abs(man_dir), "-o", fs::path_abs(md_dir),
      "-f", "md",
      # list-table (the default) is Pandoc/Quarto-only syntax; mkdocs'
      # Python-Markdown engine can't render it.
      "--arguments-format", "list",
      "--no-frontmatter",
      # paws tags every generated operation \keyword{internal}; rd2qmd
      # skips those by default (pkgdown convention), which would silently
      # drop almost the whole site without this flag.
      "--include-internal",
      "-j", as.character(workers)
    ),
    error_on_status = FALSE
  )
  if (result$status != 0L) {
    stop("rd2qmd failed:\n", result$stderr, call. = FALSE)
  }

  # rd2qmd doesn't escape literal "[text](...)"-shaped prose that isn't
  # actually a link (e.g. a bare regex pattern copied verbatim into an
  # argument's description) - mkdocs' Markdown parser then renders part of
  # it as a broken hyperlink, silently swallowing the "target"-shaped
  # portion into an href. Fix up in place rather than asking rd2qmd/paws
  # upstream to change, since this is cheap and self-contained here.
  md_files <- fs::dir_ls(md_dir, glob = "*.md")
  pmap_build(md_files, escape_false_links_file, workers = workers)

  invisible(md_dir)
}

# A real rd2qmd-generated link always resolves to either an internal
# "*.md" file or an "http(s)://" URL, up to its first closing paren
# (nested parens inside the link target, as in a verbatim regex pattern,
# never occur in rd2qmd's own link output). Anything else gets its
# opening bracket escaped so it renders as literal text instead of being
# misread as link syntax.
false_link_pattern <- "\\[([^][]*)\\]\\(([^)]*)\\)"

escape_false_links <- function(lines) {
  vapply(lines, escape_false_links_line, character(1), USE.NAMES = FALSE)
}

escape_false_links_line <- function(line) {
  m <- gregexpr(false_link_pattern, line, perl = TRUE)
  whole_matches <- regmatches(line, m)[[1]]
  if (length(whole_matches) == 0) {
    return(line)
  }
  targets <- sub(false_link_pattern, "\\2", whole_matches, perl = TRUE)
  is_real_link <- grepl("\\.md$", targets) | grepl("^https?://", targets)
  replacements <- ifelse(is_real_link, whole_matches, paste0("\\", whole_matches))
  regmatches(line, m) <- list(replacements)
  line
}

escape_false_links_file <- function(file) {
  writeLines(escape_false_links(readLines(file)), file)
  invisible(file)
}
