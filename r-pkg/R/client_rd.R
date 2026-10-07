#' @importFrom tools file_path_sans_ext parse_Rd
#' @importFrom fs path path_ext_set path_file
NULL

#' Does this `.Rd` basename belong to a service's client/constructor page?
#'
#' Client pages (e.g. `s3.Rd`, `ec2.Rd`) are named after their service with
#' no underscore, unlike operator pages (`s3_put_object.Rd`). Matches the
#' same convention [make_hierarchy()] already uses to tell them apart.
#'
#' @param basename Character vector of `.Rd` file basenames.
#' @return Logical vector.
#' @export
is_client_rd <- function(basename) {
  !grepl("_", tools::file_path_sans_ext(basename))
}

#' Render a client/constructor Rd file's documentation into Markdown
#'
#' Parses `rd_file` directly from its [tools::parse_Rd()] AST and renders
#' its Title, Description, Usage, Arguments, Value, Service syntax,
#' Operations, and Examples sections into Markdown, matching this site's
#' established conventions. Deliberately scoped to just that small,
#' uniform set of sections every client page has - not a general
#' Rd-to-Markdown renderer.
#'
#' Written as a dedicated renderer rather than going through `rd2qmd`
#' because `rd2qmd` (and the `Rd2md` CRAN package) both silently drop the
#' `config`/`credentials` shorthand argument documentation every client
#' page has - see [render_rd_itemize()] for the exact mechanism, and
#' `plans/adopt-rd2qmd.md` for the investigation.
#'
#' @param rd_file Path to a client `.Rd` file.
#' @param alias_index Named character vector mapping a topic's `\alias`
#'   (what `\link[=alias]{}` targets) to the Rd file basename it actually
#'   lives in, as built by [build_rd_alias_index()]. Most topics' alias
#'   and file basename are identical, but roxygen2 truncates the file
#'   basename for very long function names (e.g.
#'   `servicequotas_delete_service_quota_increase_request_from_template`
#'   becomes `servicequotas_delet_servi_quota_incre_reque_from_templ.Rd`),
#'   so a `\link` naively assuming alias == file basename resolves to a
#'   file that doesn't exist. `NULL` falls back to that naive assumption.
#' @return Character vector of Markdown lines.
#' @export
render_client_rd <- function(rd_file, alias_index = NULL) {
  rd <- tools::parse_Rd(rd_file)
  tags <- vapply(
    rd,
    function(x) {
      tag <- attr(x, "Rd_tag")
      if (is.null(tag)) "" else tag
    },
    character(1)
  )
  find_tag <- function(tag) rd[[which(tags == tag)[1]]]

  out <- c(
    paste("#", render_rd_inline(find_tag("\\title"), alias_index)),
    "",
    render_rd_description(find_tag("\\description"), alias_index),
    "",
    render_rd_usage(find_tag("\\usage")),
    "",
    render_rd_arguments(find_tag("\\arguments"), alias_index),
    render_rd_value(find_tag("\\value"), alias_index),
    ""
  )

  for (idx in which(tags == "\\section")) {
    section_title <- render_rd_inline(rd[[idx]][[1]], alias_index)
    if (identical(section_title, "Service syntax")) {
      out <- c(
        out,
        render_rd_preformatted_section(rd[[idx]], "Service syntax"),
        ""
      )
    } else if (identical(section_title, "Operations")) {
      out <- c(out, render_rd_operations_section(rd[[idx]], alias_index), "")
    }
  }

  examples_idx <- which(tags == "\\examples")[1]
  if (!is.na(examples_idx)) {
    out <- c(out, render_rd_examples(rd[[examples_idx]]))
  }

  escape_false_links(out)
}

#' Render a client Rd file straight to a Markdown file
#'
#' @param rd_file Path to a client `.Rd` file.
#' @param md_dir Output directory. `rd_file`'s basename, with its
#'   extension changed to `.md`, is used as the output file name.
#' @param alias_index See [render_client_rd()].
#' @return Path to the written file, invisibly.
#' @export
render_client_rd_file <- function(rd_file, md_dir, alias_index = NULL) {
  out_file <- fs::path(md_dir, fs::path_ext_set(fs::path_file(rd_file), "md"))
  writeLines(render_client_rd(rd_file, alias_index), out_file)
  invisible(out_file)
}

