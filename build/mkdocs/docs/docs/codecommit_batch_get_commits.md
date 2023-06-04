<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>codecommit_batch_get_commits</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns information about the contents of one or more commits in a repository

### Description

Returns information about the contents of one or more commits in a
repository.

### Usage

    codecommit_batch_get_commits(commitIds, repositoryName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="codecommit_batch_get_commits_:_commitIds">commitIds</code></td>
<td><p>[required] The full commit IDs of the commits to get information
about.</p>
<p>You must supply the full SHA IDs of each commit. You cannot use
shortened SHA IDs.</p></td>
</tr>
<tr class="even">
<td><code
id="codecommit_batch_get_commits_:_repositoryName">repositoryName</code></td>
<td><p>[required] The name of the repository that contains the
commits.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      commits = list(
        list(
          commitId = "string",
          treeId = "string",
          parents = list(
            "string"
          ),
          message = "string",
          author = list(
            name = "string",
            email = "string",
            date = "string"
          ),
          committer = list(
            name = "string",
            email = "string",
            date = "string"
          ),
          additionalData = "string"
        )
      ),
      errors = list(
        list(
          commitId = "string",
          errorCode = "string",
          errorMessage = "string"
        )
      )
    )

### Request syntax

    svc$batch_get_commits(
      commitIds = list(
        "string"
      ),
      repositoryName = "string"
    )
