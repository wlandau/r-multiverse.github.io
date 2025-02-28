snapshot_date <- function() {
  if (!is.null(cache[["snapshot_date"]])) {
    return(cache[["snapshot_date"]])
  }
  path <- file.path(
    "https://raw.githubusercontent.com",
    "r-multiverse",
    "production",
    "refs",
    "heads",
    "main",
    "date_snapshot.txt"
  )
  cache[["snapshot_date"]] <- readLines(url(path))
  cache[["snapshot_date"]]
}

staging_date <- function() {
  if (!is.null(cache[["staging_date"]])) {
    return(cache[["staging_date"]])
  }
  path <- file.path(
    "https://raw.githubusercontent.com",
    "r-multiverse",
    "production",
    "refs",
    "heads",
    "main",
    "date_staging_start.txt"
  )
  cache[["staging_date"]] <- readLines(url(path))
  cache[["staging_date"]]
}

snapshot_r <- function() {
  if (!is.null(cache[["snapshot_r"]])) {
    return(cache[["snapshot_r"]])
  }
  path <- file.path(
    "https://raw.githubusercontent.com",
    "r-multiverse",
    "production",
    "refs",
    "heads",
    "main",
    "r_version_full.txt"
  )
  cache[["snapshot_r"]] <- readLines(url(path))
  cache[["snapshot_r"]]
}

cache <- new.env(parent = emptyenv())
