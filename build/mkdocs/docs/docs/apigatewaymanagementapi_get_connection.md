<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>apigatewaymanagementapi_get_connection</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Get information about the connection with the provided id

### Description

Get information about the connection with the provided id.

### Usage

    apigatewaymanagementapi_get_connection(ConnectionId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="apigatewaymanagementapi_get_connection_:_ConnectionId">ConnectionId</code></td>
<td><p>[required]</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ConnectedAt = as.POSIXct(
        "2015-01-01"
      ),
      Identity = list(
        SourceIp = "string",
        UserAgent = "string"
      ),
      LastActiveAt = as.POSIXct(
        "2015-01-01"
      )
    )

### Request syntax

    svc$get_connection(
      ConnectionId = "string"
    )
