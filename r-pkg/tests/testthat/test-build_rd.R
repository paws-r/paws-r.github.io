test_that("build_long_rd roxygenizes a package's man/ directory", {
  tmp <- withr::local_tempdir()
  fs::dir_copy(test_path("fixtures", "dummypkg"), fs::path(tmp, "dummypkg"))
  pkg_dir <- fs::path(tmp, "dummypkg")

  build_long_rd(pkg_dir)

  rd_file <- fs::path(pkg_dir, "man", "add.Rd")
  expect_true(fs::file_exists(rd_file))
  rd <- readLines(rd_file)
  expect_true(any(grepl("\\\\name\\{add\\}", rd)))
  expect_true(any(grepl("^add\\(x, y\\)$", rd)))
})
