#' Write a timestamped INFO log line
#'
#' @param msg Character scalar message to log.
#' @return `msg`, invisibly.
#' @importFrom utils flush.console
#' @export
log_info <- function(msg) {
  on.exit(flush.console())
  date_time <- strftime(Sys.time(), format = "%Y-%m-%d %H:%M:%S")
  log_msg <- sprintf("INFO %s: %s", date_time, msg)
  writeLines(log_msg)
  invisible(msg)
}
