<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_create_local_gateway_route</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a static route for the specified local gateway route table

### Description

Creates a static route for the specified local gateway route table. You
must specify one of the following targets:

-   `LocalGatewayVirtualInterfaceGroupId`

-   `NetworkInterfaceId`

### Usage

    ec2_create_local_gateway_route(DestinationCidrBlock,
      LocalGatewayRouteTableId, LocalGatewayVirtualInterfaceGroupId, DryRun,
      NetworkInterfaceId, DestinationPrefixListId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ec2_create_local_gateway_route_:_DestinationCidrBlock">DestinationCidrBlock</code></td>
<td><p>The CIDR range used for destination matches. Routing decisions
are based on the most specific match.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_create_local_gateway_route_:_LocalGatewayRouteTableId">LocalGatewayRouteTableId</code></td>
<td><p>[required] The ID of the local gateway route table.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_create_local_gateway_route_:_LocalGatewayVirtualInterfaceGroupId">LocalGatewayVirtualInterfaceGroupId</code></td>
<td><p>The ID of the virtual interface group.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_create_local_gateway_route_:_DryRun">DryRun</code></td>
<td><p>Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
<code>DryRunOperation</code>. Otherwise, it is
<code>UnauthorizedOperation</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_create_local_gateway_route_:_NetworkInterfaceId">NetworkInterfaceId</code></td>
<td><p>The ID of the network interface.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_create_local_gateway_route_:_DestinationPrefixListId">DestinationPrefixListId</code></td>
<td><p>The ID of the prefix list. Use a prefix list in place of
<code>DestinationCidrBlock</code>. You cannot use
<code>DestinationPrefixListId</code> and
<code>DestinationCidrBlock</code> in the same request.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Route = list(
        DestinationCidrBlock = "string",
        LocalGatewayVirtualInterfaceGroupId = "string",
        Type = "static"|"propagated",
        State = "pending"|"active"|"blackhole"|"deleting"|"deleted",
        LocalGatewayRouteTableId = "string",
        LocalGatewayRouteTableArn = "string",
        OwnerId = "string",
        SubnetId = "string",
        CoipPoolId = "string",
        NetworkInterfaceId = "string",
        DestinationPrefixListId = "string"
      )
    )

### Request syntax

    svc$create_local_gateway_route(
      DestinationCidrBlock = "string",
      LocalGatewayRouteTableId = "string",
      LocalGatewayVirtualInterfaceGroupId = "string",
      DryRun = TRUE|FALSE,
      NetworkInterfaceId = "string",
      DestinationPrefixListId = "string"
    )
