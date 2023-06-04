<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>codecommit_get_repository</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns information about a repository

### Description

Returns information about a repository.

The description field for a repository accepts all HTML characters and
all valid Unicode characters. Applications that do not HTML-encode the
description and display it in a webpage can expose users to potentially
malicious code. Make sure that you HTML-encode the description field in
any application that uses this API to display the repository description
on a webpage.

### Usage

    codecommit_get_repository(repositoryName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="codecommit_get_repository_:_repositoryName">repositoryName</code></td>
<td><p>[required] The name of the repository to get information
about.</p></td>
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

    svc$get_repository(
      repositoryName = "string"
    )
