desc <- readLines("vendor/paws/cran/paws/DESCRIPTION")
version <- desc[grepl("Version:*.[0-9]+\\.[0-9]+\\.[0-9]+", desc)]
pattern <- "[0-9]+\\.[0-9]+\\.[0-9]+"
m <- regexpr(pattern, version)
cat(regmatches(version, m))
