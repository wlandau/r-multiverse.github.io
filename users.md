---
title: "Users"
---

## How to install a package from R-multiverse

R has built-in support for multiple repositories.
To add R-multiverse to your repository settings, a line can be added to your [`.Rprofile`](https://rstats.wtf/r-startup.html#rprofile) as follows.

For Community:

```r
options(repos = c("https://community.r-multiverse.org", getOption("repos")))
```

For Production:

*[Our first Production release is scheduled for 15 November 2024, and prior to that, a sample repository is available at <https://snapshot.r-multiverse.org/>]*
```r
options(repos = c("https://production.r-multiverse.org", getOption("repos")))
```

Then proceed to use `install.packages()` or `pak::pak()` etc. as you would normally.

## What does R-multiverse provide?

::: {.callout-tip collapse="true"}
## 1. A home for non-CRAN packages

Many R packages do not belong on CRAN. In particular, packages containing compiled code may require toolchains or binary downloads that fall outside of CRAN policy.

By [contributing](contributors.md) a package to R-multiverse, you may conveniently install the latest released versions of all these packages from a single repository location.
:::

::: {.callout-tip collapse="true"}
## 2. A guarantee of package availability

R-multiverse works seamlessly alongside CRAN.

A package may become unavailable on CRAN at any time due to its strict archival policy.

- Sometimes due to the archival of a dependency, and outside the maintainer's direct control.
- Situations can be temporary, but may take an extended time to resolve.

By [contributing](contributors.md) a package that you rely on, you can ensure it always remains available for your critical workflows.
:::

::: {.callout-tip collapse="true"}
## 3. A distribution channel direct from maintainers

Maintainers may use R-multiverse as a faster release channel, especially for packages under intensive development. 

CRAN is first and foremost an archival network, and its policy restricts the frequency of package updates.
R-multiverse allows maintainers to push critical updates or bug fixes directly to users.
:::
