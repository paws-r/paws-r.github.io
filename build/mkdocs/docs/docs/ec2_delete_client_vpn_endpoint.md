<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_delete_client_vpn_endpoint</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes the specified Client VPN endpoint

### Description

Deletes the specified Client VPN endpoint. You must disassociate all
target networks before you can delete a Client VPN endpoint.

### Usage

    ec2_delete_client_vpn_endpoint(ClientVpnEndpointId, DryRun)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ec2_delete_client_vpn_endpoint_:_ClientVpnEndpointId">ClientVpnEndpointId</code></td>
<td><p>[required] The ID of the Client VPN to be deleted.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_delete_client_vpn_endpoint_:_DryRun">DryRun</code></td>
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
        Code = "pending-associate"|"available"|"deleting"|"deleted",
        Message = "string"
      )
    )

### Request syntax

    svc$delete_client_vpn_endpoint(
      ClientVpnEndpointId = "string",
      DryRun = TRUE|FALSE
    )
