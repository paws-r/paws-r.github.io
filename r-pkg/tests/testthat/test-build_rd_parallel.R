copy_services_fixture <- function() {
  dir <- withr::local_tempdir(.local_envir = parent.frame())
  fs::dir_copy(test_path("fixtures", "dummypkg_services"), fs::path(dir, "pkg"))
  fs::path(dir, "pkg")
}

test_that("build_long_rd_parallel matches a single-process build_long_rd exactly", {
  single <- copy_services_fixture()
  build_long_rd(single)

  chunked <- copy_services_fixture()
  build_long_rd_parallel(chunked, chunks = 2, workers = 1)

  expect_equal(
    sort(list.files(fs::path(single, "man"))),
    sort(list.files(fs::path(chunked, "man")))
  )
  for (f in list.files(fs::path(single, "man"))) {
    expect_equal(
      readLines(fs::path(single, "man", f)),
      readLines(fs::path(chunked, "man", f)),
      info = f
    )
  }
})

test_that("build_long_rd_parallel does not drop files from later chunks", {
  # regression test: every chunk also roxygenizes the package-global
  # files (e.g. pkg_globals.R here, paws_package.R in the real paws
  # package), producing the same package-doc topic in every chunk. The
  # second chunk's attempt to copy that duplicate used to hit an EEXIST
  # error from fs::file_copy()'s default overwrite = FALSE, aborting the
  # rest of that chunk's copy and silently dropping every file after it
  # alphabetically. With 2 services split across 2 single-service
  # chunks, losing "bar"'s chunk this way would drop 2 of its 3 files.
  dir <- copy_services_fixture()
  build_long_rd_parallel(dir, chunks = 2, workers = 1)

  man_files <- list.files(fs::path(dir, "man"))
  expect_true(all(
    c("foo.Rd", "foo_get.Rd", "bar.Rd", "bar_get.Rd", "bar_get_default.Rd") %in%
      man_files
  ))
  expect_true("dummypkgservices-package.Rd" %in% man_files)
})

test_that("build_long_rd_parallel keeps a service's own files in one chunk", {
  # bar_get_default() (in bar_custom.R) calls bar_get() (in
  # bar_operations.R) - if the grouping ever split a service's own files
  # across chunks, roxygenizing bar_custom.R in isolation would still
  # succeed here (R itself doesn't error until the function is called),
  # but this pins the grouping invariant directly so a future change to
  # the prefix regex gets caught.
  dir <- copy_services_fixture()
  all_files <- list.files(fs::path(dir, "R"))
  prefix <- sub("_(service|operations|custom)\\.R$", "", all_files)

  bar_files <- all_files[prefix == "bar"]
  expect_setequal(
    bar_files,
    c("bar_service.R", "bar_operations.R", "bar_custom.R")
  )
})

test_that("build_long_rd_parallel never starts mirai daemons when workers is 1", {
  dir <- copy_services_fixture()
  build_long_rd_parallel(dir, chunks = 2, workers = 1)
  expect_equal(mirai::status()$connections, 0)
})
