<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>codecommit_list_repositories</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets information about one or more repositories

### Description

Gets information about one or more repositories.

### Usage

    codecommit_list_repositories(nextToken, sortBy, order)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="codecommit_list_repositories_:_nextToken">nextToken</code></td>
<td><p>An enumeration token that allows the operation to batch the
results of the operation. Batch sizes are 1,000 for list repository
operations. When the client sends the token back to AWS CodeCommit,
another page of 1,000 records is retrieved.</p></td>
</tr>
<tr class="even">
<td><code id="codecommit_list_repositories_:_sortBy">sortBy</code></td>
<td><p>The criteria used to sort the results of a list repositories
operation.</p></td>
</tr>
<tr class="odd">
<td><code id="codecommit_list_repositories_:_order">order</code></td>
<td><p>The order in which to sort the results of a list repositories
operation.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      repositories = list(
        list(
          repositoryName = "string",
          repositoryId = "string"
        )
      ),
      nextToken = "string"
    )

### Request syntax

    svc$list_repositories(
      nextToken = "string",
      sortBy = "repositoryName"|"lastModifiedDate",
      order = "ascending"|"descending"
    )
