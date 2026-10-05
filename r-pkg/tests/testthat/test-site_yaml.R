test_that("build_site_yaml fills in version, Reference, Developer Guide and Code Examples nav", {
  base <- withr::local_tempdir()
  alias_fixture <- test_path("fixtures", "aws_service_alias.yml")

  orig_yaml <- fs::path(base, "mkdocs.orig.yml")
  writeLines(
    c(
      "site_name: paws",
      "nav:",
      "  - Home: index.md",
      "  - Reference: placeholder",
      "  - Developer Guide: placeholder",
      "  - Code Examples: placeholder"
    ),
    orig_yaml
  )

  description_file <- withr::local_tempfile(lines = c("Package: paws", "Version: 1.2.3"))

  paws_dir <- fs::path(base, "cran")
  fs::dir_create(fs::path(paws_dir, "paws"))
  writeLines(
    c("Package: paws", "Imports:", "    paws.storage (>= 0.1.0)"),
    fs::path(paws_dir, "paws", "DESCRIPTION")
  )
  fs::dir_create(fs::path(paws_dir, "paws.storage", "man"), recurse = TRUE)
  fs::file_create(fs::path(paws_dir, "paws.storage", "man", "s3.Rd"))

  # a service needs more than one page for yaml::as.yaml() to render it as
  # a sequence rather than a single quoted scalar - see the migration plan
  # for why the latter is a known fragility in the quote-tidying gsubs below.
  md_dir <- fs::path(base, "docs", "docs")
  fs::dir_create(md_dir, recurse = TRUE)
  fs::file_create(fs::path(md_dir, c("s3.md", "s3_list_buckets.md")))

  dev_guide_dir <- fs::path(base, "docs", "developer_guide")
  fs::dir_create(dev_guide_dir, recurse = TRUE)
  fs::file_create(fs::path(dev_guide_dir, "article.md"))

  examples_dir <- fs::path(base, "docs", "examples")
  fs::dir_create(examples_dir, recurse = TRUE)
  fs::file_create(fs::path(examples_dir, "list_buckets.md"))

  out_file <- fs::path(base, "mkdocs.yml")

  build_site_yaml(
    orig_yaml_file = orig_yaml,
    out_file = out_file,
    description_file = description_file,
    md_dir = md_dir,
    alias_file = alias_fixture,
    reference_index_out_file = fs::path(md_dir, "reference_index.md"),
    paws_dir = paws_dir,
    developer_guide_dir = dev_guide_dir,
    examples_dir = examples_dir
  )

  out <- readLines(out_file)

  expect_equal(out[1], "site_name: 'paws: 1.2.3'")
  expect_true(any(grepl("Amazon S3 \\(s3\\):", out)))
  expect_true(any(grepl("Client: docs/s3.md", out)))
  expect_true(any(grepl("List Buckets: docs/s3_list_buckets.md", out)))
  expect_true(any(grepl("Article: developer_guide/article.md", out)))
  expect_true(any(grepl("List Buckets: examples/list_buckets.md", out)))
  # the index page itself must not leak into its own hierarchy listing
  expect_false(any(grepl("Reference \\(reference\\)", out)))
  expect_true(fs::file_exists(fs::path(md_dir, "reference_index.md")))
  # the nav path must be relative to the mkdocs docs_dir (like every other
  # entry), not the full on-disk path md_dir was given as
  expect_true(any(grepl("Available Services: docs/reference_index.md", out)))
})
