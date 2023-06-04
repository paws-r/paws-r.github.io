<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_create_transit_gateway_route</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a static route for the specified transit gateway route table

### Description

Creates a static route for the specified transit gateway route table.

### Usage

    ec2_create_transit_gateway_route(DestinationCidrBlock,
      TransitGatewayRouteTableId, TransitGatewayAttachmentId, Blackhole,
      DryRun)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ec2_create_transit_gateway_route_:_DestinationCidrBlock">DestinationCidrBlock</code></td>
<td><p>[required] The CIDR range used for destination matches. Routing
decisions are based on the most specific match.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_create_transit_gateway_route_:_TransitGatewayRouteTableId">TransitGatewayRouteTableId</code></td>
<td><p>[required] The ID of the transit gateway route table.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_create_transit_gateway_route_:_TransitGatewayAttachmentId">TransitGatewayAttachmentId</code></td>
<td><p>The ID of the attachment.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_create_transit_gateway_route_:_Blackhole">Blackhole</code></td>
<td><p>Indicates whether to drop traffic that matches this
route.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_create_transit_gateway_route_:_DryRun">DryRun</code></td>
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

    svc$create_transit_gateway_route(
      DestinationCidrBlock = "string",
      TransitGatewayRouteTableId = "string",
      TransitGatewayAttachmentId = "string",
      Blackhole = TRUE|FALSE,
      DryRun = TRUE|FALSE
    )
