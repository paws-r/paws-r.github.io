<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_create_transit_gateway_prefix_list_reference</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a reference (route) to a prefix list in a specified transit gateway route table

### Description

Creates a reference (route) to a prefix list in a specified transit
gateway route table.

### Usage

    ec2_create_transit_gateway_prefix_list_reference(
      TransitGatewayRouteTableId, PrefixListId, TransitGatewayAttachmentId,
      Blackhole, DryRun)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ec2_create_transit_gateway_prefix_list_reference_:_TransitGatewayRouteTableId">TransitGatewayRouteTableId</code></td>
<td><p>[required] The ID of the transit gateway route table.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_create_transit_gateway_prefix_list_reference_:_PrefixListId">PrefixListId</code></td>
<td><p>[required] The ID of the prefix list that is used for destination
matches.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_create_transit_gateway_prefix_list_reference_:_TransitGatewayAttachmentId">TransitGatewayAttachmentId</code></td>
<td><p>The ID of the attachment to which traffic is routed.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_create_transit_gateway_prefix_list_reference_:_Blackhole">Blackhole</code></td>
<td><p>Indicates whether to drop traffic that matches this
route.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_create_transit_gateway_prefix_list_reference_:_DryRun">DryRun</code></td>
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
      TransitGatewayPrefixListReference = list(
        TransitGatewayRouteTableId = "string",
        PrefixListId = "string",
        PrefixListOwnerId = "string",
        State = "pending"|"available"|"modifying"|"deleting",
        Blackhole = TRUE|FALSE,
        TransitGatewayAttachment = list(
          TransitGatewayAttachmentId = "string",
          ResourceType = "vpc"|"vpn"|"direct-connect-gateway"|"connect"|"peering"|"tgw-peering",
          ResourceId = "string"
        )
      )
    )

### Request syntax

    svc$create_transit_gateway_prefix_list_reference(
      TransitGatewayRouteTableId = "string",
      PrefixListId = "string",
      TransitGatewayAttachmentId = "string",
      Blackhole = TRUE|FALSE,
      DryRun = TRUE|FALSE
    )
