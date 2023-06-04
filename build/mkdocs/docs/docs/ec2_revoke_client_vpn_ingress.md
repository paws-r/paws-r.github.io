<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_revoke_client_vpn_ingress</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Removes an ingress authorization rule from a Client VPN endpoint

### Description

Removes an ingress authorization rule from a Client VPN endpoint.

### Usage

    ec2_revoke_client_vpn_ingress(ClientVpnEndpointId, TargetNetworkCidr,
      AccessGroupId, RevokeAllGroups, DryRun)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ec2_revoke_client_vpn_ingress_:_ClientVpnEndpointId">ClientVpnEndpointId</code></td>
<td><p>[required] The ID of the Client VPN endpoint with which the
authorization rule is associated.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_revoke_client_vpn_ingress_:_TargetNetworkCidr">TargetNetworkCidr</code></td>
<td><p>[required] The IPv4 address range, in CIDR notation, of the
network for which access is being removed.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_revoke_client_vpn_ingress_:_AccessGroupId">AccessGroupId</code></td>
<td><p>The ID of the Active Directory group for which to revoke
access.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_revoke_client_vpn_ingress_:_RevokeAllGroups">RevokeAllGroups</code></td>
<td><p>Indicates whether access should be revoked for all
clients.</p></td>
</tr>
<tr class="odd">
<td><code id="ec2_revoke_client_vpn_ingress_:_DryRun">DryRun</code></td>
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
        Code = "authorizing"|"active"|"failed"|"revoking",
        Message = "string"
      )
    )

### Request syntax

    svc$revoke_client_vpn_ingress(
      ClientVpnEndpointId = "string",
      TargetNetworkCidr = "string",
      AccessGroupId = "string",
      RevokeAllGroups = TRUE|FALSE,
      DryRun = TRUE|FALSE
    )
