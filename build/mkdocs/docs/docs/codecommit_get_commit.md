<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>codecommit_get_commit</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns information about a commit, including commit message and committer information

### Description

Returns information about a commit, including commit message and
committer information.

### Usage

    codecommit_get_commit(repositoryName, commitId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="codecommit_get_commit_:_repositoryName">repositoryName</code></td>
<td><p>[required] The name of the repository to which the commit was
made.</p></td>
</tr>
<tr class="even">
<td><code id="codecommit_get_commit_:_commitId">commitId</code></td>
<td><p>[required] The commit ID. Commit IDs are the full SHA ID of the
commit.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      commit = list(
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
    )

### Request syntax

    svc$get_commit(
      repositoryName = "string",
      commitId = "string"
    )
