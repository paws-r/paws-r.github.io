<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_delete_vpn_connection</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes the specified VPN connection

### Description

Deletes the specified VPN connection.

If you're deleting the VPC and its associated components, we recommend
that you detach the virtual private gateway from the VPC and delete the
VPC before deleting the VPN connection. If you believe that the tunnel
credentials for your VPN connection have been compromised, you can
delete the VPN connection and create a new one that has new keys,
without needing to delete the VPC or virtual private gateway. If you
create a new VPN connection, you must reconfigure the customer gateway
device using the new configuration information returned with the new VPN
connection ID.

For certificate-based authentication, delete all Certificate Manager
(ACM) private certificates used for the Amazon Web Services-side tunnel
endpoints for the VPN connection before deleting the VPN connection.

### Usage

    ec2_delete_vpn_connection(VpnConnectionId, DryRun)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ec2_delete_vpn_connection_:_VpnConnectionId">VpnConnectionId</code></td>
<td><p>[required] The ID of the VPN connection.</p></td>
</tr>
<tr class="even">
<td><code id="ec2_delete_vpn_connection_:_DryRun">DryRun</code></td>
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

    svc$delete_vpn_connection(
      VpnConnectionId = "string",
      DryRun = TRUE|FALSE
    )
