#' @importFrom mirai daemons everywhere mirai_map
#' @importFrom parallel detectCores
NULL

#' Map a function over a list using parallel `mirai` workers
#'
#' Wraps [mirai::mirai_map()] with daemon setup/teardown. When `workers` is
#' `1`, no daemons are started and the mapping runs sequentially via
#' `lapply()` instead - this is the path the test suite uses, so running
#' tests never spins up background processes.
#'
#' @param x List/vector to map over.
#' @param f Function to apply to each element of `x`.
#' @param ... Additional fixed arguments passed to `f` for every element.
#' @param workers Number of parallel worker processes to use. Defaults to
#'   [parallel::detectCores()]; pass `1` to force sequential execution.
#' @return A list of results, one per element of `x`.
#' @export
pmap_build <- function(x, f, ..., workers = parallel::detectCores()) {
  if (workers <= 1) {
    return(lapply(x, f, ...))
  }

  mirai::daemons(workers)
  on.exit(mirai::daemons(0), add = TRUE)
  mirai::everywhere(library(pawsdocs))

  mirai::mirai_map(x, f, .args = list(...))[]
}
