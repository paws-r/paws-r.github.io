<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>apigatewaymanagementapi_delete_connection</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Delete the connection with the provided id

### Description

Delete the connection with the provided id.

### Usage

    apigatewaymanagementapi_delete_connection(ConnectionId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="apigatewaymanagementapi_delete_connection_:_ConnectionId">ConnectionId</code></td>
<td><p>[required]</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_connection(
      ConnectionId = "string"
    )
