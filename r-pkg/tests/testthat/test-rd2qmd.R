rd2qmd_available <- function() {
  tryCatch({
    rd2qmd_bin()
    TRUE
  }, error = function(e) FALSE)
}

test_that("rd2qmd_bin errors with a clear fix when not installed", {
  tmp <- withr::local_tempdir()
  expect_error(rd2qmd_bin(path = tmp), "install_rd2qmd")
})

test_that("rd2qmd_bin returns the installed binary's path", {
  tmp <- withr::local_tempdir()
  bin <- install_rd2qmd(path = tmp)
  expect_equal(rd2qmd_bin(path = tmp), bin)
})

test_that("convert_rd_dir converts a real Rd file and resolves internal links", {
  skip_if_not(rd2qmd_available(), "rd2qmd not installed - run install_rd2qmd()")

  man_dir <- withr::local_tempdir()
  md_dir <- withr::local_tempdir()
  fs::file_copy(test_path("fixtures", "foo.Rd"), fs::path(man_dir, "foo.Rd"))

  out <- convert_rd_dir(man_dir, md_dir, workers = 1)

  expect_equal(out, md_dir)
  out_file <- fs::path(md_dir, "foo.md")
  expect_true(fs::file_exists(out_file))

  lines <- readLines(out_file)
  expect_true(any(grepl("^## Usage$", lines)))
  expect_true(any(grepl("foo\\(x, y = NULL\\)", lines)))
  expect_true(any(grepl("^## Arguments$", lines)))
  # --arguments-format list output, not the Pandoc/Quarto-only default
  expect_false(any(grepl("list-table", lines)))
  # html leakage pawsdocs's old pipeline needed html_table_to_list() for
  expect_false(any(grepl("<table|<dl>|<dt>|<dd>", lines)))
})

test_that("escape_false_links defuses bracket+paren text that isn't a real link", {
  # regression test for a real bug found converting the full paws corpus:
  # a verbatim regex pattern copied into an argument description (never
  # wrapped in a code span in the source Rd) rendered on the live site as
  # a broken hyperlink that silently swallowed part of the pattern - see
  # plans/adopt-rd2qmd.md.
  bad <- 'Pattern "^[a-z0-9](([a-z0-9]|-(?!-))*[a-z0-9])?$";'

  expect_equal(
    escape_false_links(bad),
    'Pattern "^\\[a-z0-9](([a-z0-9]|-(?!-))*[a-z0-9])?$";'
  )
})

test_that("escape_false_links leaves real rd2qmd-generated links untouched", {
  internal <- "see [get_bucket_versioning](s3_get_bucket_versioning.md)."
  external <- "see [Canned ACL](https://docs.aws.amazon.com/AmazonS3/latest/userguide/acl-overview.html#CannedACL) in the guide."

  expect_equal(escape_false_links(internal), internal)
  expect_equal(escape_false_links(external), external)
})

test_that("escape_false_links handles a real and a fake link on the same line independently", {
  bad <- 'Pattern "^[a-z0-9](([a-z0-9]|-(?!-))*[a-z0-9])?$";'
  good <- "see [get_bucket_versioning](s3_get_bucket_versioning.md)."
  mixed <- paste(bad, good)

  expect_equal(escape_false_links(mixed), paste(escape_false_links(bad), good))
})

test_that("convert_rd_dir surfaces rd2qmd's stderr on failure", {
  skip_if_not(rd2qmd_available(), "rd2qmd not installed - run install_rd2qmd()")

  md_dir <- withr::local_tempdir()
  # rd2qmd is lenient about malformed .Rd content (it treats unparseable
  # text as a literal pass-through rather than failing), so a nonexistent
  # input directory is the reliable way to trigger its error path.
  man_dir <- fs::path(withr::local_tempdir(), "does-not-exist")

  expect_error(convert_rd_dir(man_dir, md_dir, workers = 1), "rd2qmd failed")
})
