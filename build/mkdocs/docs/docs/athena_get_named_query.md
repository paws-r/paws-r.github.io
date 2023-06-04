<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>athena_get_named_query</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns information about a single query

### Description

Returns information about a single query. Requires that you have access
to the workgroup in which the query was saved.

### Usage

    athena_get_named_query(NamedQueryId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="athena_get_named_query_:_NamedQueryId">NamedQueryId</code></td>
<td><p>[required] The unique ID of the query. Use
<code>list_named_queries</code> to get query IDs.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      NamedQuery = list(
        Name = "string",
        Description = "string",
        Database = "string",
        QueryString = "string",
        NamedQueryId = "string",
        WorkGroup = "string"
      )
    )

### Request syntax

    svc$get_named_query(
      NamedQueryId = "string"
    )
