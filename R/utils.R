snapshot <- function() {
  if (!is.null(cache[["snapshot"]])) {
    return(cache[["snapshot"]])
  }
  url <- "https://production.r-multiverse.org/snapshots.json"
  snapshot <- jsonlite::stream_in(gzcon(url(url)), verbose = FALSE)
  
  # testing:
  snapshot$snapshot <- Sys.Date()
  snapshot$dependency_freeze <- snapshot$reset
  snapshot$candidate_freeze <- snapshot$staging
  
  
  dates <- as.Date(snapshot$snapshot)
  date <- max(dates[dates <= Sys.Date()])
  snapshot <- snapshot[snapshot$snapshot == date,, drop = FALSE]
  cache[["snapshot"]] <- snapshot
  cache[["snapshot"]]
}

cache <- new.env(parent = emptyenv())
