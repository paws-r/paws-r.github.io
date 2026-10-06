alias_fixture <- test_path("fixtures", "aws_service_alias.yml")

make_paws_cran_fixture <- function() {
  paws_dir <- withr::local_tempdir(.local_envir = parent.frame())

  fs::dir_create(fs::path(paws_dir, "paws"))
  writeLines(
    c(
      "Package: paws",
      "Imports:",
      "    paws.common (>= 0.3.0),",
      "    paws.storage (>= 0.3.0),",
      "    paws.compute (>= 0.3.0)"
    ),
    fs::path(paws_dir, "paws", "DESCRIPTION")
  )

  fs::dir_create(fs::path(paws_dir, "paws.storage", "man"), recurse = TRUE)
  fs::file_create(fs::path(
    paws_dir,
    "paws.storage",
    "man",
    c(
      "s3.Rd",
      "s3_list_buckets.Rd",
      "s3_put_object.Rd",
      "glacier.Rd",
      "glacier_create_vault.Rd",
      "reexports.Rd"
    )
  ))

  fs::dir_create(fs::path(paws_dir, "paws.compute", "man"), recurse = TRUE)
  fs::file_create(fs::path(
    paws_dir,
    "paws.compute",
    "man",
    c("ec2.Rd", "ec2_run_instances.Rd")
  ))

  paws_dir
}

test_that("reference_index groups services by paws.* package and applies the alias override", {
  paws_dir <- make_paws_cran_fixture()
  out_file <- withr::local_tempfile()

  reference_index(paws_dir, alias_fixture, out_file)
  out <- readLines(out_file)

  expect_equal(out[1], "# Available Services")
  expect_true("## paws.storage" %in% out)
  expect_true("## paws.compute" %in% out)
  # aliased services use the override display name
  expect_true(any(grepl(
    '[Amazon S3 (s3)](s3)',
    out,
    fixed = TRUE
  )))
  expect_true(any(grepl(
    '[Amazon EC2 (ec2)](ec2)',
    out,
    fixed = TRUE
  )))
  # services with no override fall back to convert_name()
  expect_true(any(grepl(
    '[Glacier (glacier)](glacier)',
    out,
    fixed = TRUE
  )))
  # paws.common and reexports.Rd are never listed
  expect_false(any(grepl("reexports", out)))
})

make_md_fixture <- function() {
  md_dir <- withr::local_tempdir(.local_envir = parent.frame())
  fs::file_create(fs::path(
    md_dir,
    c(
      "s3.md",
      "s3_list_buckets.md",
      "s3_put_object.md",
      "paginate.md",
      "list_paginators.md",
      "set_service_parameter.md",
      "paws_stream.md"
    )
  ))
  md_dir
}

test_that("make_hierarchy groups a service's operator pages under its Client page", {
  md_dir <- make_md_fixture()

  # a realistic value, as build_site_yaml() actually passes it: the full
  # on-disk path (relative to the repo root, not to the mkdocs docs_dir) -
  # make_hierarchy() must derive the nav-relative "docs/<file>" path from
  # just the file name, not use this verbatim.
  h <- make_hierarchy(
    md_dir,
    alias_fixture,
    fs::path(md_dir, "reference_index.md")
  )

  expect_equal(h[["Available Services"]], "docs/reference_index.md")
  expect_equal(
    h[["Amazon S3 (s3)"]],
    c(
      "Client: docs/s3.md",
      "List Buckets: docs/s3_list_buckets.md",
      "Put Object: docs/s3_put_object.md"
    )
  )
})

test_that("make_hierarchy does not scramble names when multiple services have overrides", {
  md_dir <- withr::local_tempdir()
  fs::file_create(fs::path(md_dir, c("aaa.md", "bbb.md", "ccc.md", "ddd.md")))
  multi_alias <- test_path("fixtures", "aws_service_alias_multi.yml")

  h <- make_hierarchy(
    md_dir,
    multi_alias,
    fs::path(md_dir, "reference_index.md")
  )

  expect_equal(
    h[[sprintf("%s (aaa)", convert_name("aaa"))]],
    "Client: docs/aaa.md"
  )
  expect_equal(h[["BBB Service (bbb)"]], "Client: docs/bbb.md")
  expect_equal(
    h[[sprintf("%s (ccc)", convert_name("ccc"))]],
    "Client: docs/ccc.md"
  )
  expect_equal(h[["DDD Service (ddd)"]], "Client: docs/ddd.md")
})

