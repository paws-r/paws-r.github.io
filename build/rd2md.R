library(mirai)
#######################################
#######################################
dir <- "vendor/paws/paws/man"
temp_html_dir <- tempfile()
md_dir <- "build/mkdocs/docs/docs"

#######################################
#######################################
if (file.exists(md_dir)) fs::dir_delete(md_dir)
fs::dir_create(c(md_dir, temp_html_dir), recurse = TRUE)

# basic logger
log_info <- function(msg) {
  on.exit(flush.console())
  date_time <- strftime(Sys.time(), format = "%Y-%m-%d %H:%M:%S")
  log_msg <- sprintf("INFO %s: %s", date_time, msg)
  writeLines(log_msg)
}

#######################################
#######################################
build_long_rd <- function(long_doc = "vendor/paws/paws") {
  suppressMessages({
    roxygen2::update_collate(long_doc)
    roxygen2::roxygenize(long_doc, roclets = c("rd"))
  })
}

#######################################
#######################################
log_info("Build Rd docs")

# create Rd docs
build_long_rd()

log_info("Converting Rd to Markdown")
#######################################
#######################################
files <- list.files(dir)
# remove paws-package.Rd
files <- files[files != "paws-package.Rd"]

md_dir <- fs::path_abs(md_dir)
rd_files <- fs::path_abs(file.path(dir, files))
rd_files <- rd_files[fs::path_file(rd_files) != "reexports.Rd"]
addons <- c(
  "set_service_parameter.Rd",
  "paginate.Rd",
  "list_paginators.Rd",
  "paws_stream.Rd"
)
rd_files <- c(
  rd_files,
  fs::path_abs(
    file.path(
      "vendor/paws",
      "paws.common",
      "man",
      addons
    )
  )
)

#######################################
# Setup mirai
#######################################
cores <- parallel::detectCores()
log_info(sprintf("Assigning %s cores.", cores))
dd <- daemons(cores)