#' Build a topic alias → Rd file basename lookup
#'
#' Scans every `.Rd` file in `man_dir` for its `\alias{}` tag(s) and maps
#' each one to that file's basename (without extension). Needed because
#' roxygen2 truncates the file basename for very long function names,
#' so it can no longer be assumed to equal the topic's own alias - see
#' [render_client_rd()]'s `alias_index` parameter.
#'
#' @param man_dir Directory of `.Rd` files to scan.
#' @return Named character vector: alias -> file basename.
#' @export
build_rd_alias_index <- function(man_dir) {
  files <- list.files(man_dir, pattern = "\\.Rd$")
  stems <- tools::file_path_sans_ext(files)
  index <- character(0)
  for (i in seq_along(files)) {
    # \alias{} is always declared near the top of the file, right after
    # \name{} and before \title{}/\usage{} - no need to read the whole
    # file just to find it.
    lines <- readLines(fs::path(man_dir, files[i]), n = 30)
    found <- regmatches(
      lines,
      regexpr("(?<=\\\\alias\\{)[^}]+", lines, perl = TRUE)
    )
    aliases <- unlist(found[lengths(found) > 0])
    if (length(aliases) > 0) index[aliases] <- stems[i]
  }
  index
}

# --- inline markup -----------------------------------------------------

#' Render a sequence of inline Rd nodes into one Markdown string
#'
#' Handles the inline Rd tags paws's generated documentation actually
#' uses: plain text, `\strong`, `\emph`, `\code`, `\verb`, `\href`, `\url`,
#' and `\link`. Any other tag falls back to rendering its children inline
#' and dropping the tag itself, rather than erroring on an unrecognized
#' construct.
#'
#' @param nodes An Rd node (list of children) or list of Rd nodes.
#' @param alias_index See [render_client_rd()]; used to resolve `\link`
#'   targets to their real file.
#' @return Character scalar.
#' @export
render_rd_inline <- function(nodes, alias_index = NULL) {
  paste0(
    vapply(
      nodes,
      render_rd_inline_one,
      character(1),
      alias_index = alias_index
    ),
    collapse = ""
  )
}

render_rd_inline_one <- function(node, alias_index = NULL) {
  tag <- attr(node, "Rd_tag")
  if (is.null(tag) || tag %in% c("TEXT", "RCODE", "VERB")) {
    return(as.character(node))
  }
  if (identical(tag, "\\strong")) {
    return(sprintf("**%s**", render_rd_inline(node[[1]], alias_index)))
  }
  if (identical(tag, "\\emph")) {
    return(sprintf("*%s*", render_rd_inline(node[[1]], alias_index)))
  }
  if (identical(tag, "\\code")) {
    return(sprintf("`%s`", render_rd_inline(node[[1]], alias_index)))
  }
  if (identical(tag, "\\verb")) {
    return(sprintf("`%s`", render_rd_inline(node[[1]], alias_index)))
  }
  if (identical(tag, "\\url")) {
    url <- render_rd_inline(node[[1]], alias_index)
    return(sprintf("[%s](%s)", url, url))
  }
  if (identical(tag, "\\href")) {
    url <- render_rd_inline(node[[1]], alias_index)
    text <- render_rd_inline(node[[2]], alias_index)
    return(sprintf("[%s](%s)", text, url))
  }
  if (identical(tag, "\\link")) {
    text <- render_rd_inline(node[[1]], alias_index)
    target <- attr(node, "Rd_option")
    target <- if (!is.null(target)) {
      sub("^=", "", as.character(target))
    } else {
      text
    }
    if (!is.null(alias_index) && !is.na(alias_index[target])) {
      target <- alias_index[[target]]
    }
    return(sprintf("[`%s`](%s.md)", text, target))
  }
  render_rd_inline(node, alias_index)
}

#' Collapse an Rd prose fragment's internal line-wrapping into one line
#'
#' Rd source wraps prose at arbitrary column widths; this joins it back
#' into a single logical line (matching `rd2qmd`'s own prose convention),
#' without touching paragraph breaks - callers that need to preserve those
#' must split on them first (see [render_rd_description()]).
#'
#' @param text Character scalar.
#' @return Character scalar.
#' @export
normalize_rd_prose <- function(text) {
  text <- gsub("[ \t]*\n[ \t]*", " ", text)
  trimws(gsub("[ \t]+", " ", text))
}

# --- \itemize, including the \item/LIST merge ---------------------------

