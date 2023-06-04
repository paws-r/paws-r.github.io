<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_delete_vpn_gateway</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes the specified virtual private gateway

### Description

Deletes the specified virtual private gateway. You must first detach the
virtual private gateway from the VPC. Note that you don't need to delete
the virtual private gateway if you plan to delete and recreate the VPN
connection between your VPC and your network.

### Usage

    ec2_delete_vpn_gateway(VpnGatewayId, DryRun)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ec2_delete_vpn_gateway_:_VpnGatewayId">VpnGatewayId</code></td>
<td><p>[required] The ID of the virtual private gateway.</p></td>
</tr>
<tr class="even">
<td><code id="ec2_delete_vpn_gateway_:_DryRun">DryRun</code></td>
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

    svc$delete_vpn_gateway(
      VpnGatewayId = "string",
      DryRun = TRUE|FALSE
    )
