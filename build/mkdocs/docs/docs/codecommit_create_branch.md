<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>codecommit_create_branch</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a branch in a repository and points the branch to a commit

### Description

Creates a branch in a repository and points the branch to a commit.

Calling the create branch operation does not set a repository's default
branch. To do this, call the update default branch operation.

### Usage

    codecommit_create_branch(repositoryName, branchName, commitId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="codecommit_create_branch_:_repositoryName">repositoryName</code></td>
<td><p>[required] The name of the repository in which you want to create
the new branch.</p></td>
</tr>
<tr class="even">
<td><code
id="codecommit_create_branch_:_branchName">branchName</code></td>
<td><p>[required] The name of the new branch to create.</p></td>
</tr>
<tr class="odd">
<td><code id="codecommit_create_branch_:_commitId">commitId</code></td>
<td><p>[required] The ID of the commit to point the new branch
to.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$create_branch(
      repositoryName = "string",
      branchName = "string",
      commitId = "string"
    )
