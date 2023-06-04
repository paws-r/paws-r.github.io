<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>networkmanager_update_connection</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates the information for an existing connection

### Description

Updates the information for an existing connection. To remove
information for any of the parameters, specify an empty string.

### Usage

    networkmanager_update_connection(GlobalNetworkId, ConnectionId, LinkId,
      ConnectedLinkId, Description)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="networkmanager_update_connection_:_GlobalNetworkId">GlobalNetworkId</code></td>
<td><p>[required] The ID of the global network.</p></td>
</tr>
<tr class="even">
<td><code
id="networkmanager_update_connection_:_ConnectionId">ConnectionId</code></td>
<td><p>[required] The ID of the connection.</p></td>
</tr>
<tr class="odd">
<td><code
id="networkmanager_update_connection_:_LinkId">LinkId</code></td>
<td><p>The ID of the link for the first device in the
connection.</p></td>
</tr>
<tr class="even">
<td><code
id="networkmanager_update_connection_:_ConnectedLinkId">ConnectedLinkId</code></td>
<td><p>The ID of the link for the second device in the
connection.</p></td>
</tr>
<tr class="odd">
<td><code
id="networkmanager_update_connection_:_Description">Description</code></td>
<td><p>A description of the connection.</p>
<p>Length Constraints: Maximum length of 256 characters.</p></td>
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

    svc$update_connection(
      GlobalNetworkId = "string",
      ConnectionId = "string",
      LinkId = "string",
      ConnectedLinkId = "string",
      Description = "string"
    )
