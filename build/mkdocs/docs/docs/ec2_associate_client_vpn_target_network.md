<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_associate_client_vpn_target_network</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Associates a target network with a Client VPN endpoint

### Description

Associates a target network with a Client VPN endpoint. A target network
is a subnet in a VPC. You can associate multiple subnets from the same
VPC with a Client VPN endpoint. You can associate only one subnet in
each Availability Zone. We recommend that you associate at least two
subnets to provide Availability Zone redundancy.

If you specified a VPC when you created the Client VPN endpoint or if
you have previous subnet associations, the specified subnet must be in
the same VPC. To specify a subnet that's in a different VPC, you must
first modify the Client VPN endpoint (`modify_client_vpn_endpoint`) and
change the VPC that's associated with it.

### Usage

    ec2_associate_client_vpn_target_network(ClientVpnEndpointId, SubnetId,
      ClientToken, DryRun)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ec2_associate_client_vpn_target_network_:_ClientVpnEndpointId">ClientVpnEndpointId</code></td>
<td><p>[required] The ID of the Client VPN endpoint.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_associate_client_vpn_target_network_:_SubnetId">SubnetId</code></td>
<td><p>[required] The ID of the subnet to associate with the Client VPN
endpoint.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_associate_client_vpn_target_network_:_ClientToken">ClientToken</code></td>
<td><p>Unique, case-sensitive identifier that you provide to ensure the
idempotency of the request. For more information, see <a
href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html">How
to ensure idempotency</a>.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_associate_client_vpn_target_network_:_DryRun">DryRun</code></td>
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

    svc$associate_client_vpn_target_network(
      ClientVpnEndpointId = "string",
      SubnetId = "string",
      ClientToken = "string",
      DryRun = TRUE|FALSE
    )
