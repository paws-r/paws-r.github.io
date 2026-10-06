#' @importFrom parallel detectCores
#' @importFrom fs dir_exists dir_create dir_delete path file_copy file_temp
NULL

#' Regenerate Rd docs and convert them all to Markdown
#'
#' Roxygenizes `pkg_dir` (via [build_long_rd_parallel()]), then converts
#' every remaining `.Rd` file to Markdown via two paths: each service's
#' client/constructor page (`s3.Rd`, `ec2.Rd`, ... - detected via
#' [is_client_rd()]) is rendered directly via [render_client_rd_file()];
#' every operator page, plus the `paws.common` addon pages, goes through
#' [convert_rd_dir()] (`rd2qmd`). See [render_client_rd()]'s docs for why
#' client pages get their own renderer.
#'
#' Operator files and addon pages are staged into one temporary directory
#' first so `rd2qmd` can resolve cross-reference links between them (e.g.
#' a service's operation table linking to each operation's own page)
#' without permanently copying the addons into either source package's
#' own `man/` directory. `paws-package.Rd` and `reexports.Rd` are excluded
#' from staging entirely: both have the same file-name stem as their own
#' "service" once converted (no `_` to split on), so [make_hierarchy()]
#' would otherwise mistake each for a spurious one-page "Client" entry.
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
#' @param workers Number of parallel workers used for roxygenizing
#'   `pkg_dir` (as chunks, via [build_long_rd_parallel()]), rendering
#'   client pages (via [pmap_build()]), and converting the remaining Rd
#'   files to Markdown (via [convert_rd_dir()]).
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
  if (fs::dir_exists(md_dir)) {
    fs::dir_delete(md_dir)
  }
  fs::dir_create(md_dir, recurse = TRUE)

  log_info("Build Rd docs")
  build_long_rd_parallel(pkg_dir, chunks = workers, workers = workers)

  files <- list.files(man_dir)
  files <- files[!(files %in% c("paws-package.Rd", "reexports.Rd"))]
  client_files <- files[is_client_rd(files)]
  operation_files <- files[!is_client_rd(files)]

  log_info("Rendering client pages")
  alias_index <- build_rd_alias_index(man_dir)
  pmap_build(
    fs::path(man_dir, client_files),
    render_client_rd_file,
    md_dir = md_dir,
    alias_index = alias_index,
    workers = workers
  )

  log_info("Converting Rd to Markdown")
  staging_dir <- fs::file_temp()
  fs::dir_create(staging_dir)

  fs::file_copy(
    fs::path(man_dir, operation_files),
    fs::path(staging_dir, operation_files)
  )
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
#' @param vendor_dir Path to the directory containing the vendored `paws`
#'   checkout (i.e. `vendor_dir/paws` holds the `paws`, `paws.common`, and
#'   `cran` subdirectories).
#' @param out_dir Path to the build output directory that the mkdocs site
#'   (config, converted docs, and copied assets) is assembled under.
#' @param workers Number of parallel workers to pass to [build_rd_docs()].
#' @return The path returned by [build_site_assets()], invisibly.
#' @export
build_docs <- function(
  vendor_dir = "vendor",
  out_dir = "build",
  workers = parallel::detectCores()
) {
  pkg_dir <- fs::path(vendor_dir, "paws", "paws")
  man_dir <- fs::path(vendor_dir, "paws", "paws", "man")
  common_man_dir <- fs::path(vendor_dir, "paws", "paws.common", "man")
  md_dir <- fs::path(out_dir, "mkdocs", "docs", "docs")
  build_rd_docs(
    pkg_dir = pkg_dir,
    man_dir = man_dir,
    common_man_dir = common_man_dir,
    md_dir = md_dir,
    workers = workers
  )
  paws_cran_dir <- fs::path(vendor_dir, "paws", "cran")
  build_site_assets(
    vendor_dir = fs::path(vendor_dir, "paws"),
    out_dir = fs::path(out_dir, "mkdocs", "docs"),
    orig_yaml_file = fs::path(out_dir, "mkdocs.orig.yml"),
    site_yaml_out_file = fs::path(out_dir, "mkdocs", "mkdocs.yml"),
    description_file = fs::path(paws_cran_dir, "paws", "DESCRIPTION"),
    md_dir = md_dir,
    alias_file = fs::path(out_dir, "aws_service_alias.yml"),
    paws_cran_dir = paws_cran_dir
  )
}
