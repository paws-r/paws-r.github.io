<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_delete_nat_gateway</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes the specified NAT gateway

### Description

Deletes the specified NAT gateway. Deleting a public NAT gateway
disassociates its Elastic IP address, but does not release the address
from your account. Deleting a NAT gateway does not delete any NAT
gateway routes in your route tables.

### Usage

    ec2_delete_nat_gateway(DryRun, NatGatewayId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="ec2_delete_nat_gateway_:_DryRun">DryRun</code></td>
<td><p>Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
<code>DryRunOperation</code>. Otherwise, it is
<code>UnauthorizedOperation</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_delete_nat_gateway_:_NatGatewayId">NatGatewayId</code></td>
<td><p>[required] The ID of the NAT gateway.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      NatGatewayId = "string"
    )

### Request syntax

    svc$delete_nat_gateway(
      DryRun = TRUE|FALSE,
      NatGatewayId = "string"
    )

### Examples

    ## Not run: 
    # This example deletes the specified NAT gateway.
    svc$delete_nat_gateway(
      NatGatewayId = "nat-04ae55e711cec5680"
    )

    ## End(Not run)
