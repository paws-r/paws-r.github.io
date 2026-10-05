# Fixtures below mirror the blank-line padding pandoc's "markdown_strict"
# writer actually puts around every "### Heading" in real Rd2HTML output
# (verified against real paws Rd files during development - see the
# migration plan). The wrap_r_* functions overwrite the first/last line of
# their matched range with a fence marker rather than inserting a new line,
# which only loses no content because that boundary line is conventionally
# blank.

test_that("wrap_r_usage fences the usage block before Arguments", {
  lines <- c("### Usage", "", "    foo(x, y)", "", "### Arguments")
  out <- wrap_r_usage(lines)
  expect_equal(
    out,
    c("### Usage", "```r", "foo(x, y)", "```", "### Arguments")
  )
})

test_that("wrap_r_usage falls back to Value when there is no Arguments section", {
  lines <- c("### Usage", "", "    foo()", "", "### Value")
  out <- wrap_r_usage(lines)
  expect_equal(out, c("### Usage", "```r", "foo()", "```", "### Value"))
})

test_that("wrap_r_usage is a no-op when there is no Usage section", {
  lines <- c("### Arguments", "x: a thing")
  expect_equal(wrap_r_usage(lines), lines)
})

test_that("wrap_r_value leaves a plain prose description unfenced", {
  lines <- c("### Value", "", "A list.", "", "### Request syntax")
  out <- wrap_r_value(lines)
  expect_equal(out, lines)
})

test_that("wrap_r_value fences a code-shaped return value", {
  lines <- c(
    "### Value",
    "",
    "    list(",
    '      Foo = "string"',
    "    )",
    "",
    "### Request syntax"
  )
  out <- wrap_r_value(lines)
  expect_equal(
    out,
    c(
      "### Value",
      "```r",
      "list(",
      '  Foo = "string"',
      ")",
      "```",
      "### Request syntax"
    )
  )
})

test_that("wrap_r_value does not append a trailing NA when prose is the last section", {
  lines <- c("### Value", "", "A list.")
  expect_equal(wrap_r_value(lines), lines)
})

test_that("wrap_r_request_syntax fences up to Examples", {
  lines <- c(
    "### Request syntax",
    "",
    "    svc$op(",
    '      Foo = "string"',
    "    )",
    "",
    "### Examples"
  )
  out <- wrap_r_request_syntax(lines)
  expect_equal(
    out,
    c(
      "### Request syntax",
      "```r",
      "svc$op(",
      '  Foo = "string"',
      ")",
      "```",
      "### Examples"
    )
  )
})

test_that("wrap_r_examples fences through the Not run marker, consuming the next line", {
  # The function closes the fence by overwriting whatever line follows
  # "## End(Not run)" - in real output that's always blank/EOF, so nothing
  # of value is lost; a fixture with real trailing content documents that
  # this line is consumed, not preserved.
  lines <- c(
    "### Examples",
    "",
    "    ## Not run: ",
    "    svc$op()",
    "    ## End(Not run)",
    "trailing text"
  )
  out <- wrap_r_examples(lines)
  expect_equal(
    out,
    c("### Examples", "```r", "## Not run: ", "svc$op()", "## End(Not run)", "```")
  )
})

test_that("wrap_r_examples runs to end of lines when there is no Not run marker", {
  lines <- c("### Examples", "", "    svc$op()")
  out <- wrap_r_examples(lines)
  expect_equal(out, c("### Examples", "```r", "svc$op()", "```"))
})

test_that("wrap_r_service_syntax fences up to Operations", {
  lines <- c("### Service syntax", "", "    svc <- paws::svc()", "", "### Operations")
  out <- wrap_r_service_syntax(lines)
  expect_equal(
    out,
    c("### Service syntax", "```r", "svc <- paws::svc()", "```", "### Operations")
  )
})

test_that("wrap_r_code applies all five wrappers in sequence", {
  lines <- c(
    "### Usage", "", "    foo(x)", "",
    "### Arguments", "x: a thing",
    "### Value", "", "NULL", "",
    "### Examples", "", "    foo(1)"
  )
  out <- wrap_r_code(lines)
  expect_equal(
    out,
    c(
      "### Usage", "```r", "foo(x)", "```",
      "### Arguments", "x: a thing",
      "### Value", "", "NULL", "",
      "### Examples", "```r", "foo(1)", "```"
    )
  )
})
