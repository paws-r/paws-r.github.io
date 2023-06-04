<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>networkmanager_disassociate_transit_gateway_connect_peer</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Disassociates a transit gateway Connect peer from a device and link

### Description

Disassociates a transit gateway Connect peer from a device and link.

### Usage

    networkmanager_disassociate_transit_gateway_connect_peer(
      GlobalNetworkId, TransitGatewayConnectPeerArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="networkmanager_disassociate_transit_gateway_connect_peer_:_GlobalNetworkId">GlobalNetworkId</code></td>
<td><p>[required] The ID of the global network.</p></td>
</tr>
<tr class="even">
<td><code
id="networkmanager_disassociate_transit_gateway_connect_peer_:_TransitGatewayConnectPeerArn">TransitGatewayConnectPeerArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the transit gateway
Connect peer.</p></td>
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

    svc$disassociate_transit_gateway_connect_peer(
      GlobalNetworkId = "string",
      TransitGatewayConnectPeerArn = "string"
    )
