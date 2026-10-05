#' Build `mkdocs.yml` from the template and generated nav sections
#'
#' Reads `orig_yaml_file`, fills in the `site_name` version, the `Reference`
#' nav section (via [make_hierarchy()]), the `Developer Guide` nav section
#' (via [get_developer_guide()]) and the `Code Examples` nav section (via
#' [get_examples()]), then writes the result to `out_file`.
#'
#' @param orig_yaml_file Path to the mkdocs config template (e.g.
#'   `build/mkdocs.orig.yml`) containing placeholder `Reference`,
#'   `Developer Guide` and `Code Examples` nav entries to fill in.
#' @param out_file Path to write the generated `mkdocs.yml` to.
#' @param description_file Path to the vendored `paws` package's
#'   `DESCRIPTION` file, used for the site version (see [get_version()]).
#' @param md_dir Directory of converted operator `.md` files, used to build
#'   the Reference hierarchy (see [make_hierarchy()]).
#' @param alias_file Path to the YAML file mapping service short names to
#'   display names, used by [reference_index()] and [make_hierarchy()].
#' @param reference_index_out_file Path to write the reference index page
#'   to (see [reference_index()]).
#' @param paws_dir Path to the vendored `paws` checkout's `cran` directory,
#'   used by [reference_index()].
#' @param developer_guide_dir Directory of developer guide files, used by
#'   [get_developer_guide()].
#' @param examples_dir Directory of example files, used by [get_examples()].
#' @return `out_file`, invisibly.
#' @export
build_site_yaml <- function(
  orig_yaml_file,
  out_file,
  description_file,
  md_dir,
  alias_file,
  reference_index_out_file,
  paws_dir,
  developer_guide_dir,
  examples_dir
) {
  site_yaml <- org_yaml <- yaml::yaml.load_file(orig_yaml_file)

  for (i in c("extra_css", "plugins")) {
    if (!is.null(org_yaml[[i]]) && !is.list(length(org_yaml[[i]]))) {
      site_yaml[[i]] <- as.list(site_yaml[[i]])
    }
  }

  site_yaml$site_name <- sprintf("paws: %s", get_version(description_file))

  # make_hierarchy() lists md_dir's contents, so it must run before
  # reference_index() writes reference_index.md into that same directory -
  # otherwise the index page leaks into the hierarchy as a nav entry.
  ref_idx <- which(
    vapply(site_yaml$nav, \(x) names(x) == "Reference", FUN.VALUE = logical(1))
  )
  site_yaml$nav[[ref_idx]]$Reference <- make_hierarchy(
    md_dir,
    alias_file,
    reference_index_out_file
  )

  reference_index(paws_dir, alias_file, reference_index_out_file)

  ref_idx <- which(
    vapply(
      site_yaml$nav,
      \(x) names(x) == "Developer Guide",
      FUN.VALUE = logical(1)
    )
  )
  site_yaml$nav[[ref_idx]][["Developer Guide"]] <- get_developer_guide(
    developer_guide_dir
  )

  ref_idx <- which(
    vapply(
      site_yaml$nav,
      \(x) names(x) == "Code Examples",
      FUN.VALUE = logical(1)
    )
  )
  site_yaml$nav[[ref_idx]][["Code Examples"]] <- get_examples(examples_dir)

  site_yaml <- yaml::as.yaml(site_yaml, indent.mapping.sequence = TRUE)
  site_yaml <- gsub("- '", "- ", site_yaml)
  site_yaml <- gsub(":\n          docs", ": docs", site_yaml)

  for (ext in c("md", "pdf")) {
    site_yaml <- gsub(
      sprintf("\\.%s'", ext),
      sprintf("\\.%s", ext),
      site_yaml
    )
  }
  writeLines(site_yaml, out_file, "")
  invisible(out_file)
}
