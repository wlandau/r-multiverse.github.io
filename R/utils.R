snapshot <- function() {
  snapshots <- snapshots()
  dates <- as.Date(snapshots$snapshot)
  snapshots[dates == max(dates),, drop = FALSE]
}

snapshots <- function() {
  if (!is.null(cache[["snapshots"]])) {
    return(cache[["snapshots"]])
  }
  url <- "https://production.r-multiverse.org/snapshots.json"
  snapshots <- jsonlite::stream_in(gzcon(url(url)), verbose = FALSE)
  dates <- as.Date(snapshots$snapshot)
  snapshots <- snapshots[rev(order(dates)), ]
  cache[["snapshots"]] <- snapshots
  cache[["snapshots"]]
}

cache <- new.env(parent = emptyenv())
