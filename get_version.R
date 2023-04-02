description <- "vendor/paws/cran/paws/DESCRIPTION"
if (!file.exists(description)) {
  description <- file.path("temp", description)
}
desc <- readLines(description)
version <- desc[grepl("Version:*.[0-9]+\\.[0-9]+\\.[0-9]+", desc)]
pattern <- "[0-9]+\\.[0-9]+\\.[0-9]+"
m <- regexpr(pattern, version)
cat(regmatches(version, m))
