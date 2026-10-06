#' Bar get, with a default
#'
#' A hand-written extra alongside the generated `bar_service.R`/
#' `bar_operations.R` pair, mirroring e.g. `rds_custom.R`/`s3_custom.R` in
#' the real `paws` package. Depends on `bar_get()`, which must therefore
#' land in the same chunk as this file.
#' @return `bar_get(1)`.
#' @export
bar_get_default <- function() {
  bar_get(1)
}
