#' @importFrom tools R_user_dir
#' @importFrom fs path file_exists file_temp dir_create
#' @importFrom utils download.file unzip
#' @importFrom digest digest
NULL

#' Install the rd2qmd binary
#'
#' Downloads the platform-appropriate `rd2qmd` release asset from
#' <https://github.com/eitsupi/rd2qmd>, verifies it against the published
#' SHA-256 checksum, and extracts the binary into `path`.
#'
#' @param os,arch Operating system / architecture; default to the current
#'   machine's.
#' @param path Destination directory for the binary. Defaults to
#'   `tools::R_user_dir("pawsdocs", "data")`, overridable with
#'   `options(rd2qmd.dir = ...)`.
#' @param force Reinstall even if a binary matching `version` is already
#'   present at `path`.
#' @param version Release tag to install. Defaults to `"latest"`, which
#'   resolves to the newest full release on GitHub; pass an explicit tag
#'   (e.g. `"0.6.0"`) to pin a specific release instead.
#' @return Path to the installed binary, invisibly.
#' @export
install_rd2qmd <- function(
  os = system_os(),
  arch = system_arch(),
  path = rd2qmd_path(),
  force = FALSE,
  version = "latest"
) {
  if (identical(version, "latest")) {
    version <- rd2qmd_latest_version()
  }
  bin <- rd2qmd_bin_name(os)
  binary <- fs::path(path, bin)
  if (fs::file_exists(binary) && !force) {
    installed <- sprintf("v%s", rd2qmd_version(path, os = os))
    if (identical(installed, version)) {
      log_info("Already installed latest rd2qmd version")
      return(invisible(binary))
    }
    log_info(sprintf("Upgrading rd2qmd %s -> %s", installed, version))
  }
  fs::dir_create(path)

  target <- rd2qmd_target(os, arch)
  ext <- if (identical(os, "windows")) "zip" else "tar.xz"
  asset <- sprintf("rd2qmd-%s.%s", target, ext)
  url <- rd2qmd_asset_url(asset, version)

  # Download beside the destination (same filesystem, so the later move is
  # atomic) rather than onto it: a failed or truncated download must not
  # leave something behind that later looks like an installed binary.
  tmp <- fs::path(path, paste0(asset, ".download"))
  on.exit(fs::file_delete(tmp), add = TRUE)
  status <- tryCatch(
    utils::download.file(url, destfile = tmp, mode = "wb", quiet = TRUE),
    error = function(e) 1L
  )
  if (!identical(as.integer(status), 0L) || !fs::file_exists(tmp)) {
    stop(rd2qmd_download_error(url, version), call. = FALSE)
  }

  # rd2qmd publishes a checksum per asset at "<asset url>.sha256" - derive
  # it from the URL actually used (not by re-resolving `asset` through
  # rd2qmd_asset_url() again), so a custom options(rd2qmd.url = ...) mirror
  # still gets checked against its own ".sha256" companion rather than
  # against the un-suffixed asset URL verbatim.
  expected <- rd2qmd_checksum(url)
  actual <- digest::digest(tmp, algo = "sha256", file = TRUE)
  if (!identical(actual, expected)) {
    stop(rd2qmd_checksum_error(asset, expected, actual), call. = FALSE)
  }

  extract_dir <- fs::file_temp()
  fs::dir_create(extract_dir)
  if (ext == "zip") {
    utils::unzip(tmp, exdir = extract_dir)
  } else {
    utils::untar(tmp, exdir = extract_dir)
  }
  extracted_bin <- fs::dir_ls(
    extract_dir,
    recurse = TRUE,
    regexp = paste0(bin, "$")
  )[[1]]
  fs::file_move(extracted_bin, binary)
  fs::file_chmod(binary, "+x")
  invisible(binary)
}

rd2qmd_download_error <- function(url, version) {
  paste0(
    "Failed to download the rd2qmd binary from:\n  ",
    url,
    "\n\n",
    "If this asset has moved or ",
    version,
    " is no longer available, ",
    "either install rd2qmd yourself and point pawsdocs at it with\n",
    '  options(rd2qmd.dir = "<directory containing rd2qmd>")\n',
    "or supply a mirror with\n",
    '  options(rd2qmd.url = "<url of an rd2qmd release asset>")'
  )
}

