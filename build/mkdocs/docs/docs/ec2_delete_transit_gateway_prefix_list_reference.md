<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_delete_transit_gateway_prefix_list_reference</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes a reference (route) to a prefix list in a specified transit gateway route table

### Description

Deletes a reference (route) to a prefix list in a specified transit
gateway route table.

### Usage

    ec2_delete_transit_gateway_prefix_list_reference(
      TransitGatewayRouteTableId, PrefixListId, DryRun)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ec2_delete_transit_gateway_prefix_list_reference_:_TransitGatewayRouteTableId">TransitGatewayRouteTableId</code></td>
<td><p>[required] The ID of the route table.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_delete_transit_gateway_prefix_list_reference_:_PrefixListId">PrefixListId</code></td>
<td><p>[required] The ID of the prefix list.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_delete_transit_gateway_prefix_list_reference_:_DryRun">DryRun</code></td>
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

    svc$delete_transit_gateway_prefix_list_reference(
      TransitGatewayRouteTableId = "string",
      PrefixListId = "string",
      DryRun = TRUE|FALSE
    )
