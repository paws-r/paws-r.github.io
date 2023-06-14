# basic logger
log_info <- function(msg) {
  on.exit(flush.console())
  date_time <- strftime(Sys.time(), format = "%Y-%m-%d %H:%M:%S")
  log_msg <- sprintf("INFO %s: %s", date_time, msg)
  writeLines(log_msg)
}

log_info("Build site assests")

# copy assests from vendor
fs::file_copy("vendor/paws/README.md", "build/mkdocs/docs", overwrite = TRUE)
fs::file_copy("vendor/paws/docs/logo.png", "build/mkdocs/docs", overwrite = TRUE)

# create site directory structure
dirs <- fs::path("build/mkdocs/docs", c("examples", "developer_guide", "img"))
if (all(file.exists(dirs))) fs::dir_delete(dirs)
fs::dir_create(dirs, recurse = TRUE)

# copy assests examples from vendor
fs::dir_copy("vendor/paws/examples", "build/mkdocs/docs/examples", overwrite = TRUE)

# copy articles from vendor
for (f in c("credentials.md", "cheat_sheet.pdf")) {
  fs::file_copy(
    file.path("vendor/paws/docs", f),
    file.path("build/mkdocs/docs/developer_guide", f),
    overwrite = T
  )
}

# copy articles from vendor
for (f in c("CODE_OF_CONDUCT.md", "DEVELOPER_GUIDE.md")) {
  fs::file_copy(
    file.path("vendor/paws", f),
    file.path("build/mkdocs/docs/developer_guide", f),
    overwrite = T
  )
}

# copy read assests
for (f in c("code_completion.gif")) {
  fs::file_copy(
    file.path("vendor/paws/docs", f),
    file.path("build/mkdocs/docs/img", f),
    overwrite = TRUE
  )
}

edit_readme <- function(file = "build/mkdocs/docs/README.md") {
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
    r"{!\[\]\(docs/code_completion.gif\)}", r"{!\[\]\(img/code_completion\.gif\)}",
    readme[idx]
  )
  readme[idx] <- gsub("docs/developer_guide|docs", "developer_guide", readme[idx])

  # fix examples links
  idx <- grepl(r"{\[.*\]\(examples/.*\)}", readme)
  readme[idx] <- gsub(r"{\.R\)}", r"{\.md\)}", readme[idx])

  writeLines(readme, file)
}

edit_r_examples <- function(dir = "build/mkdocs/docs/examples") {
  files <- fs::dir_ls(dir)
  r_files <- files[grepl("\\.R$", files)]

  for (r_file in r_files) {
    r_file_edit <- readLines(r_file)
    r_file_edit <- c("```r", r_file_edit, "```")
    writeLines(r_file_edit, gsub("R$", "md", r_file))
  }
  fs::file_delete(r_files)
}

reference_index <- function(paws_dir = "vendor/paws/cran") {
  paws_desc <- fs::path(paws_dir, "paws/DESCRIPTION")
  lines <- readLines(paws_desc)
  pkgs <- lines[grepl("paws\\.[a-z\\.]", lines, perl = T)]
  paws_pkg <- trimws(gsub("\\([^)]*\\).*", "", pkgs))

  reference <- sapply(paws_pkg, \(x) {
    gsub("\\.Rd$", "\\.md", basename(fs::dir_ls(file.path(paws_dir, x, "man"))))
  }, simplify = F)

  for (i in seq_along(reference)) {
    lvl <- gsub("_.*|\\.md$", "", reference[[i]])
    ref <- sub("[a-zA-Z0-9]+_", "", reference[[i]], perl = T)
    ref <- gsub("\\.md$", "", ref)
    reference[[i]] <- paste(
      sprintf('- <a href="../%s/"> %s </a>', ref[lvl == ref], convert_name(ref[lvl == ref])),
      collapse = "\n"
    )
  }
  names(reference) <- sprintf("## %s", names(reference))
  reference <- paste(names(reference), reference, sep = "\n")
  writeLines(
    c("# Available Services", reference),
    "build/mkdocs/docs/docs/reference_index.md"
  )
  return("docs/reference_index.md")
}

