<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_authorize_client_vpn_ingress</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Adds an ingress authorization rule to a Client VPN endpoint

### Description

Adds an ingress authorization rule to a Client VPN endpoint. Ingress
authorization rules act as firewall rules that grant access to networks.
You must configure ingress authorization rules to enable clients to
access resources in Amazon Web Services or on-premises networks.

### Usage

    ec2_authorize_client_vpn_ingress(ClientVpnEndpointId, TargetNetworkCidr,
      AccessGroupId, AuthorizeAllGroups, Description, ClientToken, DryRun)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ec2_authorize_client_vpn_ingress_:_ClientVpnEndpointId">ClientVpnEndpointId</code></td>
<td><p>[required] The ID of the Client VPN endpoint.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_authorize_client_vpn_ingress_:_TargetNetworkCidr">TargetNetworkCidr</code></td>
<td><p>[required] The IPv4 address range, in CIDR notation, of the
network for which access is being authorized.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_authorize_client_vpn_ingress_:_AccessGroupId">AccessGroupId</code></td>
<td><p>The ID of the group to grant access to, for example, the Active
Directory group or identity provider (IdP) group. Required if
<code>AuthorizeAllGroups</code> is <code>false</code> or not
specified.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_authorize_client_vpn_ingress_:_AuthorizeAllGroups">AuthorizeAllGroups</code></td>
<td><p>Indicates whether to grant access to all clients. Specify
<code>true</code> to grant all clients who successfully establish a VPN
connection access to the network. Must be set to <code>true</code> if
<code>AccessGroupId</code> is not specified.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_authorize_client_vpn_ingress_:_Description">Description</code></td>
<td><p>A brief description of the authorization rule.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_authorize_client_vpn_ingress_:_ClientToken">ClientToken</code></td>
<td><p>Unique, case-sensitive identifier that you provide to ensure the
idempotency of the request. For more information, see <a
href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html">How
to ensure idempotency</a>.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_authorize_client_vpn_ingress_:_DryRun">DryRun</code></td>
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

    svc$authorize_client_vpn_ingress(
      ClientVpnEndpointId = "string",
      TargetNetworkCidr = "string",
      AccessGroupId = "string",
      AuthorizeAllGroups = TRUE|FALSE,
      Description = "string",
      ClientToken = "string",
      DryRun = TRUE|FALSE
    )
