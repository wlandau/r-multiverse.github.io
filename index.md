---
title: "R-multiverse"
---

R-multiverse is a general-purpose R package repository system with
[transparent governance](policies.md) and open source infrastructure.
R-multiverse provides:

1. A home for packages that fall outside the
[CRAN Repository Policy](https://cran.r-project.org/web/packages/policies.html).
2. Direct and timely distribution of package releases.
3. Assurance of package quality for production scenarios.

## R-multiverse repositories

R-multiverse hosts two R package repositories:

1. [Community](community.md): an open, inclusive, community-curated repository
of R package releases pulled directly from their maintainers via GitHub and GitLab.
2. [Production](production.md): a quarterly snapshot from [Community](community.md)
of releases which pass transparent automated checks.

[Community](community.md) updates continuously, and [Production](production.md) updates on the following days each year:

* February 15
* May 15
* August 15
* November 15

## Installing packages

Each R-multiverse repository has a URL for the `repos` argument of `install.packages()`.
For example, to install [`polars`](https://pola-rs.github.io/r-polars/) from [Community](community.md):

```r
install.packages(
  "polars",
  repos = c("https://community.r-multiverse.org", getOption("repos"))
)
```

and from [Production](production.md):

```r
install.packages(
  "polars",
  repos = c("https://production.r-multiverse.org", getOption("repos"))
)
```

## Other repositories

R-multiverse does not replace CRAN.
In fact, most R-multiverse packages depend on CRAN packages.
In production environments,
[Production](production.md) snapshots should be deployed alongside
the CRAN dependencies from the same day that the R-multiverse snapshot was created.

## Infrastructure

R-multiverse is powered by [R-universe](https://r-universe.dev/), [GitHub Actions](https://github.com/features/actions),
and the public source code repositories in the [R-multiverse GitHub organization](https://github.com/r-multiverse).

## Support

R-multiverse is supported by an [R Consortium](https://r-consortium.org) ISC grant and originated from the R Consortium [Repositories Working Group](https://github.com/RConsortium/r-repositories-wg).
