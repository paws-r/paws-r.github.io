<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>codecommit_get_branch</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns information about a repository branch, including its name and the last commit ID

### Description

Returns information about a repository branch, including its name and
the last commit ID.

### Usage

    codecommit_get_branch(repositoryName, branchName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="codecommit_get_branch_:_repositoryName">repositoryName</code></td>
<td><p>The name of the repository that contains the branch for which you
want to retrieve information.</p></td>
</tr>
<tr class="even">
<td><code id="codecommit_get_branch_:_branchName">branchName</code></td>
<td><p>The name of the branch for which you want to retrieve
information.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      branch = list(
        branchName = "string",
        commitId = "string"
      )
    )

### Request syntax

    svc$get_branch(
      repositoryName = "string",
      branchName = "string"
    )
