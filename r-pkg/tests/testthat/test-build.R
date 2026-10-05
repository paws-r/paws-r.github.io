rd2qmd_installed <- function() {
  tryCatch({
    rd2qmd_bin()
    TRUE
  }, error = function(e) FALSE)
}

test_that("build_rd_docs roxygenizes, stages addons, and excludes package/reexports pages", {
  skip_if_not(rd2qmd_installed(), "rd2qmd not installed - run install_rd2qmd()")

  pkg_dir <- withr::local_tempdir()
  fs::dir_copy(test_path("fixtures", "dummypkg_services"), fs::path(pkg_dir, "pkg"))
  pkg_dir <- fs::path(pkg_dir, "pkg")

  common_man_dir <- withr::local_tempdir()
  writeLines(
    c(
      "\\name{my_addon}",
      "\\alias{my_addon}",
      "\\title{My addon}",
      "\\usage{",
      "my_addon(x)",
      "}",
      "\\arguments{",
      "\\item{x}{a value}",
      "}",
      "\\value{",
      "x",
      "}",
      "\\description{",
      "An addon.",
      "}"
    ),
    fs::path(common_man_dir, "my_addon.Rd")
  )

  md_dir <- withr::local_tempdir()

  build_rd_docs(
    pkg_dir = pkg_dir,
    man_dir = fs::path(pkg_dir, "man"),
    common_man_dir = common_man_dir,
    md_dir = md_dir,
    addons = "my_addon.Rd",
    workers = 1
  )

  md_files <- list.files(md_dir)
  expect_true(all(c("foo.md", "bar.md", "bar_get_default.md", "my_addon.md") %in% md_files))
})

test_that("build_rd_docs excludes paws-package.Rd from staging", {
  skip_if_not(rd2qmd_installed(), "rd2qmd not installed - run install_rd2qmd()")

  # paws-package.Rd has no "_" to split on, so once converted it would look
  # like a spurious one-page "Client" entry to make_hierarchy(). Rename the
  # fixture's package to "paws" so roxygenizing it actually produces a
  # file by that exact name, and this exercises build_rd_docs()'s real
  # staging/exclusion step end to end rather than just its filter
  # expression in isolation.
  pkg_dir <- withr::local_tempdir()
  fs::dir_copy(test_path("fixtures", "dummypkg_services"), fs::path(pkg_dir, "pkg"))
  pkg_dir <- fs::path(pkg_dir, "pkg")
  desc <- readLines(fs::path(pkg_dir, "DESCRIPTION"))
  desc[grepl("^Package:", desc)] <- "Package: paws"
  writeLines(desc, fs::path(pkg_dir, "DESCRIPTION"))
  # roxygen2 names the package-doc topic after its @name tag, not the
  # DESCRIPTION Package field - rewrite both to match "paws-package".
  globals <- readLines(fs::path(pkg_dir, "R", "pkg_globals.R"))
  globals <- gsub("dummypkgservices-package", "paws-package", globals)
  globals <- gsub("dummypkgservices", "paws", globals)
  writeLines(globals, fs::path(pkg_dir, "R", "pkg_globals.R"))

  common_man_dir <- withr::local_tempdir()
  md_dir <- withr::local_tempdir()

  build_rd_docs(
    pkg_dir = pkg_dir,
    man_dir = fs::path(pkg_dir, "man"),
    common_man_dir = common_man_dir,
    md_dir = md_dir,
    addons = character(0),
    workers = 1
  )

  expect_true(fs::file_exists(fs::path(pkg_dir, "man", "paws-package.Rd")))
  expect_false(fs::file_exists(fs::path(md_dir, "paws-package.md")))
})
