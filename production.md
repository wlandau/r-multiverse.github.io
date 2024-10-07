---
title: "Production"
---

## Beyond Community

Available at <https://production.r-multiverse.org>, the Production repository is designed to go one step beyond Community.

It is comprised only of Community packages that pass additional checks, including `R CMD check` on all major platforms, ensuring a cohort of packages that work seamlessly togther.

So whilst Community will always offer the latest packages, as released by maintainers, they will only make it to Production if they pass these additional quality controls.

## A Snapshot Model for Production

But we take it one step further.

Instead of the continuous rolling deployment model that CRAN provides, we provide snapshots of fixed package versions.
This has the advantage that:

1. All packages within a snapshot are guaranteed to work with each other.
 + At any one point in time on CRAN, there will be packages that fail checks but are within grace periods and have not yet been updated or archived.
2. Using fixed package versions aids reproducibility.
3. Suited to environments without the ability to update over the internet.

We take quarterly snapshots on the 15th of each month in May, August, November and February.

*[Our first Production release is scheduled for 15 November 2024, and prior to that, a sample repository is available at <https://r-multiverse.org/snapshot>]*

## The Production Staging Process

Before each quarterly release, packages go through a one-month 'staging' process, which helps ensure packages continue to meet the high standards required of Production.

Packages enter into the Staging repository at <https://staging.r-multiverse.org/>.
For those with passing checks, the package version is frozen.

- Even if another package release is made and Community updates, the version in Staging remains the same.

Packages with failing checks, however, will continue to update from Community if a new release is made.

This process helps maintainers to fix bugs, whilst minimizing the chances of last minute issues affecting large cohorts of packages.

Staging opens on the 15th of each month in April, July, October and January.

## Current Snapshot

The current snapshot release will be available at <https://production.r-multiverse.org>.

This repository provides:

- Source files
- Windows: R-4.4 binary, R-4.3 binary
- Mac x86: R-4.4 binary, R-4.3 binary
- Mac arm64: R-4.4 binary, R-4.3 binary

It may be used in R repository settings or directly as the 'repos' argument to `install.packages()`.
To query available packages:

```r
available.packages(repos = "https://production.r-multiverse.org")
```
*[Our first Production release is scheduled for 15 November 2024, and prior to that, a sample repository is available at <https://r-multiverse.org/snapshot>]*
