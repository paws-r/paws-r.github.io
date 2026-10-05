test_that("rd_to_md converts a real Rd file end to end", {
  skip_if_not(rmarkdown::pandoc_available())

  tmp <- withr::local_tempdir()
  rd_file <- fs::path(tmp, "foo.Rd")
  fs::file_copy(test_path("fixtures", "foo.Rd"), rd_file)
  html_dir <- fs::path(tmp, "html")
  md_dir <- fs::path(tmp, "md")
  fs::dir_create(c(html_dir, md_dir))

  out_file <- rd_to_md(rd_file, html_dir, md_dir)

  expect_equal(out_file, fs::path(md_dir, "foo.md"))
  expect_false(fs::file_exists(rd_file))
  expect_equal(length(fs::dir_ls(html_dir)), 0)

  out <- readLines(out_file)
  expect_true(any(grepl("^### Usage$", out)))
  expect_true(any(out == "```r"))
  expect_true(any(grepl("foo\\(x, y = NULL\\)", out)))
  # the \arguments{} table is converted to a definition list, not left as
  # raw HTML <table> markup
  expect_true(any(grepl("^<dl>$", out)))
  expect_true(any(grepl('<dt><code id="x">x</code></dt>', out)))
  expect_false(any(grepl("<table role", out)))
})
