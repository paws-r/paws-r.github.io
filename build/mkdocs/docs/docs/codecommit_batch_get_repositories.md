<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>codecommit_batch_get_repositories</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns information about one or more repositories

### Description

Returns information about one or more repositories.

The description field for a repository accepts all HTML characters and
all valid Unicode characters. Applications that do not HTML-encode the
description and display it in a webpage can expose users to potentially
malicious code. Make sure that you HTML-encode the description field in
any application that uses this API to display the repository description
on a webpage.

### Usage

    codecommit_batch_get_repositories(repositoryNames)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="codecommit_batch_get_repositories_:_repositoryNames">repositoryNames</code></td>
<td><p>[required] The names of the repositories to get information
about.</p>
<p>The length constraint limit is for each string in the array. The
array itself can be empty.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      repositories = list(
        list(
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
      ),
      repositoriesNotFound = list(
        "string"
      )
    )

### Request syntax

    svc$batch_get_repositories(
      repositoryNames = list(
        "string"
      )
    )
