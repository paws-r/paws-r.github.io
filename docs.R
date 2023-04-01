library(optparse)

option_list <- list(
  make_option(c("--docs"),
    action = "store_true", default = TRUE,
    help = "Generate all the documentation"
  ),
  make_option(c("--index"),
    action = "store_false",
    dest = "docs", help = "Get the index for the CRAN version of Paws."
  )
)

# get command line options
opt <- parse_args(OptionParser(option_list=option_list))

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

build_site <- function (src, dst, index = FALSE) {
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
  if (index) {
    build_reference(pkg, lazy = FALSE, devel = FALSE, examples = FALSE,
                    run_dont_run = FALSE, seed = 1014, override = list(),
                    preview = FALSE)
  } else {
    build_reference_index(pkg)
  }
  detach("pkgdown_all")
}

if (opt$docs) {
  # Generate all the documentation.
  docs_dir <- "vendor/paws/paws"
  roxygen2::update_collate(docs_dir)
  roxygen2::roxygenise(docs_dir, roclets = c("rd"))
  build_site(docs_dir, "./docs")
} else {
  # Get the index for the CRAN version of Paws.
  dir <- tempdir()
  paws_dir <- "vendor/paws/cran/paws"
  roxygen2::roxygenise(paws_dir, roclets = c("rd"))
  build_site(paws_dir, dir, index = TRUE)
  # Copy the CRAN index.
  file.copy(file.path(dir, "reference/index.html"), "./docs/reference", overwrite = TRUE)
}
