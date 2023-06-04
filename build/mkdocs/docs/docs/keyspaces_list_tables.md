<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>keyspaces_list_tables</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns a list of tables for a specified keyspace

### Description

Returns a list of tables for a specified keyspace.

### Usage

    keyspaces_list_tables(nextToken, maxResults, keyspaceName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="keyspaces_list_tables_:_nextToken">nextToken</code></td>
<td><p>The pagination token. To resume pagination, provide the
<code>NextToken</code> value as an argument of a subsequent API
invocation.</p></td>
</tr>
<tr class="even">
<td><code id="keyspaces_list_tables_:_maxResults">maxResults</code></td>
<td><p>The total number of tables to return in the output. If the total
number of tables available is more than the value specified, a
<code>NextToken</code> is provided in the output. To resume pagination,
provide the <code>NextToken</code> value as an argument of a subsequent
API invocation.</p></td>
</tr>
<tr class="odd">
<td><code
id="keyspaces_list_tables_:_keyspaceName">keyspaceName</code></td>
<td><p>[required] The name of the keyspace.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      nextToken = "string",
      tables = list(
        list(
          keyspaceName = "string",
          tableName = "string",
          resourceArn = "string"
        )
      )
    )

### Request syntax

    svc$list_tables(
      nextToken = "string",
      maxResults = 123,
      keyspaceName = "string"
    )
