make_vendor_fixture <- function() {
  vendor_dir <- withr::local_tempdir(.local_envir = parent.frame())
  fs::dir_create(fs::path(vendor_dir, c("docs", "examples")), recurse = TRUE)

  writeLines(c("# My Package", "![](docs/logo.png)"), fs::path(vendor_dir, "README.md"))
  fs::file_create(fs::path(vendor_dir, "docs", "logo.png"))
  fs::file_create(fs::path(vendor_dir, "docs", "code_completion.gif"))
  writeLines("# Article", fs::path(vendor_dir, "docs", "article.md"))
  writeLines("# COC", fs::path(vendor_dir, "CODE_OF_CONDUCT.md"))
  writeLines("# Dev Guide", fs::path(vendor_dir, "DEVELOPER_GUIDE.md"))
  writeLines('svc$list_buckets()', fs::path(vendor_dir, "examples", "list_buckets.R"))

  vendor_dir
}

test_that("copy_vendor_assets copies README, logo, examples and developer guide", {
  vendor_dir <- make_vendor_fixture()
  out_dir <- withr::local_tempdir()

  copy_vendor_assets(vendor_dir, out_dir)

  expect_true(fs::file_exists(fs::path(out_dir, "README.md")))
  expect_true(fs::file_exists(fs::path(out_dir, "logo.png")))
  expect_true(fs::file_exists(fs::path(out_dir, "examples", "list_buckets.R")))
  expect_true(fs::file_exists(fs::path(out_dir, "developer_guide", "article.md")))
  expect_true(fs::file_exists(fs::path(out_dir, "developer_guide", "CODE_OF_CONDUCT.md")))
  expect_true(fs::file_exists(fs::path(out_dir, "developer_guide", "DEVELOPER_GUIDE.md")))
  expect_true(fs::file_exists(fs::path(out_dir, "img", "code_completion.gif")))
  # the gif/png live under img/developer_guide via docs/, not duplicated into developer_guide
  expect_false(fs::file_exists(fs::path(out_dir, "developer_guide", "logo.png")))
})

test_that("edit_readme rewrites the logo tag and docs/examples links", {
  file <- withr::local_tempfile(lines = c(
    '<img src="docs/logo.png" align="right" height="150" />',
    "[Logo](docs/logo.png)",
    "![](docs/code_completion.gif)",
    "[Guide](docs/developer_guide/article.md)",
    "[Example](examples/list_buckets.R)"
  ))

  edit_readme(file)
  out <- readLines(file)

  expect_equal(
    out[1],
    '<img src= "logo.png" style="float:right;height:150px;width:auto" />'
  )
  expect_equal(out[2], "Logo")
  expect_equal(out[3], "![](img/code_completion.gif)")
  expect_equal(out[4], "[Guide](developer_guide/article.md)")
  expect_equal(out[5], "[Example](examples/list_buckets.md)")
})

test_that("edit_r_examples wraps .R files as fenced .md and removes the .R originals", {
  dir <- withr::local_tempdir()
  writeLines('svc$list_buckets()', fs::path(dir, "list_buckets.R"))

  edit_r_examples(dir)

  expect_false(fs::file_exists(fs::path(dir, "list_buckets.R")))
  out <- readLines(fs::path(dir, "list_buckets.md"))
  expect_equal(out, c("```r", 'svc$list_buckets()', "```"))
})
