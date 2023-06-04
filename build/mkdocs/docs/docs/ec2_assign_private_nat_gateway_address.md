<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_assign_private_nat_gateway_address</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Assigns one or more private IPv4 addresses to a private NAT gateway

### Description

Assigns one or more private IPv4 addresses to a private NAT gateway. For
more information, see [Work with NAT
gateways](https://docs.aws.amazon.com/vpc/latest/userguide/vpc-nat-gateway.html#nat-gateway-working-with)
in the *Amazon Virtual Private Cloud User Guide*.

### Usage

    ec2_assign_private_nat_gateway_address(NatGatewayId, PrivateIpAddresses,
      PrivateIpAddressCount, DryRun)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ec2_assign_private_nat_gateway_address_:_NatGatewayId">NatGatewayId</code></td>
<td><p>[required] The NAT gateway ID.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_assign_private_nat_gateway_address_:_PrivateIpAddresses">PrivateIpAddresses</code></td>
<td><p>The private IPv4 addresses you want to assign to the private NAT
gateway.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_assign_private_nat_gateway_address_:_PrivateIpAddressCount">PrivateIpAddressCount</code></td>
<td><p>The number of private IP addresses to assign to the NAT gateway.
You can't specify this parameter when also specifying private IP
addresses.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_assign_private_nat_gateway_address_:_DryRun">DryRun</code></td>
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

    svc$assign_private_nat_gateway_address(
      NatGatewayId = "string",
      PrivateIpAddresses = list(
        "string"
      ),
      PrivateIpAddressCount = 123,
      DryRun = TRUE|FALSE
    )
