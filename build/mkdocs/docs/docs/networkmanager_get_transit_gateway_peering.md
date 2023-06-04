<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>networkmanager_get_transit_gateway_peering</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns information about a transit gateway peer

### Description

Returns information about a transit gateway peer.

### Usage

    networkmanager_get_transit_gateway_peering(PeeringId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="networkmanager_get_transit_gateway_peering_:_PeeringId">PeeringId</code></td>
<td><p>[required] The ID of the peering request.</p></td>
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

    svc$get_transit_gateway_peering(
      PeeringId = "string"
    )
