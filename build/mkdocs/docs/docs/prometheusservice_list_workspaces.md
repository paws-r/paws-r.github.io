<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>prometheusservice_list_workspaces</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists all AMP workspaces, including workspaces being created or deleted

### Description

Lists all AMP workspaces, including workspaces being created or deleted.

### Usage

    prometheusservice_list_workspaces(alias, maxResults, nextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="prometheusservice_list_workspaces_:_alias">alias</code></td>
<td><p>Optional filter for workspace alias. Only the workspaces with
aliases that begin with this value will be returned.</p></td>
</tr>
<tr class="even">
<td><code
id="prometheusservice_list_workspaces_:_maxResults">maxResults</code></td>
<td><p>Maximum results to return in response (default=100,
maximum=1000).</p></td>
</tr>
<tr class="odd">
<td><code
id="prometheusservice_list_workspaces_:_nextToken">nextToken</code></td>
<td><p>Pagination token to request the next page in a paginated list.
This token is obtained from the output of the previous ListWorkspaces
request.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      nextToken = "string",
      workspaces = list(
        list(
          alias = "string",
          arn = "string",
          createdAt = as.POSIXct(
            "2015-01-01"
          ),
          status = list(
            statusCode = "CREATING"|"ACTIVE"|"UPDATING"|"DELETING"|"CREATION_FAILED"
          ),
          tags = list(
            "string"
          ),
          workspaceId = "string"
        )
      )
    )

### Request syntax

    svc$list_workspaces(
      alias = "string",
      maxResults = 123,
      nextToken = "string"
    )
