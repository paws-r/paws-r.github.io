#' Regenerate Rd docs and convert them all to Markdown
#'
#' End-to-end replacement for the historical `build/rd2md.R` script:
#' roxygenizes `pkg_dir` (in parallel via [build_long_rd_parallel()]), then
#' converts every operator `.Rd` file (plus a handful of `paws.common`
#' addon pages) to Markdown via [convert_rd_dir()].
#'
#' `pkg_dir`'s own `.Rd` files and the `paws.common` addon pages are staged
#' into one temporary directory before conversion - `rd2qmd` resolves
#' internal cross-reference links (e.g. a service's operation table linking
#' to each operation's own page) against whatever topic set it's given, so
#' the addons need to be visible alongside the operators for those links to
#' resolve, without permanently copying them into either source package's
#' own `man/` directory. `paws-package.Rd` and `reexports.Rd` are excluded
#' from staging: both have the same file-name stem as their own "service"
#' once converted (no `_` to split on), so [make_hierarchy()] would
#' otherwise mistake each for a spurious one-page "Client" entry.
#'
#' @param pkg_dir Path to the vendored `paws` package source to roxygenize
#'   (e.g. `vendor/paws/paws`).
#' @param man_dir Path to `pkg_dir`'s `man/` directory containing the
#'   generated `.Rd` files to convert.
#' @param common_man_dir Path to the vendored `paws.common` package's
#'   `man/` directory, containing shared addon pages.
#' @param md_dir Output directory for the converted `.md` files (e.g.
#'   `build/mkdocs/docs/docs`). Deleted and recreated.
#' @param addons Character vector of `paws.common` addon `.Rd` file names to
#'   include alongside `pkg_dir`'s own operators.
#' @param workers Number of parallel workers used for both roxygenizing
#'   `pkg_dir` (as chunks, via [build_long_rd_parallel()]) and converting
#'   its Rd files to Markdown (via [convert_rd_dir()]).
#' @return `md_dir`, invisibly.
#' @export
build_rd_docs <- function(
  pkg_dir,
  man_dir,
  common_man_dir,
  md_dir,
  addons = c(
    "set_service_parameter.Rd",
    "paginate.Rd",
    "list_paginators.Rd",
    "paws_stream.Rd"
  ),
  workers = parallel::detectCores()
) {
  if (fs::dir_exists(md_dir)) fs::dir_delete(md_dir)
  fs::dir_create(md_dir, recurse = TRUE)

  log_info("Build Rd docs")
  build_long_rd_parallel(pkg_dir, chunks = workers, workers = workers)

  log_info("Converting Rd to Markdown")
  staging_dir <- fs::file_temp()
  fs::dir_create(staging_dir)

  files <- list.files(man_dir)
  files <- files[!(files %in% c("paws-package.Rd", "reexports.Rd"))]
  fs::file_copy(fs::path(man_dir, files), fs::path(staging_dir, files))
  fs::file_copy(fs::path(common_man_dir, addons), fs::path(staging_dir, addons))

  convert_rd_dir(staging_dir, md_dir, workers = workers)
  fs::dir_delete(staging_dir)

  invisible(md_dir)
}

#' Copy and rewrite static site assets, then build `mkdocs.yml`
#'
#' End-to-end replacement for the historical `build/build_assests.R`
#' script: copies vendor assets, rewrites the README and example links,
#' then generates `mkdocs.yml`.
#'
#' @param vendor_dir Path to the vendored `paws` checkout (e.g.
#'   `vendor/paws`).
#' @param out_dir Path to the mkdocs docs directory to copy assets into
#'   (e.g. `build/mkdocs/docs`).
#' @param orig_yaml_file Path to the mkdocs config template (e.g.
#'   `build/mkdocs.orig.yml`).
#' @param site_yaml_out_file Path to write the generated `mkdocs.yml` to
#'   (e.g. `build/mkdocs/mkdocs.yml`).
#' @param description_file Path to the vendored `paws` package's
#'   `DESCRIPTION` file, used for the site version.
#' @param md_dir Directory of converted operator `.md` files, as produced
#'   by [build_rd_docs()] (e.g. `build/mkdocs/docs/docs`).
#' @param alias_file Path to the YAML file mapping service short names to
#'   display names (e.g. `build/aws_service_alias.yml`).
#' @param paws_cran_dir Path to the vendored `paws` checkout's `cran`
#'   directory (e.g. `vendor/paws/cran`).
#' @return `site_yaml_out_file`, invisibly.
#' @export
build_site_assets <- function(
  vendor_dir,
  out_dir,
  orig_yaml_file,
  site_yaml_out_file,
  description_file,
  md_dir,
  alias_file,
  paws_cran_dir
) {
  log_info("Build site assests")

  copy_vendor_assets(vendor_dir, out_dir)
  edit_readme(fs::path(out_dir, "README.md"))
  edit_r_examples(fs::path(out_dir, "examples"))

  build_site_yaml(
    orig_yaml_file = orig_yaml_file,
    out_file = site_yaml_out_file,
    description_file = description_file,
    md_dir = md_dir,
    alias_file = alias_file,
    reference_index_out_file = fs::path(md_dir, "reference_index.md"),
    paws_dir = paws_cran_dir,
    developer_guide_dir = fs::path(out_dir, "developer_guide"),
    examples_dir = fs::path(out_dir, "examples")
  )

  invisible(site_yaml_out_file)
}

#' Build the complete docs source tree for the mkdocs site
#'
#' Equivalent to the `Makefile`'s `build-docs` target: runs
#' [build_rd_docs()] then [build_site_assets()] with paths matching this
#' repository's layout.
#'
#' @param workers Number of parallel workers to pass to [build_rd_docs()].
#' @return The path returned by [build_site_assets()], invisibly.
#' @export
build_docs <- function(workers = parallel::detectCores()) {
  build_rd_docs(
    pkg_dir = "vendor/paws/paws",
    man_dir = "vendor/paws/paws/man",
    common_man_dir = "vendor/paws/paws.common/man",
    md_dir = "build/mkdocs/docs/docs",
    workers = workers
  )

  build_site_assets(
    vendor_dir = "vendor/paws",
    out_dir = "build/mkdocs/docs",
    orig_yaml_file = "build/mkdocs.orig.yml",
    site_yaml_out_file = "build/mkdocs/mkdocs.yml",
    description_file = "vendor/paws/cran/paws/DESCRIPTION",
    md_dir = "build/mkdocs/docs/docs",
    alias_file = "build/aws_service_alias.yml",
    paws_cran_dir = "vendor/paws/cran"
  )
}
