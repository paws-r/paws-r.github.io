<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>detective_list_graphs</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns the list of behavior graphs that the calling account is an administrator account of

### Description

Returns the list of behavior graphs that the calling account is an
administrator account of. This operation can only be called by an
administrator account.

Because an account can currently only be the administrator of one
behavior graph within a Region, the results always contain a single
behavior graph.

### Usage

    detective_list_graphs(NextToken, MaxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="detective_list_graphs_:_NextToken">NextToken</code></td>
<td><p>For requests to get the next page of results, the pagination
token that was returned with the previous set of results. The initial
request does not include a pagination token.</p></td>
</tr>
<tr class="even">
<td><code id="detective_list_graphs_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of graphs to return at a time. The total must
be less than the overall limit on the number of results to return, which
is currently 200.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      GraphList = list(
        list(
          Arn = "string",
          CreatedTime = as.POSIXct(
            "2015-01-01"
          )
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_graphs(
      NextToken = "string",
      MaxResults = 123
    )
