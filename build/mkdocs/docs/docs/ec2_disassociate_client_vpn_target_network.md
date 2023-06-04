<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_disassociate_client_vpn_target_network</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Disassociates a target network from the specified Client VPN endpoint

### Description

Disassociates a target network from the specified Client VPN endpoint.
When you disassociate the last target network from a Client VPN, the
following happens:

-   The route that was automatically added for the VPC is deleted

-   All active client connections are terminated

-   New client connections are disallowed

-   The Client VPN endpoint's status changes to `pending-associate`

### Usage

    ec2_disassociate_client_vpn_target_network(ClientVpnEndpointId,
      AssociationId, DryRun)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ec2_disassociate_client_vpn_target_network_:_ClientVpnEndpointId">ClientVpnEndpointId</code></td>
<td><p>[required] The ID of the Client VPN endpoint from which to
disassociate the target network.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_disassociate_client_vpn_target_network_:_AssociationId">AssociationId</code></td>
<td><p>[required] The ID of the target network association.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_disassociate_client_vpn_target_network_:_DryRun">DryRun</code></td>
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
      AssociationId = "string",
      Status = list(
        Code = "associating"|"associated"|"association-failed"|"disassociating"|"disassociated",
        Message = "string"
      )
    )

### Request syntax

    svc$disassociate_client_vpn_target_network(
      ClientVpnEndpointId = "string",
      AssociationId = "string",
      DryRun = TRUE|FALSE
    )
