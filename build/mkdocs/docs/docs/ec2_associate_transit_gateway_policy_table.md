<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_associate_transit_gateway_policy_table</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Associates the specified transit gateway attachment with a transit gateway policy table

### Description

Associates the specified transit gateway attachment with a transit
gateway policy table.

### Usage

    ec2_associate_transit_gateway_policy_table(TransitGatewayPolicyTableId,
      TransitGatewayAttachmentId, DryRun)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ec2_associate_transit_gateway_policy_table_:_TransitGatewayPolicyTableId">TransitGatewayPolicyTableId</code></td>
<td><p>[required] The ID of the transit gateway policy table to
associate with the transit gateway attachment.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_associate_transit_gateway_policy_table_:_TransitGatewayAttachmentId">TransitGatewayAttachmentId</code></td>
<td><p>[required] The ID of the transit gateway attachment to associate
with the policy table.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_associate_transit_gateway_policy_table_:_DryRun">DryRun</code></td>
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
      Association = list(
        TransitGatewayPolicyTableId = "string",
        TransitGatewayAttachmentId = "string",
        ResourceId = "string",
        ResourceType = "vpc"|"vpn"|"direct-connect-gateway"|"connect"|"peering"|"tgw-peering",
        State = "associating"|"associated"|"disassociating"|"disassociated"
      )
    )

### Request syntax

    svc$associate_transit_gateway_policy_table(
      TransitGatewayPolicyTableId = "string",
      TransitGatewayAttachmentId = "string",
      DryRun = TRUE|FALSE
    )
