#' @importFrom fs dir_ls

add_r_to_fences_dir <- function(dir) {
  files <- fs::dir_ls(
    dir,
    recurse = TRUE,
    type = "file",
    regexp = "\\.md$",
    ignore.case = TRUE
  )
  files <- files[!grepl("node_modules|renv", files)]

  res <- data.frame(
    file = as.character(files),
    n_changed = vapply(files, add_r_to_fences, integer(1), USE.NAMES = FALSE)
  )
  res[res$n_changed > 0, ]
}
