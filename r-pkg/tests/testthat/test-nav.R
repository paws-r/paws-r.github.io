test_that("convert_name title-cases a snake_case file stem", {
  expect_equal(convert_name("list_buckets"), "List Buckets")
})

test_that("convert_name strips the file extension before converting", {
  expect_equal(convert_name("list_buckets.md"), "List Buckets")
})

test_that("convert_name is vectorised", {
  expect_equal(
    convert_name(c("s3.md", "list_paginators.md")),
    c("S3", "List Paginators")
  )
})

test_that("alias_display_name assigns each service its own override, not a recycled one", {
  # a naive `ifelse(cond, override$name[found], ...)` recycles the
  # filtered override vector by absolute position rather than matching
  # each service to its own row - this only shows up with 2+ overridden
  # services in the same call, which is why fixtures with a single
  # override match (elsewhere in these tests) don't catch it.
  override <- data.frame(
    service = c("bbb", "ddd"),
    name = c("BBB Service", "DDD Service"),
    stringsAsFactors = FALSE
  )

  out <- alias_display_name(c("aaa", "bbb", "ccc", "ddd"), override)

  expect_equal(
    out,
    c(convert_name("aaa"), "BBB Service", convert_name("ccc"), "DDD Service")
  )
})
