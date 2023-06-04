<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_attach_vpn_gateway</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Attaches a virtual private gateway to a VPC

### Description

Attaches a virtual private gateway to a VPC. You can attach one virtual
private gateway to one VPC at a time.

For more information, see [Amazon Web Services Site-to-Site
VPN](https://docs.aws.amazon.com/vpn/latest/s2svpn/VPC_VPN.html) in the
*Amazon Web Services Site-to-Site VPN User Guide*.

### Usage

    ec2_attach_vpn_gateway(VpcId, VpnGatewayId, DryRun)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="ec2_attach_vpn_gateway_:_VpcId">VpcId</code></td>
<td><p>[required] The ID of the VPC.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_attach_vpn_gateway_:_VpnGatewayId">VpnGatewayId</code></td>
<td><p>[required] The ID of the virtual private gateway.</p></td>
</tr>
<tr class="odd">
<td><code id="ec2_attach_vpn_gateway_:_DryRun">DryRun</code></td>
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
      VpcAttachment = list(
        State = "attaching"|"attached"|"detaching"|"detached",
        VpcId = "string"
      )
    )

### Request syntax

    svc$attach_vpn_gateway(
      VpcId = "string",
      VpnGatewayId = "string",
      DryRun = TRUE|FALSE
    )
