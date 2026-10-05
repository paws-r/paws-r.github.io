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

#' Roxygenize one chunk of a package's services into an isolated copy
#'
#' Internal helper for [build_long_rd_parallel()]. Builds a standalone
#' temporary copy of `pkg_dir` containing just `chunk_services`' own `R/`
#' files plus `shared_files`, roxygenizes it via [build_long_rd()], and
#' copies the resulting `man/*.Rd` files into `man_dir`.
#'
#' @param chunk_services Character vector of service name prefixes to
#'   include in this chunk.
#' @param pkg_dir Absolute path to the source package being roxygenized.
#' @param all_files Character vector of all `R/` file basenames in
#'   `pkg_dir`.
#' @param prefix Character vector the same length as `all_files`: each
#'   file's service prefix, or the file's own name for package-global
#'   files (see [build_long_rd_parallel()]).
#' @param shared_files Character vector of package-global `R/` file
#'   basenames to include in every chunk.
#' @param man_dir Absolute path to the shared output `man/` directory.
#' @return The number of `.Rd` files this chunk produced.
#' @noRd
build_rd_chunk <- function(chunk_services, pkg_dir, all_files, prefix, shared_files, man_dir) {
  chunk_files <- c(shared_files, all_files[prefix %in% chunk_services])
  chunk_dir <- fs::path(tempfile())
  fs::dir_create(fs::path(chunk_dir, "R"))
  fs::file_copy(fs::path(pkg_dir, "DESCRIPTION"), fs::path(chunk_dir, "DESCRIPTION"))
  fs::file_copy(fs::path(pkg_dir, "R", chunk_files), fs::path(chunk_dir, "R", chunk_files))
  build_long_rd(chunk_dir)

  rd_files <- fs::dir_ls(fs::path(chunk_dir, "man"))
  # overwrite = TRUE: every chunk also roxygenizes `shared_files` (e.g.
  # paws_package.R), so the package-level topic (e.g. paws-package.Rd) is
  # produced identically by every chunk. Without this, the second chunk
  # to copy it hits an EEXIST error that aborts the rest of *that
  # chunk's* vectorized file_copy() call, silently dropping every file
  # that sorts after it alphabetically - see
  # test-build_rd_parallel.R's "does not drop files" test for the
  # regression this guards against.
  fs::file_copy(rd_files, fs::path(man_dir, fs::path_file(rd_files)), overwrite = TRUE)
  length(rd_files)
}

#' Regenerate Rd documentation for a package, parallelized across services
#'
#' Splits `pkg_dir`'s services into `chunks` groups, roxygenizes each
#' group as an isolated temporary package copy in parallel via
#' [pmap_build()] and `build_rd_chunk()`, then merges the resulting
#' `man/*.Rd` files back into `pkg_dir`. Services are grouped by the
#' `{service}_service.R` / `{service}_operations.R` / `{service}_custom.R`
#' file naming convention `paws`'s generated source uses, so a service's
#' own files - including any hand-written `_custom.R` extras - always land
#' in the same chunk. Files matching none of those suffixes (e.g.
#' `paws_package.R`) are treated as package-global and included in every
#' chunk.
#'
#' Exists because `roxygen2::roxygenize()` is single-threaded and
#' dominates a full site rebuild's wall-clock time; see
#' `plans/speed-up-rd2md-build.md` for the investigation and benchmark
#' (~4-6x faster on the real `vendor/paws` corpus, verified
#' byte-identical to a single-process [build_long_rd()] run).
#'
#' @param pkg_dir Path to the package source directory to roxygenize.
#' @param chunks Number of groups to split `pkg_dir`'s services into.
#' @param workers Number of parallel [pmap_build()] workers to process the
#'   chunks with. Defaults to `chunks` (one worker per chunk); pass `1` to
#'   process every chunk sequentially - e.g. in tests, to exercise the
#'   chunking/merge logic without starting `mirai` daemons.
#' @return `pkg_dir`, invisibly.
#' @export
build_long_rd_parallel <- function(
  pkg_dir,
  chunks = parallel::detectCores(),
  workers = chunks
) {
  pkg_dir <- fs::path_abs(pkg_dir)
  all_files <- list.files(fs::path(pkg_dir, "R"))
  prefix <- sub("_(service|operations|custom)\\.R$", "", all_files)
  shared_files <- all_files[prefix == all_files]
  services <- unique(prefix[prefix != all_files])

  man_dir <- fs::path(pkg_dir, "man")
  if (fs::dir_exists(man_dir)) fs::dir_delete(man_dir)
  fs::dir_create(man_dir)

  chunk_id <- rep(seq_len(chunks), length.out = length(services))
  service_chunks <- split(services, chunk_id)

  pmap_build(
    service_chunks,
    build_rd_chunk,
    pkg_dir = pkg_dir,
    all_files = all_files,
    prefix = prefix,
    shared_files = shared_files,
    man_dir = man_dir,
    workers = workers
  )
  invisible(pkg_dir)
}
