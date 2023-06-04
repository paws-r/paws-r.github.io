<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>networkmanager_associate_connect_peer</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Associates a core network Connect peer with a device and optionally, with a link

### Description

Associates a core network Connect peer with a device and optionally,
with a link.

If you specify a link, it must be associated with the specified device.
You can only associate core network Connect peers that have been created
on a core network Connect attachment on a core network.

### Usage

    networkmanager_associate_connect_peer(GlobalNetworkId, ConnectPeerId,
      DeviceId, LinkId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="networkmanager_associate_connect_peer_:_GlobalNetworkId">GlobalNetworkId</code></td>
<td><p>[required] The ID of your global network.</p></td>
</tr>
<tr class="even">
<td><code
id="networkmanager_associate_connect_peer_:_ConnectPeerId">ConnectPeerId</code></td>
<td><p>[required] The ID of the Connect peer.</p></td>
</tr>
<tr class="odd">
<td><code
id="networkmanager_associate_connect_peer_:_DeviceId">DeviceId</code></td>
<td><p>[required] The ID of the device.</p></td>
</tr>
<tr class="even">
<td><code
id="networkmanager_associate_connect_peer_:_LinkId">LinkId</code></td>
<td><p>The ID of the link.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ConnectPeerAssociation = list(
        ConnectPeerId = "string",
        GlobalNetworkId = "string",
        DeviceId = "string",
        LinkId = "string",
        State = "PENDING"|"AVAILABLE"|"DELETING"|"DELETED"
      )
    )

### Request syntax

    svc$associate_connect_peer(
      GlobalNetworkId = "string",
      ConnectPeerId = "string",
      DeviceId = "string",
      LinkId = "string"
    )
