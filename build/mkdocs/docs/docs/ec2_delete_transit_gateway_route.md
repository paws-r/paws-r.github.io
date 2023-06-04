<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_delete_transit_gateway_route</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes the specified route from the specified transit gateway route table

### Description

Deletes the specified route from the specified transit gateway route
table.

### Usage

    ec2_delete_transit_gateway_route(TransitGatewayRouteTableId,
      DestinationCidrBlock, DryRun)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ec2_delete_transit_gateway_route_:_TransitGatewayRouteTableId">TransitGatewayRouteTableId</code></td>
<td><p>[required] The ID of the transit gateway route table.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_delete_transit_gateway_route_:_DestinationCidrBlock">DestinationCidrBlock</code></td>
<td><p>[required] The CIDR range for the route. This must match the CIDR
for the route exactly.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_delete_transit_gateway_route_:_DryRun">DryRun</code></td>
<td><p>Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
<code>DryRunOperation</code>. Otherwise, it is
<code>UnauthorizedOperation</code>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Route = list(
        DestinationCidrBlock = "string",
        PrefixListId = "string",
        TransitGatewayRouteTableAnnouncementId = "string",
        TransitGatewayAttachments = list(
          list(
            ResourceId = "string",
            TransitGatewayAttachmentId = "string",
            ResourceType = "vpc"|"vpn"|"direct-connect-gateway"|"connect"|"peering"|"tgw-peering"
          )
        ),
        Type = "static"|"propagated",
        State = "pending"|"active"|"blackhole"|"deleting"|"deleted"
      )
    )

### Request syntax

    svc$delete_transit_gateway_route(
      TransitGatewayRouteTableId = "string",
      DestinationCidrBlock = "string",
      DryRun = TRUE|FALSE
    )
