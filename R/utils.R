snapshot_date <- function() {
  path <- file.path(
    "https://raw.githubusercontent.com",
    "r-multiverse",
    "production",
    "refs",
    "heads",
    "main",
    "date_snapshot.txt"
  )
  readLines(url(path))
}

snapshot_r <- function() {
  path <- file.path(
    "https://raw.githubusercontent.com",
    "r-multiverse",
    "production",
    "refs",
    "heads",
    "main",
    "r_version_full.txt"
  )
  readLines(url(path))
}
