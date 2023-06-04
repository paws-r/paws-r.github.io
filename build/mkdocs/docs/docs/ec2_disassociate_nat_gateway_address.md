<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_disassociate_nat_gateway_address</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Disassociates secondary Elastic IP addresses (EIPs) from a public NAT gateway

### Description

Disassociates secondary Elastic IP addresses (EIPs) from a public NAT
gateway. You cannot disassociate your primary EIP. For more information,
see [Edit secondary IP address
associations](https://docs.aws.amazon.com/vpc/latest/userguide/vpc-nat-gateway.html#nat-gateway-edit-secondary)
in the *Amazon Virtual Private Cloud User Guide*.

While disassociating is in progress, you cannot associate/disassociate
additional EIPs while the connections are being drained. You are,
however, allowed to delete the NAT gateway.

An EIP will only be released at the end of MaxDrainDurationSeconds. The
EIPs stay associated and support the existing connections but do not
support any new connections (new connections are distributed across the
remaining associated EIPs). As the existing connections drain out, the
EIPs (and the corresponding private IPs mapped to them) get released.

### Usage

    ec2_disassociate_nat_gateway_address(NatGatewayId, AssociationIds,
      MaxDrainDurationSeconds, DryRun)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ec2_disassociate_nat_gateway_address_:_NatGatewayId">NatGatewayId</code></td>
<td><p>[required] The NAT gateway ID.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_disassociate_nat_gateway_address_:_AssociationIds">AssociationIds</code></td>
<td><p>[required] The association IDs of EIPs that have been associated
with the NAT gateway.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_disassociate_nat_gateway_address_:_MaxDrainDurationSeconds">MaxDrainDurationSeconds</code></td>
<td><p>The maximum amount of time to wait (in seconds) before forcibly
releasing the IP addresses if connections are still in progress. Default
value is 350 seconds.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_disassociate_nat_gateway_address_:_DryRun">DryRun</code></td>
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
      NatGatewayId = "string",
      NatGatewayAddresses = list(
        list(
          AllocationId = "string",
          NetworkInterfaceId = "string",
          PrivateIp = "string",
          PublicIp = "string",
          AssociationId = "string",
          IsPrimary = TRUE|FALSE,
          FailureMessage = "string",
          Status = "assigning"|"unassigning"|"associating"|"disassociating"|"succeeded"|"failed"
        )
      )
    )

### Request syntax

    svc$disassociate_nat_gateway_address(
      NatGatewayId = "string",
      AssociationIds = list(
        "string"
      ),
      MaxDrainDurationSeconds = 123,
      DryRun = TRUE|FALSE
    )
