#' Wrap R code sections of a converted Rd-to-Markdown file in fences
#'
#' Applies [wrap_r_usage()], [wrap_r_service_syntax()], [wrap_r_value()],
#' [wrap_r_request_syntax()] and [wrap_r_examples()] in turn.
#'
#' @param lines Character vector of Markdown lines.
#' @return Character vector of Markdown lines with code fences inserted.
#' @export
wrap_r_code <- function(lines) {
  lines <- wrap_r_usage(lines)
  lines <- wrap_r_service_syntax(lines)
  lines <- wrap_r_value(lines)
  lines <- wrap_r_request_syntax(lines)
  lines <- wrap_r_examples(lines)
  lines
}

#' Wrap the "Usage" section in a code fence
#'
#' @param lines Character vector of Markdown lines.
#' @return Character vector of Markdown lines.
#' @export
wrap_r_usage <- function(lines) {
  start <- (grep("### Usage", lines, perl = TRUE) + 1)
  end <- (grep("### Arguments", lines, perl = TRUE) - 1)
  if (length(end) == 0) {
    end <- (grep("### Value", lines, perl = TRUE) - 1)
  }
  if (length(start) > 0) {
    idx_range <- start:end
    lines[idx_range] <- gsub("^[ ]{4}", "", lines[idx_range], perl = TRUE)
    lines[start] <- "```r"
    lines[end] <- "```"
  }
  lines
}

#' Wrap the "Value" section in a code fence
#'
#' Only fences the section when it contains a `list(...)` literal (a
#' structured return value); a plain prose description is left as-is
#' beyond having its indentation stripped.
#'
#' @param lines Character vector of Markdown lines.
#' @return Character vector of Markdown lines.
#' @export
wrap_r_value <- function(lines) {
  start <- grep("### Value", lines, perl = TRUE)
  end <- (grep("### Request syntax", lines, perl = TRUE) - 1)
  if (length(end) == 0) {
    end <- (grep("### Service syntax", lines, perl = TRUE) - 1)
  }
  if (length(end) == 0) {
    end <- (grep("### Examples", lines, perl = TRUE) - 1)
  }
  if (length(start) > 0) {
    if (length(end) == 0) end <- length(lines) + 1
    idx_range <- start:end
    # format return value
    code_start <- grep("^[ ]{4}list\\(", lines[idx_range], perl = TRUE)
    if (length(code_start) > 0) {
      lines[idx_range][code_start - 1] <- "```r"
      lines[end] <- "```"
    }
    # end may still be one past the end of lines (no section follows the
    # Value section and it wasn't fenced above) - don't read/write past
    # the vector, which would otherwise silently append a trailing NA.
    idx_range <- idx_range[idx_range <= length(lines)]
    lines[idx_range] <- gsub("^[ ]{4}", "", lines[idx_range], perl = TRUE)
  }
  lines
}

#' Wrap the "Request syntax" section in a code fence
#'
#' @param lines Character vector of Markdown lines.
#' @return Character vector of Markdown lines.
#' @export
wrap_r_request_syntax <- function(lines) {
  # format function syntax
  start <- (grep("### Request syntax", lines, perl = TRUE) + 1)
  end <- (grep("### Examples", lines, perl = TRUE) - 1)
  if (length(end) == 0) {
    end <- length(lines) + 1
  }
  if (length(start) > 0) {
    idx_range <- start:end
    lines[idx_range] <- gsub("^[ ]{4}", "", lines[idx_range], perl = TRUE)
    lines[start] <- "```r"
    lines[end] <- "```"
  }
  lines
}

#' Wrap the "Examples" section in a code fence
#'
#' @param lines Character vector of Markdown lines.
#' @return Character vector of Markdown lines.
#' @export
wrap_r_examples <- function(lines) {
  start <- (grep("### Examples", lines, perl = TRUE) + 1)
  end <- (grep("## End\\(Not run\\)", lines, perl = TRUE) + 1)
  if (length(end) == 0) {
    end <- length(lines) + 1
  }
  if (length(start) > 0) {
    idx_range <- start:end
    lines[idx_range] <- gsub("^[ ]{4}", "", lines[idx_range], perl = TRUE)
    lines[start] <- "```r"
    lines[end] <- "```"
  }
  lines
}

#' Wrap the "Service syntax" section in a code fence
#'
#' @param lines Character vector of Markdown lines.
#' @return Character vector of Markdown lines.
#' @export
wrap_r_service_syntax <- function(lines) {
  # format function syntax
  start <- (grep("### Service syntax", lines, perl = TRUE) + 1)
  end <- (grep("### Operations", lines, perl = TRUE) - 1)
  if (length(start) > 0) {
    idx_range <- start:end
    lines[idx_range] <- gsub("^[ ]{4}", "", lines[idx_range], perl = TRUE)
    lines[start] <- "```r"
    lines[end] <- "```"
  }
  lines
}
