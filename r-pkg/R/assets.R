#' @importFrom fs file_copy path dir_delete dir_copy dir_ls
NULL

#' Copy static site assets out of the vendored paws checkout
#'
#' Copies the top-level `README.md` and logo, the `examples/` directory, and
#' the developer guide articles. Every file in `docs/` (other than
#' `logo.png`) is picked up dynamically: images go to `img/`, everything
#' else (Markdown, PDFs, etc.) goes to `developer_guide/`, alongside
#' `CODE_OF_CONDUCT.md` and `DEVELOPER_GUIDE.md`.
#'
#' @param vendor_dir Path to the vendored `paws` checkout (containing
#'   `README.md`, `docs/`, `examples/`).
#' @param out_dir Path to the mkdocs docs directory to copy assets into
#'   (typically `build/mkdocs/docs`).
#' @return `out_dir`, invisibly.
#' @export
copy_vendor_assets <- function(vendor_dir, out_dir) {
  fs::file_copy(fs::path(vendor_dir, "README.md"), out_dir, overwrite = TRUE)
  fs::file_copy(
    fs::path(vendor_dir, "docs", "logo.png"),
    out_dir,
    overwrite = TRUE
  )

  dirs <- fs::path(out_dir, c("examples", "developer_guide", "img"))
  if (all(file.exists(dirs))) {
    fs::dir_delete(dirs)
  }
  fs::dir_create(dirs, recurse = TRUE)

  fs::dir_copy(
    fs::path(vendor_dir, "examples"),
    fs::path(out_dir, "examples"),
    overwrite = TRUE
  )

  vendor_docs <- fs::path(vendor_dir, "docs")
  docs_files <- list.files(vendor_docs)
  docs_files <- docs_files[docs_files != "logo.png"]
  is_image <- grepl("\\.(png|gif|jpe?g|svg)$", docs_files, ignore.case = TRUE)

  for (f in docs_files[is_image]) {
    fs::file_copy(
      fs::path(vendor_docs, f),
      fs::path(out_dir, "img", f),
      overwrite = TRUE
    )
  }

  for (f in docs_files[!is_image]) {
    fs::file_copy(
      fs::path(vendor_docs, f),
      fs::path(out_dir, "developer_guide", f),
      overwrite = TRUE
    )
  }

  for (f in c("CODE_OF_CONDUCT.md", "DEVELOPER_GUIDE.md")) {
    fs::file_copy(
      fs::path(vendor_dir, f),
      fs::path(out_dir, "developer_guide", f),
      overwrite = TRUE
    )
  }

  invisible(out_dir)
}

#' Rewrite the copied `README.md`'s image and relative-link paths
#'
#' @param file Path to the copied `README.md` to rewrite in place.
#' @return `file`, invisibly.
#' @export
edit_readme <- function(file) {
  readme <- readLines(file)
  # fix logo image
  idx <- grep('<img src="docs/logo.png" align="right" height="150" />', readme)
  readme[idx] <- gsub(
    '<img src="docs/logo.png" align="right" height="150" />',
    '<img src= "logo.png" style="float:right;height:150px;width:auto" />',
    readme[idx]
  )

  # fix docs links
  idx <- grepl(r"{\[.*\]\(docs/.*\)|\[.*\]\(developer_guide/docs/.*\)}", readme)
  readme[idx] <- gsub(r"{\[Logo\]\(docs/logo.png\)}", "Logo", readme[idx])
  readme[idx] <- gsub(
    r"{!\[\]\(docs/code_completion.gif\)}",
    r"{!\[\]\(img/code_completion\.gif\)}",
    readme[idx]
  )
  readme[idx] <- gsub(
    "docs/developer_guide|docs",
    "developer_guide",
    readme[idx]
  )

  # fix examples links
  idx <- grepl(r"{\[.*\]\(examples/.*\)}", readme)
  readme[idx] <- gsub(r"{\.R\)}", r"{\.md\)}", readme[idx])

  writeLines(readme, file)
  invisible(file)
}

#' Wrap copied `.R` example files as fenced Markdown
#'
#' Converts every `.R` file in `dir` to a same-named `.md` file wrapped in
#' an R code fence, and deletes the original `.R` files.
#'
#' @param dir Directory of example files (as copied by
#'   [copy_vendor_assets()]).
#' @return `dir`, invisibly.
#' @export
edit_r_examples <- function(dir) {
  files <- fs::dir_ls(dir)
  r_files <- files[grepl("\\.R$", files)]

  for (r_file in r_files) {
    r_file_edit <- readLines(r_file)
    r_file_edit <- c("```r", r_file_edit, "```")
    writeLines(r_file_edit, gsub("R$", "md", r_file))
  }
  fs::file_delete(r_files)
  invisible(dir)
}
