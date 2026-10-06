test_that("is_client_rd identifies service pages by their no-underscore stem", {
  expect_true(is_client_rd("s3.Rd"))
  expect_true(is_client_rd("acmpca.Rd"))
  expect_false(is_client_rd("s3_put_object.Rd"))
  # paws-package.Rd/reexports.Rd have no underscore either (a hyphen isn't
  # one), so this alone doesn't exclude them - build_rd_docs() already
  # filters those two out by exact name before staging, same as it always
  # has; this just documents that is_client_rd() isn't where that happens.
  expect_true(is_client_rd("paws-package.Rd"))
})

parse_rd_text <- function(...) {
  tools::parse_Rd(textConnection(c(...)))
}

find_rd_tag <- function(rd, tag) {
  idx <- vapply(rd, function(x) identical(attr(x, "Rd_tag"), tag), logical(1))
  rd[[which(idx)]]
}

test_that("link resolution falls back to the literal alias when no index is given", {
  desc <- find_rd_tag(
    parse_rd_text(
      "\\name{x}",
      "\\alias{x}",
      "\\title{x}",
      "\\description{\\link[=some_long_alias]{some_long_alias}}"
    ),
    "\\description"
  )
  expect_equal(
    render_rd_inline(desc),
    "[`some_long_alias`](some_long_alias.md)"
  )
})

test_that("link resolution uses alias_index to find a topic's real file", {
  # regression test for a real bug found verifying the real site:
  # roxygen2 truncates the .Rd file basename for very long function
  # names (e.g. the 68-char
  # "servicequotas_delete_service_quota_increase_request_from_template"
  # becomes the 56-char
  # "servicequotas_delet_servi_quota_incre_reque_from_templ.Rd"), so a
  # \link naively assuming alias == file basename resolves to a page
  # that was never generated. Confirmed on the real site: this exact
  # mismatch broke 23 links across 4 client pages' Operations tables.
  desc <- find_rd_tag(
    parse_rd_text(
      "\\name{x}",
      "\\alias{x}",
      "\\title{x}",
      "\\description{\\link[=some_long_alias]{some_long_alias}}"
    ),
    "\\description"
  )
  out <- render_rd_inline(desc, c(some_long_alias = "truncated_file"))
  expect_equal(out, "[`some_long_alias`](truncated_file.md)")
})

test_that("build_rd_alias_index maps every alias to its real file basename", {
  man_dir <- withr::local_tempdir()
  writeLines(
    c("\\name{foo}", "\\alias{foo}", "\\title{Foo}", "\\usage{foo()}"),
    fs::path(man_dir, "foo.Rd")
  )
  # a file with multiple aliases (e.g. paginate.Rd documents
  # paginate/paginate_lapply/paginate_sapply together) and one simulating
  # roxygen2's truncation (alias != file basename)
  writeLines(
    c(
      "\\name{bar}",
      "\\alias{bar}",
      "\\alias{bar_alt}",
      "\\title{Bar}",
      "\\usage{bar()}"
    ),
    fs::path(man_dir, "truncated_file.Rd")
  )

  index <- build_rd_alias_index(man_dir)

  expect_equal(index[["foo"]], "foo")
  expect_equal(index[["bar"]], "truncated_file")
  expect_equal(index[["bar_alt"]], "truncated_file")
})

test_that("render_client_rd resolves Operations table links via alias_index", {
  # client.Rd's Operations table links \link[=foo_bar]{bar} and
  # \link[=foo_baz]{baz} - the index below simulates both having been
  # truncated to a different real file basename, same as the real
  # servicequotas/ssoadmin/etc. case this guards against.
  out <- render_client_rd(
    test_path("fixtures", "client.Rd"),
    c(foo_bar = "foo_trunc_bar", foo_baz = "foo_trunc_baz")
  )
  expect_true(any(grepl("\\[`bar`\\]\\(foo_trunc_bar\\.md\\)", out)))
  expect_true(any(grepl("\\[`baz`\\]\\(foo_trunc_baz\\.md\\)", out)))
  expect_false(any(grepl("foo_bar\\.md|foo_baz\\.md", out)))
})

