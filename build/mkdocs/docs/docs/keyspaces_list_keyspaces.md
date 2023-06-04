<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>keyspaces_list_keyspaces</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns a list of keyspaces

### Description

Returns a list of keyspaces.

### Usage

    keyspaces_list_keyspaces(nextToken, maxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="keyspaces_list_keyspaces_:_nextToken">nextToken</code></td>
<td><p>The pagination token. To resume pagination, provide the
<code>NextToken</code> value as argument of a subsequent API
invocation.</p></td>
</tr>
<tr class="even">
<td><code
id="keyspaces_list_keyspaces_:_maxResults">maxResults</code></td>
<td><p>The total number of keyspaces to return in the output. If the
total number of keyspaces available is more than the value specified, a
<code>NextToken</code> is provided in the output. To resume pagination,
provide the <code>NextToken</code> value as an argument of a subsequent
API invocation.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      nextToken = "string",
      keyspaces = list(
        list(
          keyspaceName = "string",
          resourceArn = "string"
        )
      )
    )

### Request syntax

    svc$list_keyspaces(
      nextToken = "string",
      maxResults = 123
    )