test_that("reference_index does not scramble names when multiple services have overrides", {
  paws_dir <- withr::local_tempdir()
  fs::dir_create(fs::path(paws_dir, "paws"))
  writeLines(
    c("Package: paws", "Imports:", "    paws.example (>= 0.1.0)"),
    fs::path(paws_dir, "paws", "DESCRIPTION")
  )
  fs::dir_create(fs::path(paws_dir, "paws.example", "man"), recurse = TRUE)
  fs::file_create(fs::path(
    paws_dir,
    "paws.example",
    "man",
    c("aaa.Rd", "bbb.Rd", "ccc.Rd", "ddd.Rd")
  ))

  multi_alias <- test_path("fixtures", "aws_service_alias_multi.yml")
  out_file <- withr::local_tempfile()

  reference_index(paws_dir, multi_alias, out_file)
  out <- readLines(out_file)

  expect_true(any(grepl(
    '[BBB Service (bbb)](bbb)',
    out,
    fixed = TRUE
  )))
  expect_true(any(grepl(
    '[DDD Service (ddd)](ddd)',
    out,
    fixed = TRUE
  )))
  expect_false(any(grepl("BBB Service (ddd)", out, fixed = TRUE)))
  expect_false(any(grepl("DDD Service (bbb)", out, fixed = TRUE)))
})

test_that("make_hierarchy surfaces non-service addon pages as top-level nav entries", {
  md_dir <- make_md_fixture()

  # a realistic value, as build_site_yaml() actually passes it: the full
  # on-disk path (relative to the repo root, not to the mkdocs docs_dir) -
  # make_hierarchy() must derive the nav-relative "docs/<file>" path from
  # just the file name, not use this verbatim.
  h <- make_hierarchy(
    md_dir,
    alias_fixture,
    fs::path(md_dir, "reference_index.md")
  )

  expect_equal(h[["Set Service Parameter"]], "docs/set_service_parameter.md")
  expect_equal(h[["Paws Stream"]], "docs/paws_stream.md")
})

test_that("make_hierarchy groups the paginator addons together", {
  md_dir <- make_md_fixture()

  # a realistic value, as build_site_yaml() actually passes it: the full
  # on-disk path (relative to the repo root, not to the mkdocs docs_dir) -
  # make_hierarchy() must derive the nav-relative "docs/<file>" path from
  # just the file name, not use this verbatim.
  h <- make_hierarchy(
    md_dir,
    alias_fixture,
    fs::path(md_dir, "reference_index.md")
  )

  expect_equal(
    h[["Paws Paginators"]],
    c(
      Paginate = "docs/paginate.md",
      "List Paginators" = "docs/list_paginators.md"
    )
  )
})

test_that("get_developer_guide lists files sorted by name descending", {
  dir <- withr::local_tempdir()
  fs::file_create(fs::path(dir, c("article_a.md", "article_b.md")))

  out <- get_developer_guide(dir)

  expect_equal(
    out,
    list(
      "Article B: developer_guide/article_b.md",
      "Article A: developer_guide/article_a.md"
    )
  )
})

test_that("get_examples lists example files with display names", {
  dir <- withr::local_tempdir()
  fs::file_create(fs::path(dir, "list_buckets.md"))

  out <- get_examples(dir)

  expect_equal(out, list("List Buckets: examples/list_buckets.md"))
})

test_that("get_version extracts the semantic version from DESCRIPTION", {
  file <- withr::local_tempfile(
    lines = c(
      "Package: paws",
      "Version: 1.2.3",
      "Title: Something"
    )
  )

  expect_equal(get_version(file), "1.2.3")
})
