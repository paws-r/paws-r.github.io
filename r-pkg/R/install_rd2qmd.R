# The rd2qmd release this package is validated against (see
# plans/adopt-rd2qmd.md). Bumping this is a deliberate, tested decision, not
# a "float to latest" dependency - a new release could change output in ways
# that need re-validating against the real paws corpus.
rd2qmd_release <- "v0.6.0"

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
#' @param force Reinstall even if a binary is already present at `path`.
#' @param version Release tag to install. Defaults to the version this
#'   package is validated against, overridable with
#'   `options(rd2qmd.version = ...)`.
#' @return Path to the installed binary, invisibly.
#' @export
install_rd2qmd <- function(
  os = system_os(),
  arch = system_arch(),
  path = rd2qmd_path(),
  force = FALSE,
  version = rd2qmd_version()
) {
  bin <- rd2qmd_bin_name(os)
  binary <- fs::path(path, bin)
  if (fs::file_exists(binary) && !force) {
    return(invisible(binary)) # already installed
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
  extracted_bin <- fs::dir_ls(extract_dir, recurse = TRUE, regexp = paste0(bin, "$"))[[1]]
  fs::file_move(extracted_bin, binary)
  fs::file_chmod(binary, "+x")
  invisible(binary)
}

rd2qmd_download_error <- function(url, version) {
  paste0(
    "Failed to download the rd2qmd binary from:\n  ", url, "\n\n",
    "If this asset has moved or ", version, " is no longer available, ",
    "either install rd2qmd yourself and point pawsdocs at it with\n",
    '  options(rd2qmd.dir = "<directory containing rd2qmd>")\n',
    "or supply a mirror with\n",
    '  options(rd2qmd.url = "<url of an rd2qmd release asset>")'
  )
}

rd2qmd_checksum_error <- function(asset, expected, actual) {
  sprintf(
    "Checksum mismatch for %s.\nExpected: %s\nActual:   %s\n\n%s",
    asset, expected, actual,
    "The download may be corrupted or tampered with - not installing it."
  )
}

# Options mirror the pattern used by https://github.com/cboettig/minioclient:
# rd2qmd.version / rd2qmd.dir / rd2qmd.url let a user pin a different
# release, install location, or mirror without touching code.
rd2qmd_version <- function() getOption("rd2qmd.version", rd2qmd_release)

rd2qmd_path <- function() {
  getOption("rd2qmd.dir", tools::R_user_dir("pawsdocs", "data"))
}

rd2qmd_asset_url <- function(asset, version) {
  mirror <- getOption("rd2qmd.url", NULL)
  if (!is.null(mirror)) {
    return(mirror)
  }
  sprintf(
    "https://github.com/eitsupi/rd2qmd/releases/download/%s/%s",
    version, asset
  )
}

# asset.sha256 files are "<hex digest> *<filename>" on one line - standard
# shasum/sha256sum format. `asset_url` is the exact URL the asset itself
# was downloaded from; its checksum lives at that same URL with ".sha256"
# appended.
rd2qmd_checksum <- function(asset_url) {
  con <- url(paste0(asset_url, ".sha256"))
  on.exit(close(con))
  sub("\\s.*$", "", readLines(con, n = 1))
}

# Translate R's platform identifiers into the Rust target triples rd2qmd's
# release assets are named with.
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

rd2qmd_bin_name <- function(os) if (identical(os, "windows")) "rd2qmd.exe" else "rd2qmd"

system_os <- function() {
  switch(
    Sys.info()[["sysname"]],
    Darwin = "darwin",
    Linux = "linux",
    Windows = "windows",
    stop("Unsupported OS for rd2qmd: ", Sys.info()[["sysname"]], call. = FALSE)
  )
}

# R.version$arch already reports "aarch64"/"x86_64", matching Rust triples
# directly - no remapping needed, unlike OS names.
system_arch <- function() R.version$arch
