<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>apigatewaymanagementapi_post_to_connection</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Sends the provided data to the specified connection

### Description

Sends the provided data to the specified connection.

### Usage

    apigatewaymanagementapi_post_to_connection(Data, ConnectionId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="apigatewaymanagementapi_post_to_connection_:_Data">Data</code></td>
<td><p>[required] The data to be sent to the client specified by its
connection id.</p></td>
</tr>
<tr class="even">
<td><code
id="apigatewaymanagementapi_post_to_connection_:_ConnectionId">ConnectionId</code></td>
<td><p>[required] The identifier of the connection that a specific
client is using.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$post_to_connection(
      Data = raw,
      ConnectionId = "string"
    )
