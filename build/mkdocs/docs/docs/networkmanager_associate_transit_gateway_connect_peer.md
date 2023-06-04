<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>networkmanager_associate_transit_gateway_connect_peer</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Associates a transit gateway Connect peer with a device, and optionally, with a link

### Description

Associates a transit gateway Connect peer with a device, and optionally,
with a link. If you specify a link, it must be associated with the
specified device.

You can only associate transit gateway Connect peers that have been
created on a transit gateway that's registered in your global network.

You cannot associate a transit gateway Connect peer with more than one
device and link.

### Usage

    networkmanager_associate_transit_gateway_connect_peer(GlobalNetworkId,
      TransitGatewayConnectPeerArn, DeviceId, LinkId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="networkmanager_associate_transit_gateway_connect_peer_:_GlobalNetworkId">GlobalNetworkId</code></td>
<td><p>[required] The ID of the global network.</p></td>
</tr>
<tr class="even">
<td><code
id="networkmanager_associate_transit_gateway_connect_peer_:_TransitGatewayConnectPeerArn">TransitGatewayConnectPeerArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the Connect
peer.</p></td>
</tr>
<tr class="odd">
<td><code
id="networkmanager_associate_transit_gateway_connect_peer_:_DeviceId">DeviceId</code></td>
<td><p>[required] The ID of the device.</p></td>
</tr>
<tr class="even">
<td><code
id="networkmanager_associate_transit_gateway_connect_peer_:_LinkId">LinkId</code></td>
<td><p>The ID of the link.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      TransitGatewayConnectPeerAssociation = list(
        TransitGatewayConnectPeerArn = "string",
        GlobalNetworkId = "string",
        DeviceId = "string",
        LinkId = "string",
        State = "PENDING"|"AVAILABLE"|"DELETING"|"DELETED"
      )
    )

### Request syntax

    svc$associate_transit_gateway_connect_peer(
      GlobalNetworkId = "string",
      TransitGatewayConnectPeerArn = "string",
      DeviceId = "string",
      LinkId = "string"
    )
