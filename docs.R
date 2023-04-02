library(optparse)

option_list <- list(
  make_option(c("--docs"),
    action = "store_true", default = FALSE,
    help = "Generate all the documentation"
  ),
  make_option(c("--index"),
    action = "store_true", default = FALSE,
    dest = "index", help = "Get the index for the CRAN version of Paws."
  ),
  make_option(c("--topics"),
    action = "store_true", default = FALSE,
    dest = "topics", help = "Create Paws Topics."
  ),
  make_option("--file",
    default = "", type = "character", help = "Topic file to build Paws website."
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

paws_build_reference <- function(pkg = ".",
                                 seed = 1014,
                                 override = list(),
                                 topics = NULL) {
  pkg <- pkgdown:::section_init(pkg, depth = 1L, override = override)

  pkgdown:::rule("Building function reference")
  # build_reference_index(pkg)

  pkgdown:::copy_figures(pkg)
  examples_env <- NULL

  if (!is.null(topics)) {
    topics <- purrr::transpose(pkg$topics[pkg$topics$name %in% topics, ])
    lazy <- FALSE
  } else {
    topics <- purrr::transpose(pkg$topics)
  }

  purrr::map(topics,
             pkgdown:::build_reference_topic,
             pkg = pkg,
             lazy = FALSE,
             examples_env = FALSE,
             run_dont_run = FALSE
  )
}

write_topics <- function(src, n = 3) {
  topics <- list.files(file.path(src, "man"))
  topics <- gsub(".Rd", "", topics)
  topics <- split(topics, seq_along(topics)%%n)
  dir.create("topics")
  lapply(1:n, function(x){
    base::writeLines(topics[[x]], sprintf("topics/topics_prt%s.txt", x))
  })
}

 read_topics <- function(src = "") {
  if (!file.exists(src)) {
    return(NULL)
  }
  return(readLines(src))
}

initial_index <- function(src, dst){
  pkg <- pkgdown:::section_init(normalizePath(src), depth = 0, override = list())
  dir.create(dst)
  
  pkg$dst_path <- normalizePath(dst)
  pkg$topics$file_out <- get_paths(pkg$topics$file_out)
  
  file.create(file.path(pkg$dst_path, "pkgdown.yml"))
  for (dir in unique(dirname(pkg$topics$file_out))) {
    path_out <- file.path(pkg$dst_path, "reference", dir)
    dir.create(path_out, showWarnings = FALSE, recursive = TRUE)
  }
  
  pkgdown:::rule("Building pkgdown site", line = 2)
  pkgdown:::cat_line("Reading from: ", src_path(path_abs(pkg$src_path)))
  pkgdown:::cat_line("Writing to:   ", dst_path(path_abs(pkg$dst_path)))
  init_site(pkg)
  pkgdown:::build_reference_index(pkg)
}


build_site <- function (src, dst, topics = NULL, index = FALSE) {
  attach(loadNamespace("pkgdown"), name = "pkgdown_all")
  pkg <- section_init(normalizePath(src), depth = 0, override = list())

  pkg$dst_path <- normalizePath(dst)
  pkg$topics$file_out <- get_paths(pkg$topics$file_out)

  # unlink(pkg$dst_path, recursive = TRUE, force = TRUE)
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
  if (!index) {
    paws_build_reference(pkg, seed = 1014, override = list(), topics = topics)
  } else {
    build_reference_index(pkg)
  }
  detach("pkgdown_all")
}

if (opt$topics){
  # Generate all the documentation.
  docs_dir <- "vendor/paws/paws"
  roxygen2::update_collate(docs_dir)
  roxygen2::roxygenise(docs_dir, roclets = c("rd"))
  initial_index(docs_dir, "./docs")
  write_topics(docs_dir)
}

if (opt$docs) {
  docs_dir <- "vendor/paws/paws"
  if (!file.exists(doc_dir)) {
    docs_dir <- file.path("temp", docs_dir)
  }
  build_site(docs_dir, "./docs", topics = read_topics(opt$file))
}

if (opt$index) {
  # Get the index for the CRAN version of Paws.
  dir <- tempdir()
  paws_dir <- "vendor/paws/cran/paws"
  if (!file.exists(paws_dir)) {
    paws_dir <- file.path("temp", paws_dir)
  }
  build_site(paws_dir, dir, index = TRUE)
  # Copy the CRAN index.
  file.copy(file.path(dir, "reference/index.html"), "./docs/reference", overwrite = TRUE)
}
