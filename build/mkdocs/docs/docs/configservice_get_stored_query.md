<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>configservice_get_stored_query</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns the details of a specific stored query

### Description

Returns the details of a specific stored query.

### Usage

    configservice_get_stored_query(QueryName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="configservice_get_stored_query_:_QueryName">QueryName</code></td>
<td><p>[required] The name of the query.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      StoredQuery = list(
        QueryId = "string",
        QueryArn = "string",
        QueryName = "string",
        Description = "string",
        Expression = "string"
      )
    )

### Request syntax

    svc$get_stored_query(
      QueryName = "string"
    )