test_that("render_rd_itemize re-merges the empty-item/LIST pair for nested labelled items", {
  # regression test for the actual bug found in production: rd2qmd (and
  # the Rd2md CRAN package) both drop this content entirely. Confirmed
  # against tools::Rd2HTML() as ground truth - see render_client_rd()'s
  # docs and plans/adopt-rd2qmd.md.
  out <- render_client_rd(test_path("fixtures", "client.Rd"))

  args_start <- which(out == "## Arguments")
  value_start <- which(out == "## Value")
  args_section <- out[args_start:(value_start - 1)]

  expect_equal(
    args_section,
    c(
      "## Arguments",
      "",
      "- **`config`**",
      "",
      "    Optional configuration of credentials, endpoint, and/or region.",
      "",
      "    - **credentials**:",
      "        - **creds**:",
      "            - **access_key_id**: AWS access key ID",
      "            - **secret_access_key**: AWS secret access key",
      "        - **profile**: The name of a profile to use.",
      "    - **endpoint**: The complete URL to use for the constructed client.",
      "",
      "- **`endpoint`**",
      "",
      "    Optional shorthand for complete URL to use for the constructed client.",
      ""
    )
  )
  # the exact failure mode this guards against: no bullet should ever be
  # left empty by an unmerged \item/LIST pair
  expect_false(any(grepl("^\\s*-\\s*$", out)))
})

test_that("render_client_rd renders every expected section with correct conventions", {
  out <- render_client_rd(test_path("fixtures", "client.Rd"))

  expect_equal(out[1], "# Foo")
  expect_true(any(grepl("^## Description$", out)))
  expect_true(any(grepl("^## Usage$", out)))
  expect_true(any(grepl("^## Value$", out)))
  expect_true(any(grepl("^## Service syntax$", out)))
  expect_true(any(grepl("^## Operations$", out)))
  expect_true(any(grepl("^## Examples$", out)))

  # Usage/Examples fence as r; Service syntax does not - matches the
  # convention already established by rd2qmd's own (correct) output for
  # these sections elsewhere.
  usage_start <- which(out == "## Usage")
  expect_equal(out[usage_start + 2], "```r")
  syntax_start <- which(out == "## Service syntax")
  expect_equal(out[syntax_start + 2], "```")

  # description paragraph breaks are preserved, not collapsed
  expect_true(any(grepl("First paragraph", out)))
  expect_true(any(grepl("Second paragraph", out)))
  first_idx <- grep("First paragraph", out)
  expect_equal(out[first_idx + 1], "")
  expect_true(grepl("Second paragraph", out[first_idx + 2]))

  # the Operations table links to each operation's own page, backtick-coded
  expect_true(any(grepl("^\\|  \\[`bar`\\]\\(foo_bar\\.md\\)  \\|", out)))
  expect_true(any(grepl("^\\|  \\[`baz`\\]\\(foo_baz\\.md\\)  \\|", out)))

  # \href renders as a plain markdown link, not backtick-coded
  expect_true(any(grepl("\\[example link\\]\\(https://example\\.com\\)", out)))

  # \dontrun's "## Not run:"/"## End(Not run)" markers are dropped,
  # matching rd2qmd's convention
  expect_false(any(grepl("Not run", out)))
})

test_that("render_client_rd produces no raw HTML and no stray link syntax", {
  out <- render_client_rd(test_path("fixtures", "client.Rd"))
  expect_false(any(grepl("<table|<dl>|<dt>|<dd>|<div|<out", out)))
})

test_that("render_client_rd_file writes to the expected path", {
  md_dir <- withr::local_tempdir()
  out_file <- render_client_rd_file(test_path("fixtures", "client.Rd"), md_dir)
  expect_equal(out_file, fs::path(md_dir, "client.md"))
  expect_true(fs::file_exists(out_file))
  expect_equal(
    readLines(out_file),
    render_client_rd(test_path("fixtures", "client.Rd"))
  )
})
