<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_unassign_private_nat_gateway_address</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Unassigns secondary private IPv4 addresses from a private NAT gateway

### Description

Unassigns secondary private IPv4 addresses from a private NAT gateway.
You cannot unassign your primary private IP. For more information, see
[Edit secondary IP address
associations](https://docs.aws.amazon.com/vpc/latest/userguide/vpc-nat-gateway.html#nat-gateway-edit-secondary)
in the *Amazon Virtual Private Cloud User Guide*.

While unassigning is in progress, you cannot assign/unassign additional
IP addresses while the connections are being drained. You are, however,
allowed to delete the NAT gateway.

A private IP address will only be released at the end of
MaxDrainDurationSeconds. The private IP addresses stay associated and
support the existing connections but do not support any new connections
(new connections are distributed across the remaining assigned private
IP address). After the existing connections drain out, the private IP
addresses get released.

### Usage

    ec2_unassign_private_nat_gateway_address(NatGatewayId,
      PrivateIpAddresses, MaxDrainDurationSeconds, DryRun)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ec2_unassign_private_nat_gateway_address_:_NatGatewayId">NatGatewayId</code></td>
<td><p>[required] The NAT gateway ID.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_unassign_private_nat_gateway_address_:_PrivateIpAddresses">PrivateIpAddresses</code></td>
<td><p>[required] The private IPv4 addresses you want to
unassign.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_unassign_private_nat_gateway_address_:_MaxDrainDurationSeconds">MaxDrainDurationSeconds</code></td>
<td><p>The maximum amount of time to wait (in seconds) before forcibly
releasing the IP addresses if connections are still in progress. Default
value is 350 seconds.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_unassign_private_nat_gateway_address_:_DryRun">DryRun</code></td>
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

    svc$unassign_private_nat_gateway_address(
      NatGatewayId = "string",
      PrivateIpAddresses = list(
        "string"
      ),
      MaxDrainDurationSeconds = 123,
      DryRun = TRUE|FALSE
    )
