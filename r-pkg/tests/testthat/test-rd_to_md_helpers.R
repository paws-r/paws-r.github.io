test_that("find_and_replace links a bare operator name", {
  string <- '<td style="text-align: left;">list_buckets</td>'
  out <- find_and_replace(string, "s3")
  expect_equal(
    out,
    '<td style="text-align: left;"><a href="../s3_list_buckets/"> list_buckets </a></td>'
  )
})

page_header_table <- function() {
  # Rd2HTML/pandoc always emit this as every page's first table, titled
  # with the topic name and "R Documentation" - never a bare "<table>".
  c(
    '<table style="width: 100%;">',
    "<tbody>",
    "<tr>",
    "<td>some_operation</td>",
    '<td style="text-align: right;">R Documentation</td>',
    "</tr>",
    "</tbody>",
    "</table>"
  )
}

test_that("html_table_to_list leaves a header-only page (no \\arguments) unchanged", {
  lines <- c(page_header_table(), "", "### Value", "NULL")
  expect_equal(html_table_to_list(lines), lines)
})

test_that("html_table_to_list converts the real describe-block table shape pandoc emits", {
  # Rd2HTML tags the arguments table with role="presentation", never a bare
  # "<table>" - see R/rd_to_md.R for why this matters.
  lines <- c(
    page_header_table(),
    "",
    "### Arguments",
    "",
    '<table role="presentation">',
    "<tbody>",
    "<tr>",
    '<td><code id="foo">foo</code></td>',
    "<td><p>a thing</p></td>",
    "</tr>",
    "</tbody>",
    "</table>",
    "",
    "### Value"
  )
  out <- html_table_to_list(lines)
  expect_equal(
    out,
    c(
      page_header_table(),
      "",
      "### Arguments",
      "",
      "<dl>",
      '<dt><code id="foo">foo</code></dt>',
      "<dd><p>a thing</p></dd>",
      "</dl>",
      "",
      "### Value"
    )
  )
})
