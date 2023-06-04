<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_get_vpn_tunnel_replacement_status</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Get details of available tunnel endpoint maintenance

### Description

Get details of available tunnel endpoint maintenance.

### Usage

    ec2_get_vpn_tunnel_replacement_status(VpnConnectionId,
      VpnTunnelOutsideIpAddress, DryRun)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ec2_get_vpn_tunnel_replacement_status_:_VpnConnectionId">VpnConnectionId</code></td>
<td><p>[required] The ID of the Site-to-Site VPN connection.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_get_vpn_tunnel_replacement_status_:_VpnTunnelOutsideIpAddress">VpnTunnelOutsideIpAddress</code></td>
<td><p>[required] The external IP address of the VPN tunnel.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_get_vpn_tunnel_replacement_status_:_DryRun">DryRun</code></td>
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
      VpnConnectionId = "string",
      TransitGatewayId = "string",
      CustomerGatewayId = "string",
      VpnGatewayId = "string",
      VpnTunnelOutsideIpAddress = "string",
      MaintenanceDetails = list(
        PendingMaintenance = "string",
        MaintenanceAutoAppliedAfter = as.POSIXct(
          "2015-01-01"
        ),
        LastMaintenanceApplied = as.POSIXct(
          "2015-01-01"
        )
      )
    )

### Request syntax

    svc$get_vpn_tunnel_replacement_status(
      VpnConnectionId = "string",
      VpnTunnelOutsideIpAddress = "string",
      DryRun = TRUE|FALSE
    )
