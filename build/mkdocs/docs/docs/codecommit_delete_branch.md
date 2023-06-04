<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>codecommit_delete_branch</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes a branch from a repository, unless that branch is the default branch for the repository

### Description

Deletes a branch from a repository, unless that branch is the default
branch for the repository.

### Usage

    codecommit_delete_branch(repositoryName, branchName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="codecommit_delete_branch_:_repositoryName">repositoryName</code></td>
<td><p>[required] The name of the repository that contains the branch to
be deleted.</p></td>
</tr>
<tr class="even">
<td><code
id="codecommit_delete_branch_:_branchName">branchName</code></td>
<td><p>[required] The name of the branch to delete.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      deletedBranch = list(
        branchName = "string",
        commitId = "string"
      )
    )

### Request syntax

    svc$delete_branch(
      repositoryName = "string",
      branchName = "string"
    )
