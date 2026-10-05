#' Regenerate Rd docs and convert them all to Markdown
#'
#' End-to-end replacement for the historical `build/rd2md.R` script:
#' roxygenizes `pkg_dir`, clears out `md_dir`, then converts every operator
#' `.Rd` file (plus a handful of `paws.common` addon pages) to Markdown in
#' parallel via [pmap_build()] and [rd_to_md()].
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
#' @param workers Number of parallel workers to pass to [pmap_build()].
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
  temp_html_dir <- tempfile()
  if (file.exists(md_dir)) fs::dir_delete(md_dir)
  fs::dir_create(c(md_dir, temp_html_dir), recurse = TRUE)

  log_info("Build Rd docs")
  build_long_rd(pkg_dir)

  log_info("Converting Rd to Markdown")
  files <- list.files(man_dir)
  # remove paws-package.Rd
  files <- files[files != "paws-package.Rd"]

  md_dir <- fs::path_abs(md_dir)
  rd_files <- fs::path_abs(file.path(man_dir, files))
  rd_files <- rd_files[fs::path_file(rd_files) != "reexports.Rd"]
  rd_files <- c(rd_files, fs::path_abs(file.path(common_man_dir, addons)))

  log_info(sprintf("Assigning %s cores.", workers))
  pmap_build(
    rd_files,
    rd_to_md,
    html_dir = temp_html_dir,
    md_dir = md_dir,
    workers = workers
  )

  fs::dir_delete(temp_html_dir)
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
