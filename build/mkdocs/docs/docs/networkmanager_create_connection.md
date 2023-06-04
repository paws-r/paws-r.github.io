<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>networkmanager_create_connection</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a connection between two devices

### Description

Creates a connection between two devices. The devices can be a physical
or virtual appliance that connects to a third-party appliance in a VPC,
or a physical appliance that connects to another physical appliance in
an on-premises network.

### Usage

    networkmanager_create_connection(GlobalNetworkId, DeviceId,
      ConnectedDeviceId, LinkId, ConnectedLinkId, Description, Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="networkmanager_create_connection_:_GlobalNetworkId">GlobalNetworkId</code></td>
<td><p>[required] The ID of the global network.</p></td>
</tr>
<tr class="even">
<td><code
id="networkmanager_create_connection_:_DeviceId">DeviceId</code></td>
<td><p>[required] The ID of the first device in the connection.</p></td>
</tr>
<tr class="odd">
<td><code
id="networkmanager_create_connection_:_ConnectedDeviceId">ConnectedDeviceId</code></td>
<td><p>[required] The ID of the second device in the
connection.</p></td>
</tr>
<tr class="even">
<td><code
id="networkmanager_create_connection_:_LinkId">LinkId</code></td>
<td><p>The ID of the link for the first device.</p></td>
</tr>
<tr class="odd">
<td><code
id="networkmanager_create_connection_:_ConnectedLinkId">ConnectedLinkId</code></td>
<td><p>The ID of the link for the second device.</p></td>
</tr>
<tr class="even">
<td><code
id="networkmanager_create_connection_:_Description">Description</code></td>
<td><p>A description of the connection.</p>
<p>Length Constraints: Maximum length of 256 characters.</p></td>
</tr>
<tr class="odd">
<td><code id="networkmanager_create_connection_:_Tags">Tags</code></td>
<td><p>The tags to apply to the resource during creation.</p></td>
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

    svc$create_connection(
      GlobalNetworkId = "string",
      DeviceId = "string",
      ConnectedDeviceId = "string",
      LinkId = "string",
      ConnectedLinkId = "string",
      Description = "string",
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      )
    )
