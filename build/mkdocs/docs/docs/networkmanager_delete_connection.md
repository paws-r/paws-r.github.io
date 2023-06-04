<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>networkmanager_delete_connection</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes the specified connection in your global network

### Description

Deletes the specified connection in your global network.

### Usage

    networkmanager_delete_connection(GlobalNetworkId, ConnectionId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="networkmanager_delete_connection_:_GlobalNetworkId">GlobalNetworkId</code></td>
<td><p>[required] The ID of the global network.</p></td>
</tr>
<tr class="even">
<td><code
id="networkmanager_delete_connection_:_ConnectionId">ConnectionId</code></td>
<td><p>[required] The ID of the connection.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Connection = list(
        ConnectionId = "string",
        ConnectionArn = "string",
        GlobalNetworkId = "string",
        DeviceId = "string",
        ConnectedDeviceId = "string",
        LinkId = "string",
        ConnectedLinkId = "string",
        Description = "string",
        CreatedAt = as.POSIXct(
          "2015-01-01"
        ),
        State = "PENDING"|"AVAILABLE"|"DELETING"|"UPDATING",
        Tags = list(
          list(
            Key = "string",
            Value = "string"
          )
        )
      )
    )

### Request syntax

    svc$delete_connection(
      GlobalNetworkId = "string",
      ConnectionId = "string"
    )
