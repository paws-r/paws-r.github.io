test_that("pmap_build runs sequentially via lapply when workers is 1", {
  out <- pmap_build(
    1:3,
    function(x, offset) x + offset,
    offset = 10,
    workers = 1
  )
  expect_equal(out, list(11, 12, 13))
})

test_that("pmap_build never touches mirai when workers is 1", {
  # if this somehow started daemons, mirai::status() would report > 0
  pmap_build(1:2, identity, workers = 1)
  expect_equal(mirai::status()$connections, 0)
})
