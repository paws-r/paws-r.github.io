<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>networkmanager_get_transit_gateway_connect_peer_associations</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets information about one or more of your transit gateway Connect peer associations in a global network

### Description

Gets information about one or more of your transit gateway Connect peer
associations in a global network.

### Usage

    networkmanager_get_transit_gateway_connect_peer_associations(
      GlobalNetworkId, TransitGatewayConnectPeerArns, MaxResults, NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="networkmanager_get_transit_gateway_connect_peer_associations_:_GlobalNetworkId">GlobalNetworkId</code></td>
<td><p>[required] The ID of the global network.</p></td>
</tr>
<tr class="even">
<td><code
id="networkmanager_get_transit_gateway_connect_peer_associations_:_TransitGatewayConnectPeerArns">TransitGatewayConnectPeerArns</code></td>
<td><p>One or more transit gateway Connect peer Amazon Resource Names
(ARNs).</p></td>
</tr>
<tr class="odd">
<td><code
id="networkmanager_get_transit_gateway_connect_peer_associations_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of results to return.</p></td>
</tr>
<tr class="even">
<td><code
id="networkmanager_get_transit_gateway_connect_peer_associations_:_NextToken">NextToken</code></td>
<td><p>The token for the next page of results.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      TransitGatewayConnectPeerAssociations = list(
        list(
          TransitGatewayConnectPeerArn = "string",
          GlobalNetworkId = "string",
          DeviceId = "string",
          LinkId = "string",
          State = "PENDING"|"AVAILABLE"|"DELETING"|"DELETED"
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$get_transit_gateway_connect_peer_associations(
      GlobalNetworkId = "string",
      TransitGatewayConnectPeerArns = list(
        "string"
      ),
      MaxResults = 123,
      NextToken = "string"
    )
