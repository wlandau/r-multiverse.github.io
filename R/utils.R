date_latest_snapshot <- function() {
  year <- as.integer(format(Sys.Date(), "%Y"))
  grid <- expand.grid(
    year = as.character(c(year, year - 1L)),
    month = c("02", "05", "08", "11")
  )
  snapshots <- as.Date(sprintf("%s-%s-15", grid$year, grid$month))
  as.character(max(snapshots[snapshots <= Sys.Date()]))
}
