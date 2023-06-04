<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_delete_route</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes the specified route from the specified route table

### Description

Deletes the specified route from the specified route table.

### Usage

    ec2_delete_route(DestinationCidrBlock, DestinationIpv6CidrBlock,
      DestinationPrefixListId, DryRun, RouteTableId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ec2_delete_route_:_DestinationCidrBlock">DestinationCidrBlock</code></td>
<td><p>The IPv4 CIDR range for the route. The value you specify must
match the CIDR for the route exactly.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_delete_route_:_DestinationIpv6CidrBlock">DestinationIpv6CidrBlock</code></td>
<td><p>The IPv6 CIDR range for the route. The value you specify must
match the CIDR for the route exactly.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_delete_route_:_DestinationPrefixListId">DestinationPrefixListId</code></td>
<td><p>The ID of the prefix list for the route.</p></td>
</tr>
<tr class="even">
<td><code id="ec2_delete_route_:_DryRun">DryRun</code></td>
<td><p>Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
<code>DryRunOperation</code>. Otherwise, it is
<code>UnauthorizedOperation</code>.</p></td>
</tr>
<tr class="odd">
<td><code id="ec2_delete_route_:_RouteTableId">RouteTableId</code></td>
<td><p>[required] The ID of the route table.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_route(
      DestinationCidrBlock = "string",
      DestinationIpv6CidrBlock = "string",
      DestinationPrefixListId = "string",
      DryRun = TRUE|FALSE,
      RouteTableId = "string"
    )

### Examples

    ## Not run: 
    # This example deletes the specified route from the specified route table.
    svc$delete_route(
      DestinationCidrBlock = "0.0.0.0/0",
      RouteTableId = "rtb-22574640"
    )

    ## End(Not run)