rd2qmd_checksum_error <- function(asset, expected, actual) {
  sprintf(
    "Checksum mismatch for %s.\nExpected: %s\nActual:   %s\n\n%s",
    asset,
    expected,
    actual,
    "The download may be corrupted or tampered with - not installing it."
  )
}

# Options mirror the pattern used by https://github.com/cboettig/minioclient:
# rd2qmd.dir / rd2qmd.url let a user pin a different install location or
# mirror without touching code.
rd2qmd_path <- function() {
  getOption("rd2qmd.dir", tools::R_user_dir("pawsdocs", "data"))
}

#' Report the installed rd2qmd binary's version
#'
#' Runs `rd2qmd --version` and parses its output, rather than trusting
#' whatever `version` [install_rd2qmd()] was last called with - this is what's
#' actually sitting at `path` right now.
#'
#' @param path Directory to look for the binary in. Defaults to
#'   `rd2qmd_path()`.
#' @param os Operating system; defaults to the current machine's. Only
#'   affects the binary name (`.exe` on Windows).
#' @return Character Versions, or `NA_character_`
#'   if no binary is installed at `path`.
#' @export
rd2qmd_version <- function(path = rd2qmd_path(), os = system_os()) {
  binary <- fs::path(path, rd2qmd_bin_name(os))
  if (!fs::file_exists(binary)) {
    return(NA_character_)
  }
  out <- processx::run(binary, "--version")$stdout
  m <- regmatches(out, regexpr("[0-9]+\\.[0-9]+\\.[0-9]+", out))
  if (length(m) == 0 || !nzchar(m)) {
    stop(
      "Could not parse a version number from `",
      binary,
      " --version`.",
      call. = FALSE
    )
  }
  package_version(m)
}

# GitHub's "latest release" API (rather than /tags) because it already
# excludes drafts and pre-releases - the same release GitHub's web UI badges
# as "Latest". Parsed with a regex instead of a JSON package to avoid adding
# a dependency just for one field.
rd2qmd_latest_version <- function() {
  con <- url(
    "https://api.github.com/repos/eitsupi/rd2qmd/releases/latest",
    headers = c(Accept = "application/vnd.github+json")
  )
  body <- tryCatch(
    paste(readLines(con, warn = FALSE), collapse = "\n"),
    error = function(e) {
      stop(
        "Failed to look up the latest rd2qmd release from GitHub:\n  ",
        conditionMessage(e),
        call. = FALSE
      )
    },
    finally = close(con)
  )
  m <- regmatches(
    body,
    regexpr('"tag_name"[[:space:]]*:[[:space:]]*"[^"]+"', body)
  )
  if (length(m) == 0 || !nzchar(m)) {
    stop(
      "Could not find a tag_name in the GitHub releases/latest response.",
      call. = FALSE
    )
  }
  version <- sub('.*"tag_name"[[:space:]]*:[[:space:]]*"([^"]+)".*', "\\1", m)
  return(version)
}

rd2qmd_asset_url <- function(asset, version) {
  mirror <- getOption("rd2qmd.url", NULL)
  if (!is.null(mirror)) {
    return(mirror)
  }
  sprintf(
    "https://github.com/eitsupi/rd2qmd/releases/download/%s/%s",
    version,
    asset
  )
}

rd2qmd_checksum <- function(asset_url) {
  con <- url(paste0(asset_url, ".sha256"))
  on.exit(close(con))
  sub("\\s.*$", "", readLines(con, n = 1))
}

rd2qmd_target <- function(os, arch) {
  triple <- switch(
    os,
    darwin = "apple-darwin",
    linux = "unknown-linux-gnu",
    windows = "pc-windows-msvc",
    stop("Unsupported OS for rd2qmd: ", os, call. = FALSE)
  )
  sprintf("%s-%s", arch, triple)
}

rd2qmd_bin_name <- function(os) {
  if (identical(os, "windows")) "rd2qmd.exe" else "rd2qmd"
}

system_os <- function() {
  switch(
    Sys.info()[["sysname"]],
    Darwin = "darwin",
    Linux = "linux",
    Windows = "windows",
    stop("Unsupported OS for rd2qmd: ", Sys.info()[["sysname"]], call. = FALSE)
  )
}

system_arch <- function() R.version$arch
