---
title: "Review Policy"
---

This policy dictates the process by which R-multiverse reviews and accepts contributed R packages.
All contributions must comply with R-multiverse policies, including but not limited to [Acceptable Use](https://r-multiverse.org/aup.html), [Terms of Use](https://r-multiverse.org/terms.html), and [Code of Conduct](https://r-multiverse.org/conduct.html).

## How review works

When it reviews a [new pull request](https://github.com/r-multiverse/contributions/pulls), the bot makes one of three choices:

1. Merge the pull request to accept the contribution.
2. Flag the pull request for manual review by a [moderator](https://r-multiverse.org/governance.html#moderator).

## Automatic acceptance

The bot automatically accepts the contribution if the [pull request](https://github.com/r-multiverse/contributions/pulls):

1. Was [created by the GitHub web interface](https://r-multiverse.org/contributors.html).
1. Adds new contributed listings to the [`packages` folder](https://github.com/r-multiverse/contributions/tree/main/packages) and makes no other changes to any files.
1. Does not add, modify, or delete any other files in <https://github.com/r-multiverse/contributions>.

and if each new [contributed listing](https://github.com/r-multiverse/contributions/tree/main/packages):

1. Is a single line of text with a valid HTTPS URL.
1. Points to an existing public GitHub/GitLab repository.

and if the contributed GitHub/GitLab repository:

1. Includes an R package at the top level whose package name is the same as the repository name.
1. Includes a license from the "Recommended licenses" section at the end of this policy.
1. Includes a GitHub/GitLab [release](https://docs.github.com/en/repositories/releasing-projects-on-github/about-releases).
1. Is not part of the CRAN mirror at <https://github.com/cran>.
1. Is mentioned in the `URL` field its CRAN page (if on CRAN).

and if the author of the [pull request](https://github.com/r-multiverse/contributions/pulls):

1. Is a [public member](https://docs.github.com/en/account-and-profile/setting-up-and-managing-your-personal-account-on-github/managing-your-membership-in-organizations/publicizing-or-hiding-organization-membership) of one of the trusted [GitHub organizations](https://docs.github.com/en/organizations/collaborating-with-groups-in-organizations/about-organizations) listed at <https://github.com/r-multiverse/contributions/blob/main/organizations>.

In addition, the GitHub/GitLab repository owner must consent to contribute the repository to R-multiverse. Any of the following is sufficient evidence of consent:

1. The author of the [pull request](https://github.com/r-multiverse/contributions/pulls) is the GitHub owner of the repository.
1. The author of the [pull request](https://github.com/r-multiverse/contributions/pulls) is a [public member](https://docs.github.com/en/account-and-profile/setting-up-and-managing-your-personal-account-on-github/managing-your-membership-in-organizations/publicizing-or-hiding-organization-membership) of the GitHub organization that owns the repository.
1. The `URL` field of the package `DESCRIPTION` file points to an R-multiverse URL (for example, <https://production.r-multiverse.org> or <https://community.r-multiverse.org/packageName>).

## Manual review

R-multiverse [moderators](https://r-multiverse.org/governance.html#moderator) review [pull requests](https://github.com/r-multiverse/contributions/pulls) that the bot flags for manual review.
The [moderator](https://r-multiverse.org/governance.html#moderator) inspects the package for compliance with R-multiverse policies, including but not limited to [Acceptable Use](https://r-multiverse.org/aup.html), [Terms of Use](https://r-multiverse.org/terms.html), and [Code of Conduct](https://r-multiverse.org/conduct.html).
The moderator accepts the contribution if and only if it complies with all policies.

## Recommended licenses

The [Acceptable Use Policy](https://r-multiverse.org/aup.html) prohibits packages that "violate any applicable laws, regulations, or third-party rights, including intellectual property rights".
In practice, this implies each package must have a valid open-source license.
The following is a list of valid open-source licenses that the bot automatically accepts during reviews:

* [Artistic 2.0](https://opensource.org/license/artistic-2-0)
* [BSD 2-Clause](https://opensource.org/license/bsd-2-clause)
* [BSD 3-Clause](https://opensource.org/license/bsd-3-clause)
* [GPL-2](https://opensource.org/license/gpl-2-0)
* [GPL-3](https://opensource.org/license/gpl-3-0)
* [LGPL-2](https://opensource.org/license/lgpl-2-0)
* [LGPL-2.1](https://opensource.org/license/lgpl-2-1)
* [LGPL-3](https://opensource.org/license/lgpl-3-0)
* [MIT](https://opensource.org/license/mit)
