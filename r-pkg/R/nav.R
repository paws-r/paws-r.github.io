#' @importFrom heck to_title_case
#' @importFrom fs path path_file dir_ls
#' @importFrom yaml read_yaml
NULL

#' Convert file names into title-cased display names
#'
#' @param file_names Character vector of file names (extension stripped
#'   before conversion).
#' @return Character vector of title-cased names.
#' @export
convert_name <- function(file_names) {
  file_names <- gsub("\\..*$", "", file_names)
  heck::to_title_case(file_names)
}

#' Look up each service's display name in the alias override table
#'
#' @param service Character vector of service short names.
#' @param override A data frame with `service`/`name` columns, as read
#'   from the alias YAML file.
#' @return Character vector the same length as `service`: the override
#'   name where one exists, otherwise [convert_name()]'s fallback.
#' @noRd
alias_display_name <- function(service, override) {
  m <- match(service, override$service)
  ifelse(!is.na(m), override$name[m], convert_name(service))
}

#' Build the "Available Services" reference index page
#'
#' Reads the `paws.*` dependencies out of `paws_dir/paws/DESCRIPTION`, lists
#' each dependency's top-level `man/` operators, and writes a Markdown index
#' linking each service to its operator pages.
#'
#' @param paws_dir Path to the vendored `paws` checkout's `cran` directory
#'   (i.e. containing `paws/DESCRIPTION` and one subdirectory per
#'   `paws.*` package).
#' @param alias_file Path to the YAML file mapping service short names to
#'   display names (`service`/`name` pairs).
#' @param out_file Path to write the generated Markdown index to. Deleted
#'   and recreated if it already exists.
#' @return `out_file`, invisibly.
#' @export
reference_index <- function(
  paws_dir,
  alias_file,
  out_file
) {
  paws_desc <- fs::path(paws_dir, "paws", "DESCRIPTION")
  lines <- readLines(paws_desc)
  pkgs <- lines[grepl("paws\\.[a-z\\.]", lines, perl = TRUE)]
  paws_pkg <- trimws(gsub("\\([^)]*\\).*", "", pkgs))
  paws_pkg <- paws_pkg[paws_pkg != "paws.common"]

  reference <- vector("list", length(paws_pkg))
  names(reference) <- paws_pkg

  override <- as.data.frame(
    do.call(rbind, yaml::read_yaml(alias_file))
  )
  for (pkg in paws_pkg) {
    file_list <- gsub(
      "\\.Rd$",
      "\\.md",
      basename(fs::dir_ls(file.path(paws_dir, pkg, "man")))
    )
    lvl <- gsub("_.*|\\.md$", "", file_list)
    ref <- sub("[a-zA-Z0-9]+_", "", file_list, perl = TRUE)
    ref <- gsub("\\.md$", "", ref)
    ref <- ref[lvl == ref]
    ref <- ref[ref != "reexports"]

    ref_name <- sprintf("%s (%s)", alias_display_name(ref, override), ref)

    reference[[pkg]] <- paste(
      sprintf('- <a href="../%s/"> %s </a>', ref, ref_name),
      collapse = "\n"
    )
  }
  names(reference) <- sprintf("## %s", names(reference))
  reference <- paste(names(reference), reference, sep = "\n")

  if (fs::file_exists(out_file)) {
    fs::file_delete(out_file)
  }
  writeLines(
    c("# Available Services", reference),
    out_file
  )
  invisible(out_file)
}

#' Build the mkdocs navigation hierarchy for the Reference section
#'
#' @param md_dir Directory of converted operator `.md` files (as produced by
#'   [convert_rd_dir()]).
#' @param alias_file Path to the YAML file mapping service short names to
#'   display names (`service`/`name` pairs).
#' @param reference_index_file Path to the reference index page written by
#'   [reference_index()]. Only its file name is used - like every other
#'   entry in the hierarchy, the nav path recorded is `docs/<file name>`,
#'   relative to the mkdocs `docs_dir` (one level up from `md_dir`).
#' @param addons Character vector of non-operator `.md` file names in
#'   `md_dir` that should be surfaced as top-level nav entries rather than
#'   grouped under a service.
#' @return A named list suitable for assignment into an mkdocs `nav` entry.
#' @importFrom stats setNames
#' @export
make_hierarchy <- function(
  md_dir,
  alias_file,
  reference_index_file,
  addons = c(
    "set_service_parameter.md",
    "paginate.md",
    "list_paginators.md",
    "paws_stream.md"
  )
) {
  hierarchy <- list.files(md_dir)
  hierarchy <- hierarchy[!(hierarchy %in% addons)]

  lvl <- gsub("_.*|\\.md$", "", hierarchy)
  ref <- sub("[a-zA-Z0-9]+_", "", hierarchy, perl = TRUE)
  ref <- gsub("\\.md$", "", ref)

  ref[lvl == ref] <- "Client"

  hierarchy <- sprintf("%s: docs/%s", convert_name(ref), hierarchy)
  hierarchy <- split(hierarchy, lvl)

  # order hierarchy
  for (j in seq_along(hierarchy)) {
    idx <- grep("^Client:", hierarchy[[j]], perl = TRUE)
    hierarchy[[j]] <- c(hierarchy[[j]][idx], sort(hierarchy[[j]][-idx]))
  }
  override <- as.data.frame(
    do.call(rbind, yaml::read_yaml(alias_file))
  )
  names(hierarchy) <- sprintf(
    "%s (%s)",
    alias_display_name(names(hierarchy), override),
    names(hierarchy)
  )
  addons <- setNames(sprintf("docs/%s", addons), convert_name(addons))

  # group paginators
  pag_n <- grepl("paginat", addons)
  addons <- c(addons[!pag_n], list("Paws Paginators" = addons[pag_n]))

  c(
    "Available Services" = sprintf(
      "docs/%s",
      fs::path_file(reference_index_file)
    ),
    addons,
    hierarchy
  )
}

#' List the developer guide nav entries
#'
#' @param dir Directory of developer guide files (Markdown/text, copied from
#'   vendor `docs/`).
#' @return A list of `"Display Name: developer_guide/file"` nav entries,
#'   sorted by file name descending (matches the historical script's
#'   ordering).
#' @export
get_developer_guide <- function(dir) {
  developer_guide <- sort(
    basename(fs::dir_ls(dir, type = "file")),
    decreasing = TRUE
  )
  developer_guide <- sprintf(
    "%s: developer_guide/%s",
    convert_name(developer_guide),
    developer_guide
  )
  as.list(developer_guide)
}

#' List the code example nav entries
#'
#' @param dir Directory of example files (copied from vendor `examples/`).
#' @return A list of `"Display Name: examples/file"` nav entries.
#' @export
get_examples <- function(dir) {
  example <- basename(fs::dir_ls(dir, type = "file"))
  example <- sprintf("%s: examples/%s", convert_name(example), example)
  as.list(example)
}

#' Read the paws version out of a vendored `DESCRIPTION` file
#'
#' @param description_file Path to the vendored `paws` package's
#'   `DESCRIPTION` file.
#' @return Character scalar version string (e.g. `"0.9.0"`).
#' @export
get_version <- function(description_file) {
  desc <- readLines(description_file)
  version <- desc[grepl("Version:*.[0-9]+\\.[0-9]+\\.[0-9]+", desc)]
  pattern <- "[0-9]+\\.[0-9]+\\.[0-9]+"
  m <- regexpr(pattern, version)
  regmatches(version, m)
}
