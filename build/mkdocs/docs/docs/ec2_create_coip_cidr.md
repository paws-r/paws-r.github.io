<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_create_coip_cidr</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a range of customer-owned IP addresses

### Description

Creates a range of customer-owned IP addresses.

### Usage

    ec2_create_coip_cidr(Cidr, CoipPoolId, DryRun)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="ec2_create_coip_cidr_:_Cidr">Cidr</code></td>
<td><p>[required] A customer-owned IP address range to create.</p></td>
</tr>
<tr class="even">
<td><code id="ec2_create_coip_cidr_:_CoipPoolId">CoipPoolId</code></td>
<td><p>[required] The ID of the address pool.</p></td>
</tr>
<tr class="odd">
<td><code id="ec2_create_coip_cidr_:_DryRun">DryRun</code></td>
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
      CoipCidr = list(
        Cidr = "string",
        CoipPoolId = "string",
        LocalGatewayRouteTableId = "string"
      )
    )

### Request syntax

    svc$create_coip_cidr(
      Cidr = "string",
      CoipPoolId = "string",
      DryRun = TRUE|FALSE
    )