#######################################
# Setup Global Functions
#######################################
everywhere({
  find_and_replace <<- function(string, operator) {
    m <- regexpr(">[a-z0-9_]+<", string)
    found <- gsub(">|<", "", regmatches(string, m))
    gsub(
      found,
      sprintf('<a href="../%s_%s/"> %s </a>', operator, found, found),
      string
    )
  }

  html_table_to_list <<- function(lines) {
    # convert table to list
    idx <- grep("<table>|</table>", lines)[-1]
    idx_ranges <- split(idx, ceiling(seq_along(idx) / 2))
    idx_ranges <- lapply(idx_ranges, \(x) x[1]:x[2])

    for (idx_range in idx_ranges) {
      lines[idx_range] <- gsub("<table>", "<dl>", lines[idx_range])
      lines[idx_range] <- gsub("</table>", "</dl>", lines[idx_range])

      lines[idx_range] <- gsub("<td><code", "<dt><code", lines[idx_range])
      lines[idx_range] <- gsub(
        '<td style="text-align: left;"><a',
        "<dt><a",
        lines[idx_range]
      )

      lines[idx_range] <- gsub("</code></td>", "</code></dt>", lines[idx_range])
      lines[idx_range] <- gsub("</a></td>", "</a></dt>", lines[idx_range])

      lines[idx_range] <- gsub("<td><p>", "<dd><p>", lines[idx_range])
      lines[idx_range] <- gsub(
        '<td style="text-align: left;">',
        "<dd>",
        lines[idx_range]
      )

      lines[idx_range] <- gsub("</p></td>", "</p></dd>", lines[idx_range])
      lines[idx_range] <- gsub("</td>", "</dd>", lines[idx_range])

      rm_tbody <- grep("<tbody>|</tbody>", lines[idx_range])
      rm_tr <- grep("<tr|</tr>", lines[idx_range])
      rm_colgp <- grep("<colgroup>|</colgroup>", lines[idx_range])
      if (length(rm_colgp) > 0) {
        rm_colgp <- rm_colgp[1]:rm_colgp[2]
      }
      remove <- c(rm_tbody, rm_tr, rm_colgp)
      lines[idx_range][remove] <- "REMOVE LINE"
    }
    return(
      Filter(
        function(x) {
          x != "REMOVE LINE"
        },
        lines
      )
    )
  }

  wrap_r_code <<- function(lines) {
    lines <- wrap_r_usage(lines)
    lines <- wrap_r_service_syntax(lines)
    lines <- wrap_r_value(lines)
    lines <- wrap_r_request_syntax(lines)
    lines <- wrap_r_examples(lines)
    return(lines)
  }

  wrap_r_usage <<- function(lines) {
    start <- (grep("### Usage", lines, perl = T) + 1)
    end <- (grep("### Arguments", lines, perl = T) - 1)
    if (length(end) == 0) {
      end <- (grep("### Value", lines, perl = T) - 1)
    }
    if (length(start) > 0) {
      idx_range <- start:end
      lines[idx_range] <- gsub("^[ ]{4}", "", lines[idx_range], perl = T)
      lines[start] <- "```r"
      lines[end] <- "```"
    }
    return(lines)
  }

  wrap_r_value <<- function(lines) {
    start <- grep("### Value", lines, perl = T)
    end <- (grep("### Request syntax", lines, perl = T) - 1)
    if (length(end) == 0) {
      end <- (grep("### Service syntax", lines, perl = T) - 1)
    }
    if (length(end) == 0) {
      end <- (grep("### Examples", lines, perl = T) - 1)
    }
    if (length(start) > 0) {
      if (length(end) == 0) end <- length(lines) + 1
      idx_range <- start:end
      # format return value
      code_start <- grep("^[ ]{4}list\\(", lines[idx_range], perl = T)
      if (length(code_start) > 0) {
        lines[idx_range][code_start - 1] <- "```r"
        lines[end] <- "```"
      }
      lines[idx_range] <- gsub("^[ ]{4}", "", lines[idx_range], perl = T)
    }
    return(lines)
  }

  wrap_r_request_syntax <<- function(lines) {
    # format function syntax
    start <- (grep("### Request syntax", lines, perl = T) + 1)
    end <- (grep("### Examples", lines, perl = T) - 1)
    if (length(end) == 0) {
      end <- length(lines) + 1
    }
    if (length(start) > 0) {
      idx_range <- start:end
      lines[idx_range] <- gsub("^[ ]{4}", "", lines[idx_range], perl = T)
      lines[start] <- "```r"
      lines[end] <- "```"
    }
    return(lines)
  }

  wrap_r_examples <<- function(lines) {
    start <- (grep("### Examples", lines, perl = T) + 1)
    end <- (grep("## End\\(Not run\\)", lines, perl = T) + 1)
    if (length(end) == 0) {
      end <- length(lines) + 1
    }
    if (length(start) > 0) {
      idx_range <- start:end
      lines[idx_range] <- gsub("^[ ]{4}", "", lines[idx_range], perl = T)
      lines[start] <- "```r"
      lines[end] <- "```"
    }
    return(lines)
  }

  wrap_r_service_syntax <<- function(lines) {
    # format function syntax
    start <- (grep("### Service syntax", lines, perl = T) + 1)
    end <- (grep("### Operations", lines, perl = T) - 1)
    if (length(start) > 0) {
      idx_range <- start:end
      lines[idx_range] <- gsub("^[ ]{4}", "", lines[idx_range], perl = T)
      lines[start] <- "```r"
      lines[end] <- "```"
    }
    return(lines)
  }
})

#######################################
#######################################

rd_to_md <- function(rd_file, html_dir, md_dir) {
  # get rd name and not use alias
  lines <- readLines(rd_file, n = 5)
  name <- lines[grep("\\\\name\\{", lines, perl = TRUE)]
  name <- gsub("\\\\name\\{|\\}", "", name)

  html_file <- fs::path(html_dir, paste(name, "html", sep = "."))
  md_file <- fs::path(md_dir, paste(name, "md", sep = "."))

  tools::Rd2HTML(rd_file, html_file)

  # delete rd file
  fs::file_delete(rd_file)

  rmarkdown::pandoc_convert(
    html_file,
    to = "markdown_strict",
    output = md_file
  )

  # delete html file
  fs::file_delete(html_file)

  md <- readLines(md_file)
  # add url links
  if (!grepl("_", basename(md_file))) {
    idx <- grep('style=\"text-align: left;\">[a-z0-9_]+</td>', md)
    operator <- gsub("\\.md$", "", basename(md_file))
    for (j in idx) {
      md[[j]] <- find_and_replace(md[[j]], operator)
    }
  }

  md <- html_table_to_list(md)
  md <- wrap_r_code(md)
  writeLines(md, md_file)
}

#######################################
#######################################
mm <- mirai_map(
  rd_files,
  rd_to_md,
  .args = list(html_dir = temp_html_dir, md_dir = md_dir)
)[.progress]

fs::dir_delete(temp_html_dir)
