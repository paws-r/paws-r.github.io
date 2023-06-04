<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_terminate_client_vpn_connections</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Terminates active Client VPN endpoint connections

### Description

Terminates active Client VPN endpoint connections. This action can be
used to terminate a specific client connection, or up to five
connections established by a specific user.

### Usage

    ec2_terminate_client_vpn_connections(ClientVpnEndpointId, ConnectionId,
      Username, DryRun)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ec2_terminate_client_vpn_connections_:_ClientVpnEndpointId">ClientVpnEndpointId</code></td>
<td><p>[required] The ID of the Client VPN endpoint to which the client
is connected.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_terminate_client_vpn_connections_:_ConnectionId">ConnectionId</code></td>
<td><p>The ID of the client connection to be terminated.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_terminate_client_vpn_connections_:_Username">Username</code></td>
<td><p>The name of the user who initiated the connection. Use this
option to terminate all active connections for the specified user. This
option can only be used if the user has established up to five
connections.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_terminate_client_vpn_connections_:_DryRun">DryRun</code></td>
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
      ClientVpnEndpointId = "string",
      Username = "string",
      ConnectionStatuses = list(
        list(
          ConnectionId = "string",
          PreviousStatus = list(
            Code = "active"|"failed-to-terminate"|"terminating"|"terminated",
            Message = "string"
          ),
          CurrentStatus = list(
            Code = "active"|"failed-to-terminate"|"terminating"|"terminated",
            Message = "string"
          )
        )
      )
    )

### Request syntax

    svc$terminate_client_vpn_connections(
      ClientVpnEndpointId = "string",
      ConnectionId = "string",
      Username = "string",
      DryRun = TRUE|FALSE
    )
