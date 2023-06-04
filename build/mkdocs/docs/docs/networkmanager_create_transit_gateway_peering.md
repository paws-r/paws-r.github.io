<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>networkmanager_create_transit_gateway_peering</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a transit gateway peering connection

### Description

Creates a transit gateway peering connection.

### Usage

    networkmanager_create_transit_gateway_peering(CoreNetworkId,
      TransitGatewayArn, Tags, ClientToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="networkmanager_create_transit_gateway_peering_:_CoreNetworkId">CoreNetworkId</code></td>
<td><p>[required] The ID of a core network.</p></td>
</tr>
<tr class="even">
<td><code
id="networkmanager_create_transit_gateway_peering_:_TransitGatewayArn">TransitGatewayArn</code></td>
<td><p>[required] The ARN of the transit gateway for the peering
request.</p></td>
</tr>
<tr class="odd">
<td><code
id="networkmanager_create_transit_gateway_peering_:_Tags">Tags</code></td>
<td><p>The list of key-value tags associated with the request.</p></td>
</tr>
<tr class="even">
<td><code
id="networkmanager_create_transit_gateway_peering_:_ClientToken">ClientToken</code></td>
<td><p>The client token associated with the request.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      TransitGatewayPeering = list(
        Peering = list(
          CoreNetworkId = "string",
          CoreNetworkArn = "string",
          PeeringId = "string",
          OwnerAccountId = "string",
          PeeringType = "TRANSIT_GATEWAY",
          State = "CREATING"|"FAILED"|"AVAILABLE"|"DELETING",
          EdgeLocation = "string",
          ResourceArn = "string",
          Tags = list(
            list(
              Key = "string",
              Value = "string"
            )
          ),
          CreatedAt = as.POSIXct(
            "2015-01-01"
          )
        ),
        TransitGatewayArn = "string",
        TransitGatewayPeeringAttachmentId = "string"
      )
    )

### Request syntax

    svc$create_transit_gateway_peering(
      CoreNetworkId = "string",
      TransitGatewayArn = "string",
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      ),
      ClientToken = "string"
    )
