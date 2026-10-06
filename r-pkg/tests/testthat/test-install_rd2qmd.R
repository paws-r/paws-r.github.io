test_that("rd2qmd_target maps R's platform identifiers to rd2qmd's release names", {
  expect_equal(rd2qmd_target("darwin", "aarch64"), "aarch64-apple-darwin")
  expect_equal(rd2qmd_target("darwin", "x86_64"), "x86_64-apple-darwin")
  expect_equal(rd2qmd_target("linux", "x86_64"), "x86_64-unknown-linux-gnu")
  expect_equal(rd2qmd_target("windows", "x86_64"), "x86_64-pc-windows-msvc")
  expect_error(rd2qmd_target("solaris", "x86_64"), "Unsupported OS")
})

test_that("rd2qmd_bin_name is .exe only on windows", {
  expect_equal(rd2qmd_bin_name("windows"), "rd2qmd.exe")
  expect_equal(rd2qmd_bin_name("darwin"), "rd2qmd")
  expect_equal(rd2qmd_bin_name("linux"), "rd2qmd")
})

test_that("rd2qmd_asset_url builds the default GitHub release URL", {
  withr::local_options(rd2qmd.url = NULL)
  expect_equal(
    rd2qmd_asset_url("rd2qmd-x86_64-unknown-linux-gnu.tar.xz", "v0.6.0"),
    "https://github.com/eitsupi/rd2qmd/releases/download/v0.6.0/rd2qmd-x86_64-unknown-linux-gnu.tar.xz"
  )
})

test_that("rd2qmd_asset_url honours the rd2qmd.url mirror override", {
  withr::local_options(rd2qmd.url = "https://example.test/rd2qmd.tar.xz")
  expect_equal(
    rd2qmd_asset_url("rd2qmd-x86_64-unknown-linux-gnu.tar.xz", "v0.6.0"),
    "https://example.test/rd2qmd.tar.xz"
  )
})

test_that("install_rd2qmd resolves version = \"latest\" via rd2qmd_latest_version", {
  mockery::stub(install_rd2qmd, "rd2qmd_latest_version", "v9.9.9")
  captured_url <- NULL
  mockery::stub(
    install_rd2qmd,
    "utils::download.file",
    function(url, destfile, ...) {
      captured_url <<- url
      writeLines("", destfile) # on.exit cleanup expects a file to exist
      1L # fail the download on purpose - we only care which URL was requested
    }
  )
  tmp <- withr::local_tempdir()

  expect_error(
    install_rd2qmd(path = tmp, force = TRUE, version = "latest"),
    "Failed to download"
  )
  expect_match(captured_url, "/download/v9.9.9/", fixed = TRUE)
})

test_that("rd2qmd_latest_version resolves to a real release tag", {
  skip_if_offline()
  expect_match(rd2qmd_latest_version(), "^v[0-9]+\\.[0-9]+\\.[0-9]+$")
})

test_that("rd2qmd_version returns NA when nothing is installed", {
  tmp <- withr::local_tempdir()
  expect_identical(rd2qmd_version(path = tmp), NA_character_)
})

test_that("rd2qmd_version parses `rd2qmd --version` output", {
  tmp <- withr::local_tempdir()
  fs::file_create(fs::path(tmp, rd2qmd_bin_name(system_os())))
  mockery::stub(
    rd2qmd_version,
    "processx::run",
    list(stdout = "rd2qmd 0.6.0\n")
  )

  expect_equal(rd2qmd_version(path = tmp), package_version("0.6.0"))
})

test_that("install_rd2qmd upgrades instead of no-op-ing when the installed version doesn't match", {
  tmp <- withr::local_tempdir()
  fs::file_create(fs::path(tmp, rd2qmd_bin_name(system_os()))) # pretend something's already there

  mockery::stub(install_rd2qmd, "rd2qmd_version", "0.1.0")
  captured_url <- NULL
  mockery::stub(
    install_rd2qmd,
    "utils::download.file",
    function(url, destfile, ...) {
      captured_url <<- url
      writeLines("", destfile) # on.exit cleanup expects a file to exist
      1L # fail the download on purpose - we only care that one was attempted
    }
  )

  expect_error(
    install_rd2qmd(path = tmp, version = "v0.6.0"),
    "Failed to download"
  )
  expect_match(captured_url, "/download/v0.6.0/", fixed = TRUE)
})

test_that("install_rd2qmd rejects a download that fails its checksum", {
  mockery::stub(
    install_rd2qmd,
    "digest::digest",
    "0000000000000000000000000000000000000000000000000000000000000"
  )
  tmp <- withr::local_tempdir()

  expect_error(
    # pin an explicit version - this test isn't skip_if_offline()-gated, and
    # shouldn't need network just to resolve the default "latest"
    install_rd2qmd(path = tmp, force = TRUE, version = "v0.6.0"),
    "Checksum mismatch"
  )
  # must not leave anything that looks like a successful install behind
  expect_false(fs::file_exists(fs::path(tmp, rd2qmd_bin_name(system_os()))))
})

test_that("install_rd2qmd downloads, verifies, and installs a working binary", {
  skip_if_offline()
  tmp <- withr::local_tempdir()

  bin <- install_rd2qmd(path = tmp)

  expect_true(fs::file_exists(bin))
  expect_equal(unname(file.access(bin, mode = 1)), 0L) # executable
  version <- processx::run(bin, "--version")$stdout
  expect_match(version, "rd2qmd", fixed = TRUE)
})

test_that("install_rd2qmd is a no-op when already installed and force is FALSE", {
  skip_if_offline()
  tmp <- withr::local_tempdir()

  first <- install_rd2qmd(path = tmp)
  mtime1 <- fs::file_info(first)$modification_time

  Sys.sleep(1)
  second <- install_rd2qmd(path = tmp)
  mtime2 <- fs::file_info(second)$modification_time

  expect_equal(first, second)
  expect_equal(mtime1, mtime2)
})
