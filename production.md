---
title: "Production"
---

## Beyond Community

Available at <https://production.r-multiverse.org>, the Production repository is designed to go one step beyond Community.

It is comprised only of Community packages that pass additional checks, including `R CMD check` on all major platforms, ensuring a cohort of packages that work seamlessly together.

So whilst Community will always offer the latest packages as released by maintainers, only by passing these additional quality controls will they make it to Production.

## A Snapshot Model for Production

A true production experience calls for an alternative distribution model.
Instead of adopting continuous rolling deployment like CRAN, we provide snapshots of fixed package versions.

This has the advantage that:

1. All packages within a snapshot are guaranteed to work with each other (at any one point in time on CRAN, there will be packages that fail checks but are within grace periods and have not yet been updated or archived).
2. Using fixed package versions aids reproducibility.
3. Does not require constant updates to the latest package versions over the internet.

We take quarterly snapshots on the 15th of each month of February, May, August, and November.

## The Production Staging Process

Before each quarterly release, packages go through a one-month 'staging' process, which helps ensure packages continue to meet the high standards required of Production.

Packages enter into the Staging repository at <https://staging.r-multiverse.org>.

- For those with passing checks, the package version is frozen.
  + Even if another package release is made and Community updates, the version in Staging stays the same.

- Packages with failing checks will continue to update from Community if a new release is made.

This process helps maintainers to fix bugs, whilst minimizing the chances of last minute issues affecting large cohorts of packages.

Staging opens on the 15th of each month of January, April, July, and October.

## Current Snapshot

The current (November 2024) snapshot release is available at <https://production.r-multiverse.org>.

This repository provides:

- Source files
- Windows: R-4.4 binary, R-4.3 binary
- Mac x86: R-4.4 binary, R-4.3 binary
- Mac arm64: R-4.4 binary, R-4.3 binary

It may be used in R repository settings or directly as the 'repos' argument to `install.packages()`.

The currently available packages may be queried using:

```r
available.packages(repos = "https://production.r-multiverse.org")
```
