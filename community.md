---
title: "Community repository"
---

## Contributors

The R-multiverse Community repository democratizes the distribution and deployment of R package releases.
Anyone can [contribute](contributors.md) packages to Community via GitHub.
After a one-time registration process for a package,
the package maintainer directly controls distribution through the
[release](https://docs.github.com/en/repositories/releasing-projects-on-github/managing-releases-in-a-repository)
system on GitHub/GitLab.
Each new
[release](https://docs.github.com/en/repositories/releasing-projects-on-github/managing-releases-in-a-repository)
automatically deploys to the repository without any manual intervention.
^[This maintainer-driven experience was made possible by the incredible infrastructure of [rOpenSci's R-universe system](https://ropensci.org/r-universe/).]

## Users

Users can navigate to <https://community.r-multiverse.org> to learn more about packages in Community.
To install a package, set the `repos` argument in `install.packages()`.
For example:

```r
install.packages(
  "polars",
  repos = c("https://community.r-multiverse.org", getOption("repos"))
)
```

## Limitations

A traditional software version cycle begins with the development phase, where bugs are identified and fixed, and ends with the production phase, which promises a seamless user experience.
Community aims at a space just before production, commonly referred to as Quality Assurance (QA).
This means that:

1. Each package release has the full endorsement of its own maintainer.
R-multiverse always provides a version that its developer chose to distribute for general use.
2. The user is still responsible for judging whether a package is appropriate to use.
Some releases may still have issues, as indicated by their check results, publicly available at <https://community.r-multiverse.org>.

## Personal universes

You can deploy a package through a personal or [organization](https://docs.github.com/en/organizations/collaborating-with-groups-in-organizations/about-organizations)-level
universe even if the package also is part of R-multiverse.
In fact, a personal universe may help reproduce and diagnose `R CMD check` issues
as you prepare a package for [Production](production.md).
