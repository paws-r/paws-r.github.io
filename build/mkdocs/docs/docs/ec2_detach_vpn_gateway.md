<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_detach_vpn_gateway</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Detaches a virtual private gateway from a VPC

### Description

Detaches a virtual private gateway from a VPC. You do this if you're
planning to turn off the VPC and not use it anymore. You can confirm a
virtual private gateway has been completely detached from a VPC by
describing the virtual private gateway (any attachments to the virtual
private gateway are also described).

You must wait for the attachment's state to switch to `detached` before
you can delete the VPC or attach a different VPC to the virtual private
gateway.

### Usage

    ec2_detach_vpn_gateway(VpcId, VpnGatewayId, DryRun)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="ec2_detach_vpn_gateway_:_VpcId">VpcId</code></td>
<td><p>[required] The ID of the VPC.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_detach_vpn_gateway_:_VpnGatewayId">VpnGatewayId</code></td>
<td><p>[required] The ID of the virtual private gateway.</p></td>
</tr>
<tr class="odd">
<td><code id="ec2_detach_vpn_gateway_:_DryRun">DryRun</code></td>
<td><p>Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
<code>DryRunOperation</code>. Otherwise, it is
<code>UnauthorizedOperation</code>.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$detach_vpn_gateway(
      VpcId = "string",
      VpnGatewayId = "string",
      DryRun = TRUE|FALSE
    )
