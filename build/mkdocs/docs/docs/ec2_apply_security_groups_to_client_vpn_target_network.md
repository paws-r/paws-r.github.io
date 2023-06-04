<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_apply_security_groups_to_client_vpn_target_network</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Applies a security group to the association between the target network and the Client VPN endpoint

### Description

Applies a security group to the association between the target network
and the Client VPN endpoint. This action replaces the existing security
groups with the specified security groups.

### Usage

    ec2_apply_security_groups_to_client_vpn_target_network(
      ClientVpnEndpointId, VpcId, SecurityGroupIds, DryRun)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ec2_apply_security_groups_to_client_vpn_target_network_:_ClientVpnEndpointId">ClientVpnEndpointId</code></td>
<td><p>[required] The ID of the Client VPN endpoint.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_apply_security_groups_to_client_vpn_target_network_:_VpcId">VpcId</code></td>
<td><p>[required] The ID of the VPC in which the associated target
network is located.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_apply_security_groups_to_client_vpn_target_network_:_SecurityGroupIds">SecurityGroupIds</code></td>
<td><p>[required] The IDs of the security groups to apply to the
associated target network. Up to 5 security groups can be applied to an
associated target network.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_apply_security_groups_to_client_vpn_target_network_:_DryRun">DryRun</code></td>
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
      SecurityGroupIds = list(
        "string"
      )
    )

### Request syntax

    svc$apply_security_groups_to_client_vpn_target_network(
      ClientVpnEndpointId = "string",
      VpcId = "string",
      SecurityGroupIds = list(
        "string"
      ),
      DryRun = TRUE|FALSE
    )
