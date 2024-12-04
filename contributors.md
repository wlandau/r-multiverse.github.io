---
title: "Contributors"
---

This page explains how to contribute packages to R-multiverse.

## Preparation

[R-multiverse policies](policies.md) govern all forms of participation in R-multiverse,
including package contributions.
Administrators, moderators, and contributors are all subject to the terms therein.
The [review policy](review.md) specifically governs package contribution and review.

In addition, R-multiverse pulls R packages directly from
[releases](https://docs.github.com/en/repositories/releasing-projects-on-github/about-releases) on GitHub and GitLab.
Before contributing a package to R-multiverse, please ensure it is available
in a public GitHub/GitLab source code repository with at least one
[release](https://docs.github.com/en/repositories/releasing-projects-on-github/about-releases) ([example](https://github.com/pola-rs/r-polars/releases/tag/v0.21.0)).

## Registration

To register a package with R-multiverse:

1. Navigate to <https://github.com/r-multiverse/contributions>.
1. Contribute a [package listing](https://github.com/r-multiverse/contributions/tree/main/packages) via
[GitHub pull request](https://docs.github.com/en/pull-requests/collaborating-with-pull-requests/proposing-changes-to-your-work-with-pull-requests/about-pull-requests).

Watch this 1-minute video to learn how:

{{< video https://vimeo.com/923333903 title="R-multiverse contribution tutorial" >}}

### Package listings

A package listing is a text file in <https://github.com/r-multiverse/contributions/tree/main/packages>
which points to the home of the package on GitHub/GitLab.
The file name of each listing is the name of the package.
In most cases, the file itself contains the package URL on GitHub or GitLab ([example](https://github.com/r-multiverse/contributions/blob/main/packages/polars)).
But if the package is a subdirectory of the GitHub/GitLab repository,
you may instead write custom JSON list with fields `package`, `url`, `subdir`, and `branch: "*release"` ([example](https://github.com/r-multiverse/contributions/blob/main/packages/arrow)).

### Pull request review

An automated process periodically scans and reviews each new pull request to <https://github.com/r-multiverse/contributions>.
Depending on the automated checks, the bot either merges the pull request
or flags it for manual review by a [moderator](governance.md#moderator).
Some moderators only review packages specific to a subject matter area,
so please consider mentioning a [topic](https://r-multiverse.org/topics/index.html)
in the title of the pull request.

## Community

After registration, the latest release of the package will
automatically appear in the [Community](community.md) repository.
[GitHub Actions](https://github.com/features/actions) workflows periodically
read all the [package listings](https://github.com/r-multiverse/contributions/tree/main/packages),
generate an [R-universe](https://r-universe.dev) [`packages.json`](https://github.com/r-multiverse/community/blob/main/packages.json) file,
and host the [Community](community.md) repository as a [universe](https://r-universe.dev).
The [Community](community.md) repository automatically distributes new releases
that the package maintainer 
[creates on GitHub](https://docs.github.com/en/repositories/releasing-projects-on-github/about-releases)/[GitLab](https://docs.gitlab.com/ee/user/project/releases/).

## Production



## Deregistration

If it becomes necessary to deregister a package from R-multiverse, you may submit a
[pull request](https://docs.github.com/en/pull-requests/collaborating-with-pull-requests/proposing-changes-to-your-work-with-pull-requests/about-pull-requests)
to remove the [package listing](https://github.com/r-multiverse/contributions/tree/main/packages).
To prevent a package of the same name from registering in R-multiverse,
you may contribute a listing with free-form text (not a URL or JSON list).
Packages with missing or free-form listings are removed from [Community](community.md), and the subsequent [Production](production.md) snapshot will not include them. 

## How to create a badge

[<img src="https://img.shields.io/badge/dynamic/json?url=https%3A%2F%2Fcommunity.r-multiverse.org%2Fapi%2Fpackages%2Fmirai&query=%24.Version&label=r-multiverse" alt="R-multiverse status" />](https://community.r-multiverse.org/mirai)

To add a dynamic 'R-multiverse' badge for package readme files, like the one above, copy the following markdown snippet, replacing 'pkgNAME' with the actual package name in both places it appears:

```md
[![R-multiverse status](https://img.shields.io/badge/dynamic/json?url=https%3A%2F%2Fcommunity.r-multiverse.org%2Fapi%2Fpackages%2FpkgNAME&query=%24.Version&label=r-multiverse)](https://community.r-multiverse.org/pkgNAME)
```

## Getting help

Please report bugs to <https://github.com/r-multiverse/help/issues> and send other feedback and questions to <https://github.com/r-multiverse/help/discussions>.
Please note that <https://github.com/r-multiverse/contributions> can only accept pull requests to add or modify package entries.
