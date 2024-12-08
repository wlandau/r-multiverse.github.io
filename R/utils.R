snapshot_date <- function() {
  year <- as.integer(format(Sys.Date(), "%Y"))
  grid <- expand.grid(
    year = as.character(c(year, year - 1L)),
    month = c("02", "05", "08", "11")
  )
  snapshots <- as.Date(sprintf("%s-%s-15", grid$year, grid$month))
  as.character(max(snapshots[snapshots <= Sys.Date()]))
}

snapshot_r <- function() {
  snapshot <- snapshot_date()
  versions <- get_r_versions()
  date <- max(versions$date[versions$date <= as.POSIXct(snapshot)])
  versions$version[versions$date == date]
}

get_r_versions <- function() {
  if (is.null(snapshot_envir$r_versions)) {
    snapshot_envir$r_versions <- rversions::r_versions()
  }
  snapshot_envir$r_versions
}

snapshot_envir <- new.env(parent = emptyenv())
