<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_delete_client_vpn_route</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes a route from a Client VPN endpoint

### Description

Deletes a route from a Client VPN endpoint. You can only delete routes
that you manually added using the **CreateClientVpnRoute** action. You
cannot delete routes that were automatically added when associating a
subnet. To remove routes that have been automatically added,
disassociate the target subnet from the Client VPN endpoint.

### Usage

    ec2_delete_client_vpn_route(ClientVpnEndpointId, TargetVpcSubnetId,
      DestinationCidrBlock, DryRun)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ec2_delete_client_vpn_route_:_ClientVpnEndpointId">ClientVpnEndpointId</code></td>
<td><p>[required] The ID of the Client VPN endpoint from which the route
is to be deleted.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_delete_client_vpn_route_:_TargetVpcSubnetId">TargetVpcSubnetId</code></td>
<td><p>The ID of the target subnet used by the route.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_delete_client_vpn_route_:_DestinationCidrBlock">DestinationCidrBlock</code></td>
<td><p>[required] The IPv4 address range, in CIDR notation, of the route
to be deleted.</p></td>
</tr>
<tr class="even">
<td><code id="ec2_delete_client_vpn_route_:_DryRun">DryRun</code></td>
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
      Status = list(
        Code = "creating"|"active"|"failed"|"deleting",
        Message = "string"
      )
    )

### Request syntax

    svc$delete_client_vpn_route(
      ClientVpnEndpointId = "string",
      TargetVpcSubnetId = "string",
      DestinationCidrBlock = "string",
      DryRun = TRUE|FALSE
    )
