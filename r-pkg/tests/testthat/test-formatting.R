make_md_file <- function(lines) {
  file <- withr::local_tempfile(.local_envir = parent.frame(), fileext = ".md")
  writeLines(lines, file)
  file
}

test_that("add_r_to_fences tags bare opening fences with 'r'", {
  file <- make_md_file(c("```", "x <- 1", "```", "", "```r", "y <- 2", "```"))

  n <- add_r_to_fences(file)

  expect_equal(n, 1L)
  expect_equal(
    readLines(file),
    c("```r", "x <- 1", "```", "", "```r", "y <- 2", "```")
  )
})

test_that("add_r_to_fences leaves inline code and already-tagged fences untouched", {
  file <- make_md_file(c("`not a fence`", "```r", "x <- 1", "```"))

  n <- add_r_to_fences(file)

  expect_equal(n, 0L)
  expect_equal(readLines(file), c("`not a fence`", "```r", "x <- 1", "```"))
})

test_that("add_r_to_fences tags tilde fences too", {
  file <- make_md_file(c("~~~", "x <- 1", "~~~"))

  n <- add_r_to_fences(file)

  expect_equal(n, 1L)
  expect_equal(readLines(file), c("~~~r", "x <- 1", "~~~"))
})

test_that("add_r_to_fences respects max_indent", {
  file <- make_md_file(c("    ```", "x <- 1", "    ```"))

  expect_equal(add_r_to_fences(file, max_indent = 3L), 0L)
  expect_equal(readLines(file), c("    ```", "x <- 1", "    ```"))

  expect_equal(add_r_to_fences(file, max_indent = 4L), 1L)
  expect_equal(readLines(file), c("    ```r", "x <- 1", "    ```"))
})

test_that("add_r_to_fences writes to 'out' and leaves the source file untouched", {
  file <- make_md_file(c("```", "x <- 1", "```"))
  out <- withr::local_tempfile(fileext = ".md")

  n <- add_r_to_fences(file, out = out)

  expect_equal(n, 1L)
  expect_equal(readLines(file), c("```", "x <- 1", "```"))
  expect_equal(readLines(out), c("```r", "x <- 1", "```"))
})

test_that("reindent_lists normalises nested list indentation to 'width' spaces", {
  file <- make_md_file(c(
    "- item 1",
    "  - nested 1",
    "    - deeply nested",
    "- item 2",
    "1. one",
    "   1. one-one"
  ))

  n <- reindent_lists(file, width = 4L)

  expect_equal(n, 3L)
  expect_equal(
    readLines(file),
    c(
      "- item 1",
      "    - nested 1",
      "        - deeply nested",
      "- item 2",
      "1. one",
      "    1. one-one"
    )
  )
})

test_that("reindent_lists shifts continuation text and fenced code inside list items", {
  file <- make_md_file(c(
    "- a",
    "      continuation text",
    "",
    "      ```",
    "      code in list",
    "      ```"
  ))

  n <- reindent_lists(file, width = 4L)

  expect_equal(n, 4L)
  expect_equal(
    readLines(file),
    c(
      "- a",
      "    continuation text",
      "",
      "    ```",
      "    code in list",
      "    ```"
    )
  )
})

test_that("reindent_lists is a no-op when indentation already matches 'width'", {
  file <- make_md_file(c("- item 1", "    - nested 1"))

  n <- reindent_lists(file, width = 4L)

  expect_equal(n, 0L)
  expect_equal(readLines(file), c("- item 1", "    - nested 1"))
})

test_that("reindent_lists writes to 'out' and leaves the source file untouched", {
  file <- make_md_file(c("- item 1", "  - nested 1"))
  out <- withr::local_tempfile(fileext = ".md")

  n <- reindent_lists(file, out = out, width = 4L)

  expect_equal(n, 1L)
  expect_equal(readLines(file), c("- item 1", "  - nested 1"))
  expect_equal(readLines(out), c("- item 1", "    - nested 1"))
})

test_that("add_r_to_fences_dir fixes markdown files recursively, skipping node_modules/renv", {
  dir <- withr::local_tempdir()
  fs::dir_create(fs::path(dir, "node_modules"))
  writeLines(c("```", "x", "```"), fs::path(dir, "a.md"))
  writeLines(c("```r", "x", "```"), fs::path(dir, "b.md"))
  writeLines(c("```", "x", "```"), fs::path(dir, "node_modules", "c.md"))
  writeLines("not markdown", fs::path(dir, "d.txt"))

  res <- add_r_to_fences_dir(dir)

  expect_equal(res$file, as.character(fs::path(dir, "a.md")))
  expect_equal(res$n_changed, 1L)
  expect_equal(readLines(fs::path(dir, "a.md")), c("```r", "x", "```"))
  expect_equal(readLines(fs::path(dir, "node_modules", "c.md")), c("```", "x", "```"))
})

test_that("reindent_lists_dir fixes markdown files recursively, skipping node_modules/renv", {
  dir <- withr::local_tempdir()
  fs::dir_create(fs::path(dir, "renv"))
  writeLines(c("- item", "  - nested"), fs::path(dir, "a.md"))
  writeLines(c("- item", "  - nested"), fs::path(dir, "renv", "b.md"))

  res <- reindent_lists_dir(dir)

  expect_equal(res$file, as.character(fs::path(dir, "a.md")))
  expect_equal(res$n_changed, 1L)
  expect_equal(readLines(fs::path(dir, "a.md")), c("- item", "    - nested"))
  expect_equal(readLines(fs::path(dir, "renv", "b.md")), c("- item", "  - nested"))
})
