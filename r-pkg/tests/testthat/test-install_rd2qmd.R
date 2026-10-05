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

test_that("install_rd2qmd rejects a download that fails its checksum", {
  mockery::stub(install_rd2qmd, "digest::digest", "0000000000000000000000000000000000000000000000000000000000000")
  tmp <- withr::local_tempdir()

  expect_error(
    install_rd2qmd(path = tmp, force = TRUE),
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
