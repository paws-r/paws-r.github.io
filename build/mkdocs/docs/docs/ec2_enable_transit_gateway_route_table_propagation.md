<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_enable_transit_gateway_route_table_propagation</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Enables the specified attachment to propagate routes to the specified propagation route table

### Description

Enables the specified attachment to propagate routes to the specified
propagation route table.

### Usage

    ec2_enable_transit_gateway_route_table_propagation(
      TransitGatewayRouteTableId, TransitGatewayAttachmentId, DryRun,
      TransitGatewayRouteTableAnnouncementId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ec2_enable_transit_gateway_route_table_propagation_:_TransitGatewayRouteTableId">TransitGatewayRouteTableId</code></td>
<td><p>[required] The ID of the propagation route table.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_enable_transit_gateway_route_table_propagation_:_TransitGatewayAttachmentId">TransitGatewayAttachmentId</code></td>
<td><p>The ID of the attachment.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_enable_transit_gateway_route_table_propagation_:_DryRun">DryRun</code></td>
<td><p>Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
<code>DryRunOperation</code>. Otherwise, it is
<code>UnauthorizedOperation</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_enable_transit_gateway_route_table_propagation_:_TransitGatewayRouteTableAnnouncementId">TransitGatewayRouteTableAnnouncementId</code></td>
<td><p>The ID of the transit gateway route table announcement.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Propagation = list(
        TransitGatewayAttachmentId = "string",
        ResourceId = "string",
        ResourceType = "vpc"|"vpn"|"direct-connect-gateway"|"connect"|"peering"|"tgw-peering",
        TransitGatewayRouteTableId = "string",
        State = "enabling"|"enabled"|"disabling"|"disabled",
        TransitGatewayRouteTableAnnouncementId = "string"
      )
    )

### Request syntax

    svc$enable_transit_gateway_route_table_propagation(
      TransitGatewayRouteTableId = "string",
      TransitGatewayAttachmentId = "string",
      DryRun = TRUE|FALSE,
      TransitGatewayRouteTableAnnouncementId = "string"
    )
