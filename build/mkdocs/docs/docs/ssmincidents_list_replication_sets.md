<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ssmincidents_list_replication_sets</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists details about the replication set configured in your account

### Description

Lists details about the replication set configured in your account.

### Usage

    ssmincidents_list_replication_sets(maxResults, nextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ssmincidents_list_replication_sets_:_maxResults">maxResults</code></td>
<td><p>The maximum number of results per page.</p></td>
</tr>
<tr class="even">
<td><code
id="ssmincidents_list_replication_sets_:_nextToken">nextToken</code></td>
<td><p>The pagination token to continue to the next page of
results.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      nextToken = "string",
      replicationSetArns = list(
        "string"
      )
    )

### Request syntax

    svc$list_replication_sets(
      maxResults = 123,
      nextToken = "string"
    )
