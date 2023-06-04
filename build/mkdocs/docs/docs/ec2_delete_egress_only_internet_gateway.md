<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_delete_egress_only_internet_gateway</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes an egress-only internet gateway

### Description

Deletes an egress-only internet gateway.

### Usage

    ec2_delete_egress_only_internet_gateway(DryRun,
      EgressOnlyInternetGatewayId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ec2_delete_egress_only_internet_gateway_:_DryRun">DryRun</code></td>
<td><p>Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
<code>DryRunOperation</code>. Otherwise, it is
<code>UnauthorizedOperation</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_delete_egress_only_internet_gateway_:_EgressOnlyInternetGatewayId">EgressOnlyInternetGatewayId</code></td>
<td><p>[required] The ID of the egress-only internet gateway.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ReturnCode = TRUE|FALSE
    )

### Request syntax

    svc$delete_egress_only_internet_gateway(
      DryRun = TRUE|FALSE,
      EgressOnlyInternetGatewayId = "string"
    )
