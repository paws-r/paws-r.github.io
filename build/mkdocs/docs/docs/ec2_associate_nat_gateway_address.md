<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_associate_nat_gateway_address</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Associates Elastic IP addresses (EIPs) and private IPv4 addresses with a public NAT gateway

### Description

Associates Elastic IP addresses (EIPs) and private IPv4 addresses with a
public NAT gateway. For more information, see [Work with NAT
gateways](https://docs.aws.amazon.com/vpc/latest/userguide/vpc-nat-gateway.html#nat-gateway-working-with)
in the *Amazon Virtual Private Cloud User Guide*.

By default, you can associate up to 2 Elastic IP addresses per public
NAT gateway. You can increase the limit by requesting a quota
adjustment. For more information, see [Elastic IP address
quotas](https://docs.aws.amazon.com/vpc/latest/userguide/amazon-vpc-limits.html#vpc-limits-eips)
in the *Amazon Virtual Private Cloud User Guide*.

### Usage

    ec2_associate_nat_gateway_address(NatGatewayId, AllocationIds,
      PrivateIpAddresses, DryRun)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ec2_associate_nat_gateway_address_:_NatGatewayId">NatGatewayId</code></td>
<td><p>[required] The NAT gateway ID.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_associate_nat_gateway_address_:_AllocationIds">AllocationIds</code></td>
<td><p>[required] The allocation IDs of EIPs that you want to associate
with your NAT gateway.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_associate_nat_gateway_address_:_PrivateIpAddresses">PrivateIpAddresses</code></td>
<td><p>The private IPv4 addresses that you want to assign to the NAT
gateway.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_associate_nat_gateway_address_:_DryRun">DryRun</code></td>
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

    svc$associate_nat_gateway_address(
      NatGatewayId = "string",
      AllocationIds = list(
        "string"
      ),
      PrivateIpAddresses = list(
        "string"
      ),
      DryRun = TRUE|FALSE
    )
