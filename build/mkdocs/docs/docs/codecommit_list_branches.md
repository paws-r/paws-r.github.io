<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>codecommit_list_branches</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets information about one or more branches in a repository

### Description

Gets information about one or more branches in a repository.

### Usage

    codecommit_list_branches(repositoryName, nextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="codecommit_list_branches_:_repositoryName">repositoryName</code></td>
<td><p>[required] The name of the repository that contains the
branches.</p></td>
</tr>
<tr class="even">
<td><code
id="codecommit_list_branches_:_nextToken">nextToken</code></td>
<td><p>An enumeration token that allows the operation to batch the
results.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      branches = list(
        "string"
      ),
      nextToken = "string"
    )

### Request syntax

    svc$list_branches(
      repositoryName = "string",
      nextToken = "string"
    )
