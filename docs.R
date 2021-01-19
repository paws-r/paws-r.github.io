# Convert a filename from R documentation to output path
# e.g. acm_list_certificates.Rd -> acm/list_certificates.Rd
get_paths <- function(x) {
  base <- basename(x)
  service <- gsub("^([^_]+)_(.*)", "\\1", base)
  file <- gsub("^([^_]+)_(.*)", "\\2", base)
  
  # Service index pages, e.g. acm.html for ACM.
  index <- !grepl("_", base)
  service <- ifelse(index, tools::file_path_sans_ext(base), service)
  file <- ifelse(index, "index.html", file)
  
  result <- file.path(service, file)
  return(result)
}

build_site <- function (src, dst) {
  attach(loadNamespace("pkgdown"), name = "pkgdown_all")
  pkg <- section_init(normalizePath(src), depth = 0, override = list())
  
  pkg$dst_path <- normalizePath(dst)
  pkg$topics$file_out <- get_paths(pkg$topics$file_out)

  unlink(pkg$dst_path, recursive = TRUE, force = TRUE)
  dir.create(pkg$dst_path)
  file.create(file.path(pkg$dst_path, "pkgdown.yml"))
  for (dir in unique(dirname(pkg$topics$file_out))) {
    path_out <- file.path(pkg$dst_path, "reference", dir)
    dir.create(path_out, showWarnings = FALSE, recursive = TRUE)
  }
  
  rule("Building pkgdown site", line = 2)
  cat_line("Reading from: ", src_path(path_abs(pkg$src_path)))
  cat_line("Writing to:   ", dst_path(path_abs(pkg$dst_path)))
  init_site(pkg)
  build_reference(pkg, lazy = FALSE, devel = FALSE, examples = FALSE, 
                  run_dont_run = FALSE, seed = 1014, override = list(), 
                  preview = FALSE)
  detach("pkgdown_all")
}

# Get the index for the CRAN version of Paws.
dir <- tempdir()
build_site("../paws/cran/paws", dir)

# Generate all the documentation.
build_site("../paws/paws", "./docs")

# Copy the CRAN index.
file.copy(file.path(dir, "reference/index.html"), "./docs/reference", overwrite = TRUE)
