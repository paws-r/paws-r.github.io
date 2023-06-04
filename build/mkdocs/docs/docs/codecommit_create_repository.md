<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>codecommit_create_repository</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a new, empty repository

### Description

Creates a new, empty repository.

### Usage

    codecommit_create_repository(repositoryName, repositoryDescription,
      tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="codecommit_create_repository_:_repositoryName">repositoryName</code></td>
<td><p>[required] The name of the new repository to be created.</p>
<p>The repository name must be unique across the calling AWS account.
Repository names are limited to 100 alphanumeric, dash, and underscore
characters, and cannot include certain characters. For more information
about the limits on repository names, see <a
href="https://docs.aws.amazon.com/codecommit/latest/userguide/limits.html">Limits</a>
in the <em>AWS CodeCommit User Guide</em>. The suffix .git is
prohibited.</p></td>
</tr>
<tr class="even">
<td><code
id="codecommit_create_repository_:_repositoryDescription">repositoryDescription</code></td>
<td><p>A comment or description about the new repository.</p>
<p>The description field for a repository accepts all HTML characters
and all valid Unicode characters. Applications that do not HTML-encode
the description and display it in a webpage can expose users to
potentially malicious code. Make sure that you HTML-encode the
description field in any application that uses this API to display the
repository description on a webpage.</p></td>
</tr>
<tr class="odd">
<td><code id="codecommit_create_repository_:_tags">tags</code></td>
<td><p>One or more tag key-value pairs to use when tagging this
repository.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      repositoryMetadata = list(
        accountId = "string",
        repositoryId = "string",
        repositoryName = "string",
        repositoryDescription = "string",
        defaultBranch = "string",
        lastModifiedDate = as.POSIXct(
          "2015-01-01"
        ),
        creationDate = as.POSIXct(
          "2015-01-01"
        ),
        cloneUrlHttp = "string",
        cloneUrlSsh = "string",
        Arn = "string"
      )
    )

### Request syntax

    svc$create_repository(
      repositoryName = "string",
      repositoryDescription = "string",
      tags = list(
        "string"
      )
    )
