---
title: "Production repository"
---

The Production repository comprises a subset of [Community](community.md) package releases which are mutually compatible and meet a high standard of quality.

## Checks

To reach Production, a package release must pass the following R-multiverse checks:

1. `R CMD check` must pass (no errors or warnings) on Mac (R-release), Windows (R-release), Linux (R-devel).
1. The release must not have an active [security advisory](https://github.com/RConsortium/r-advisory-database).
1. The `DESCRIPTION` file must not have a `Remotes:` field.
1. The current version number must be greater than the version numbers of past releases of the same package.
1. The release must not strongly depend (`Depends:`, `Imports:`, `LinkingTo:`) on an R-multiverse package with any any of the above issues.
^[However, an R-multiverse package can strongly depend a package from CRAN, regardless of CRAN check status, as long as that package remains available on CRAN.]

## Snapshots

Once every 3 months, Production updates all its packages simultaneously and deploys a snapshot.
Production does not add, remove, or update packages at any other time.
Packages change slowly in Production, but they are mutually compatible.
^[And compatible with versions of dependencies that were on CRAN at the time of the snapshot.]

## Staging

Rather than pull releases directly from [Community](community.md),
Production draws from an intermediate repository called [Staging](https://staging.r-multiverse.org).
The [Staging](https://staging.r-multiverse.org) repository is active during the month-long period prior to each snapshot.
During that time, [Staging](https://staging.r-multiverse.org) stabilizes the Production candidates
while still allowing bug fixes.

While [Staging](https://staging.r-multiverse.org) is active, if a package is failing one or more [R-multiverse checks](#checks),
then new releases of that package are continuously pulled from [Community](community.md).
Otherwise, [Staging](https://staging.r-multiverse.org) freezes the package at its current release
and no longer accepts updates from [Community](community.md).
This freeze prevents new problems in reverse dependencies downstream.

At snapshot time, Production creates the snapshot from the subset of package releases in
[Staging](https://staging.r-multiverse.org) which pass [R-multiverse checks](#checks).
A month after the snapshot, [Staging](https://staging.r-multiverse.org) resets (removes all its packages)
so that an entirely new set of [Community](community.md) releases can become candidates for Production.

## Schedule

Every year, [Staging](https://staging.r-multiverse.org) and Production follow a schedule given by the dates below.

| Quarter | [Staging](https://staging.r-multiverse.org) resets | [Staging](https://staging.r-multiverse.org) becomes active | Production snapshot |
|---|---|---|---|
| Q1 | December 15 | January 15 | February 15 |
| Q2 | March 15 | April 15 | May 15 |
| Q3 | June 15 | July 15 | August 15 |
| Q4 | September 15 | October 15 | November 15 |

## Users

Users can install releases from the current Production snapshot
by setting the `repos` argument in `install.packages()`.
For example:

```r
install.packages(
  "polars",
  repos = c("https://production.r-multiverse.org", getOption("repos"))
)
```
