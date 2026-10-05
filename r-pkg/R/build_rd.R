#' Regenerate Rd documentation for a package via roxygen2
#'
#' @param pkg_dir Path to the package source directory to roxygenize.
#' @return `pkg_dir`, invisibly.
#' @export
build_long_rd <- function(pkg_dir) {
  suppressMessages({
    roxygen2::update_collate(pkg_dir)
    roxygen2::roxygenize(pkg_dir, roclets = c("rd"))
  })
  invisible(pkg_dir)
}