#' Render an `\itemize` node into Markdown bullet lines
#'
#' Walks `\itemize`'s `\item` children into nested Markdown bullets,
#' recursing on each item's trailing nested `\itemize` (if any). Also
#' re-merges a quirk of R's own Rd parser (confirmed against
#' `tools::Rd2HTML()` as ground truth): an item whose content starts with
#' `\strong{label}:` comes through as an *empty* `\item` immediately
#' followed by a sibling `LIST` node holding the real content - exactly
#' the shape paws's `config`/`credentials` shorthand argument
#' documentation uses at every nesting level.
#'
#' @param node An `\itemize` Rd node.
#' @param indent Current nesting depth, for indenting sub-bullets.
#' @param alias_index See [render_client_rd()].
#' @return Character vector of Markdown lines.
#' @export
render_rd_itemize <- function(node, indent = 0, alias_index = NULL) {
  is_text <- function(x) identical(attr(x, "Rd_tag"), "TEXT")
  children <- Filter(Negate(is_text), node)
  lines <- character(0)
  i <- 1
  while (i <= length(children)) {
    item <- children[[i]]
    if (
      length(item) == 0 &&
        i < length(children) &&
        identical(attr(children[[i + 1]], "Rd_tag"), "LIST")
    ) {
      content <- children[[i + 1]]
      i <- i + 2
    } else {
      content <- item
      i <- i + 1
    }
    lines <- c(lines, render_rd_item_content(content, indent, alias_index))
  }
  lines
}

# an \item's (or merged LIST's) content is its own inline text, optionally
# followed by one nested \itemize - split those two apart so the nested
# part can recurse at indent + 1.
split_trailing_itemize <- function(content) {
  is_nested <- vapply(
    content,
    function(x) identical(attr(x, "Rd_tag"), "\\itemize"),
    logical(1)
  )
  idx <- which(is_nested)
  if (length(idx) > 0) {
    list(inline = content[-idx], nested = content[[idx[1]]])
  } else {
    list(inline = content, nested = NULL)
  }
}

render_rd_item_content <- function(content, indent, alias_index = NULL) {
  split <- split_trailing_itemize(content)
  text <- normalize_rd_prose(render_rd_inline(split$inline, alias_index))
  lines <- paste0(strrep("    ", indent), "- ", text)
  if (!is.null(split$nested)) {
    lines <- c(lines, render_rd_itemize(split$nested, indent + 1, alias_index))
  }
  lines
}

# --- top-level sections --------------------------------------------------

#' Render an `\arguments` node into an `## Arguments` Markdown section
#'
#' Renders each top-level argument as a bold, code-formatted bullet
#' followed by its description, recursing into [render_rd_itemize()] for
#' any trailing nested `\itemize` (e.g. the `config`/`credentials`
#' shorthand arguments).
#'
#' @param node An `\arguments` Rd node.
#' @param alias_index See [render_client_rd()].
#' @return Character vector of Markdown lines.
#' @export
render_rd_arguments <- function(node, alias_index = NULL) {
  is_text <- function(x) identical(attr(x, "Rd_tag"), "TEXT")
  items <- Filter(Negate(is_text), node)
  lines <- c("## Arguments", "")
  for (item in items) {
    name <- render_rd_inline(item[1], alias_index)
    split <- split_trailing_itemize(item[[2]])
    text <- normalize_rd_prose(render_rd_inline(split$inline, alias_index))
    lines <- c(lines, sprintf("- **`%s`**", name), "", paste0("    ", text))
    if (!is.null(split$nested)) {
      lines <- c(
        lines,
        "",
        render_rd_itemize(split$nested, indent = 1, alias_index = alias_index)
      )
    }
    lines <- c(lines, "")
  }
  lines
}

#' Render a `\usage` node into an `## Usage` Markdown section
#' @param node A `\usage` Rd node.
#' @return Character vector of Markdown lines.
#' @export
render_rd_usage <- function(node) {
  code <- paste0(vapply(node, as.character, character(1)), collapse = "")
  c("## Usage", "", "```r", trim_blank_edges(strsplit(code, "\n")[[1]]), "```")
}

#' Render a `\value` node into an `## Value` Markdown section
#' @param node A `\value` Rd node.
#' @param alias_index See [render_client_rd()].
#' @return Character vector of Markdown lines.
#' @export
render_rd_value <- function(node, alias_index = NULL) {
  c("## Value", "", normalize_rd_prose(render_rd_inline(node, alias_index)))
}