make_hierarchy <- function(dir = "build/mkdocs/docs/docs") {
  hierarchy <- list.files(dir)

  lvl <- gsub("_.*|\\.md$", "", hierarchy)
  ref <- sub("[a-zA-Z0-9]+_", "", hierarchy, perl = T)
  ref <- gsub("\\.md$", "", ref)

  ref[lvl == ref] <- "Client"
  hierarchy <- sprintf("%s: docs/%s", convert_name(ref), hierarchy)
  hierarchy <- split(hierarchy, lvl)

  # order hierarchy
  for (j in seq_along(hierarchy)) {
    idx <- grep("^Client:", hierarchy[[j]], perl = T)
    hierarchy[[j]] <- c(hierarchy[[j]][idx], sort(hierarchy[[j]][-idx]))
  }
  names(hierarchy) <- convert_name(names(hierarchy))

  return(c("Aviable Services" = reference_index(), hierarchy))
}

convert_name <- function(file_names) {
  file_names <- gsub("\\..*$", "", file_names)
  file_names <- tolower(gsub("_", " ", file_names))
  return(tools::toTitleCase(file_names))
}

get_developer_guide <- function(dir = "build/mkdocs/docs/developer_guide") {
  developer_guide <- sort(basename(fs::dir_ls(dir, type = "file")), decreasing = T)
  developer_guide <- sprintf("%s: developer_guide/%s", convert_name(developer_guide), developer_guide)
  return(as.list(developer_guide))
}

get_examples <- function(dir = "build/mkdocs/docs/examples") {
  example <- basename(fs::dir_ls(dir, type = "file"))
  example <- sprintf("%s: examples/%s", convert_name(example), example)
  return(as.list(example))
}

get_version <- function(dir = "vendor/paws/cran/paws/DESCRIPTION") {
  desc <- readLines(dir)
  version <- desc[grepl("Version:*.[0-9]+\\.[0-9]+\\.[0-9]+", desc)]
  pattern <- "[0-9]+\\.[0-9]+\\.[0-9]+"
  m <- regexpr(pattern, version)
  regmatches(version, m)
}

build_site_yaml <- function() {
  site_yaml <- org_yaml <- yaml::yaml.load_file(
    "build/mkdocs.orig.yml"
  )

  for (i in c("extra_css", "plugins")) {
    if (!is.null(org_yaml[[i]]) && !is.list(length(org_yaml[[i]]))) {
      site_yaml[[i]] <- as.list(site_yaml[[i]])
    }
  }

  site_yaml$site_name <- sprintf("paws: %s", get_version())

  # add references
  ref_idx <- which(vapply(site_yaml$nav, \(x) names(x) == "Reference", FUN.VALUE = logical(1)))
  site_yaml$nav[[ref_idx]]$Reference <- make_hierarchy() # paws_make_hierarchy()

  # add developer guide
  ref_idx <- which(vapply(site_yaml$nav, \(x) names(x) == "Developer Guide", FUN.VALUE = logical(1)))
  site_yaml$nav[[ref_idx]][["Developer Guide"]] <- get_developer_guide()

  # add examples
  ref_idx <- which(vapply(site_yaml$nav, \(x) names(x) == "Code Examples", FUN.VALUE = logical(1)))
  site_yaml$nav[[ref_idx]][["Code Examples"]] <- get_examples()

  site_yaml <- yaml::as.yaml(site_yaml, indent.mapping.sequence = T)
  site_yaml <- gsub("- '", "- ", site_yaml)

  # tidy up file paths
  for (ext in c("md", "pdf")) {
    site_yaml <- gsub(
      sprintf("\\.%s'", ext),
      sprintf("\\.%s", ext),
      site_yaml
    )
  }
  writeLines(site_yaml, "build/mkdocs/mkdocs.yml", "")
}

edit_readme()
edit_r_examples()
build_site_yaml()
