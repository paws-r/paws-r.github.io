<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_replace_vpn_tunnel</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Trigger replacement of specified VPN tunnel

### Description

Trigger replacement of specified VPN tunnel.

### Usage

    ec2_replace_vpn_tunnel(VpnConnectionId, VpnTunnelOutsideIpAddress,
      ApplyPendingMaintenance, DryRun)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ec2_replace_vpn_tunnel_:_VpnConnectionId">VpnConnectionId</code></td>
<td><p>[required] The ID of the Site-to-Site VPN connection.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_replace_vpn_tunnel_:_VpnTunnelOutsideIpAddress">VpnTunnelOutsideIpAddress</code></td>
<td><p>[required] The external IP address of the VPN tunnel.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_replace_vpn_tunnel_:_ApplyPendingMaintenance">ApplyPendingMaintenance</code></td>
<td><p>Trigger pending tunnel endpoint maintenance.</p></td>
</tr>
<tr class="even">
<td><code id="ec2_replace_vpn_tunnel_:_DryRun">DryRun</code></td>
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
      Return = TRUE|FALSE
    )

### Request syntax

    svc$replace_vpn_tunnel(
      VpnConnectionId = "string",
      VpnTunnelOutsideIpAddress = "string",
      ApplyPendingMaintenance = TRUE|FALSE,
      DryRun = TRUE|FALSE
    )
