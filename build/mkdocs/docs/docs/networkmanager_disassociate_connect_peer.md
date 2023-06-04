<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>networkmanager_disassociate_connect_peer</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Disassociates a core network Connect peer from a device and a link

### Description

Disassociates a core network Connect peer from a device and a link.

### Usage

    networkmanager_disassociate_connect_peer(GlobalNetworkId, ConnectPeerId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="networkmanager_disassociate_connect_peer_:_GlobalNetworkId">GlobalNetworkId</code></td>
<td><p>[required] The ID of the global network.</p></td>
</tr>
<tr class="even">
<td><code
id="networkmanager_disassociate_connect_peer_:_ConnectPeerId">ConnectPeerId</code></td>
<td><p>[required] The ID of the Connect peer to disassociate from a
device.</p></td>
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

    svc$disassociate_connect_peer(
      GlobalNetworkId = "string",
      ConnectPeerId = "string"
    )