#' Render a `\description` node into an `## Description` Markdown section
#'
#' Unlike [normalize_rd_prose()], preserves paragraph breaks (blank lines
#' in the source render as blank lines between Markdown paragraphs).
#'
#' @param node A `\description` Rd node.
#' @param alias_index See [render_client_rd()].
#' @return Character vector of Markdown lines.
#' @export
render_rd_description <- function(node, alias_index = NULL) {
  text <- render_rd_inline(node, alias_index)
  paragraphs <- strsplit(text, "\n\\s*\n+")[[1]]
  paragraphs <- vapply(paragraphs, normalize_rd_prose, character(1))
  paragraphs <- paragraphs[nzchar(paragraphs)]
  # one paragraph per vector element, blank-line separated - not one
  # element with an embedded "\n\n", which would round-trip inconsistently
  # between the in-memory vector and a written-then-reread file.
  body <- character(0)
  for (p in paragraphs) {
    if (length(body) > 0) {
      body <- c(body, "")
    }
    body <- c(body, p)
  }
  c("## Description", "", body)
}

find_rd_child <- function(node, tag) {
  Find(function(x) identical(attr(x, "Rd_tag"), tag), node)
}

trim_blank_edges <- function(lines) {
  nonblank <- which(nzchar(trimws(lines)))
  if (length(nonblank) == 0) {
    return(character(0))
  }
  lines[nonblank[1]:nonblank[length(nonblank)]]
}

#' Render a `\section{Service syntax}` node's `\preformatted` body
#'
#' Pulls just the `\preformatted{}` block's text out, ignoring the
#' `\if{html}{\out{...}}` wrapper tags paws's generated sections put
#' around it.
#'
#' @param section_node A `\section` Rd node.
#' @param heading Markdown heading text to use (e.g. `"Service syntax"`).
#' @return Character vector of Markdown lines.
#' @export
render_rd_preformatted_section <- function(section_node, heading) {
  pre <- find_rd_child(section_node[[2]], "\\preformatted")
  code <- paste0(vapply(pre, as.character, character(1)), collapse = "")
  c(
    paste("##", heading),
    "",
    "```r",
    trim_blank_edges(strsplit(code, "\n")[[1]]),
    "```"
  )
}

#' Render a `\section{Operations}` node's `\tabular` body into a table
#'
#' Splits the `\tabular`'s flat child sequence into rows and cells on its
#' `\tab`/`\cr` separator tokens, then renders each row as a GFM pipe-table
#' line linking the operation name to its own page.
#'
#' @param section_node A `\section` Rd node whose body contains a
#'   `\tabular{ll}{...}` of `\link[=op]{op} \tab description \cr` rows.
#' @param alias_index See [render_client_rd()].
#' @return Character vector of Markdown lines (a GFM pipe table).
#' @export
render_rd_operations_section <- function(section_node, alias_index = NULL) {
  tab <- find_rd_child(section_node[[2]], "\\tabular")
  content <- tab[[2]]

  rows <- list()
  current_row <- list()
  current_cell <- list()
  for (i in seq_along(content)) {
    node <- content[[i]]
    tag <- attr(node, "Rd_tag")
    if (identical(tag, "\\tab")) {
      current_row[[length(current_row) + 1]] <- current_cell
      current_cell <- list()
    } else if (identical(tag, "\\cr")) {
      current_row[[length(current_row) + 1]] <- current_cell
      current_cell <- list()
      rows[[length(rows) + 1]] <- current_row
      current_row <- list()
    } else {
      current_cell[[length(current_cell) + 1]] <- node
    }
  }
  if (length(current_cell) > 0) {
    current_row[[length(current_row) + 1]] <- current_cell
    rows[[length(rows) + 1]] <- current_row
  }

  lines <- c("## Operations", "")
  for (j in seq_along(rows)) {
    cells <- vapply(
      rows[[j]],
      function(c) normalize_rd_prose(render_rd_inline(c, alias_index)),
      character(1)
    )
    lines <- c(lines, sprintf("|  %s  |  %s  |", cells[1], cells[2]))
    if (j == 1) lines <- c(lines, "|:---|:---|")
  }
  lines
}

#' Render an `\examples` node into an `## Examples` Markdown section
#'
#' Unwraps a `\dontrun{}` block if present, matching `rd2qmd`'s convention
#' of dropping the literal `## Not run:`/`## End(Not run)` text markers.
#'
#' @param node An `\examples` Rd node.
#' @return Character vector of Markdown lines.
#' @export
render_rd_examples <- function(node) {
  dontrun <- find_rd_child(node, "\\dontrun")
  body <- if (!is.null(dontrun)) dontrun else node
  code <- paste0(vapply(body, as.character, character(1)), collapse = "")
  c(
    "## Examples",
    "",
    "```r",
    trim_blank_edges(strsplit(code, "\n")[[1]]),
    "```"
  )
}
