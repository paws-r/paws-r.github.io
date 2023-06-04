<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>codecommit_update_default_branch</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Sets or changes the default branch name for the specified repository

### Description

Sets or changes the default branch name for the specified repository.

If you use this operation to change the default branch name to the
current default branch name, a success message is returned even though
the default branch did not change.

### Usage

    codecommit_update_default_branch(repositoryName, defaultBranchName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="codecommit_update_default_branch_:_repositoryName">repositoryName</code></td>
<td><p>[required] The name of the repository to set or change the
default branch for.</p></td>
</tr>
<tr class="even">
<td><code
id="codecommit_update_default_branch_:_defaultBranchName">defaultBranchName</code></td>
<td><p>[required] The name of the branch to set as the default.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$update_default_branch(
      repositoryName = "string",
      defaultBranchName = "string"
    )
