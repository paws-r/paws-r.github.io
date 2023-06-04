<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>configservice_delete_stored_query</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes the stored query for a single Amazon Web Services account and a single Amazon Web Services Region

### Description

Deletes the stored query for a single Amazon Web Services account and a
single Amazon Web Services Region.

### Usage

    configservice_delete_stored_query(QueryName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="configservice_delete_stored_query_:_QueryName">QueryName</code></td>
<td><p>[required] The name of the query that you want to
delete.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_stored_query(
      QueryName = "string"
    )
