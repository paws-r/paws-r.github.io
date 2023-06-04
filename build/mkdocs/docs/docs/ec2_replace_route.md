<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_replace_route</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Replaces an existing route within a route table in a VPC

### Description

Replaces an existing route within a route table in a VPC.

You must specify either a destination CIDR block or a prefix list ID.
You must also specify exactly one of the resources from the parameter
list, or reset the local route to its default target.

For more information, see [Route
tables](https://docs.aws.amazon.com/vpc/latest/userguide/VPC_Route_Tables.html)
in the *Amazon Virtual Private Cloud User Guide*.

### Usage

    ec2_replace_route(DestinationCidrBlock, DestinationIpv6CidrBlock,
      DestinationPrefixListId, DryRun, VpcEndpointId,
      EgressOnlyInternetGatewayId, GatewayId, InstanceId, LocalTarget,
      NatGatewayId, TransitGatewayId, LocalGatewayId, CarrierGatewayId,
      NetworkInterfaceId, RouteTableId, VpcPeeringConnectionId,
      CoreNetworkArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ec2_replace_route_:_DestinationCidrBlock">DestinationCidrBlock</code></td>
<td><p>The IPv4 CIDR address block used for the destination match. The
value that you provide must match the CIDR of an existing route in the
table.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_replace_route_:_DestinationIpv6CidrBlock">DestinationIpv6CidrBlock</code></td>
<td><p>The IPv6 CIDR address block used for the destination match. The
value that you provide must match the CIDR of an existing route in the
table.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_replace_route_:_DestinationPrefixListId">DestinationPrefixListId</code></td>
<td><p>The ID of the prefix list for the route.</p></td>
</tr>
<tr class="even">
<td><code id="ec2_replace_route_:_DryRun">DryRun</code></td>
<td><p>Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
<code>DryRunOperation</code>. Otherwise, it is
<code>UnauthorizedOperation</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_replace_route_:_VpcEndpointId">VpcEndpointId</code></td>
<td><p>The ID of a VPC endpoint. Supported for Gateway Load Balancer
endpoints only.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_replace_route_:_EgressOnlyInternetGatewayId">EgressOnlyInternetGatewayId</code></td>
<td><p>[IPv6 traffic only] The ID of an egress-only internet
gateway.</p></td>
</tr>
<tr class="odd">
<td><code id="ec2_replace_route_:_GatewayId">GatewayId</code></td>
<td><p>The ID of an internet gateway or virtual private
gateway.</p></td>
</tr>
<tr class="even">
<td><code id="ec2_replace_route_:_InstanceId">InstanceId</code></td>
<td><p>The ID of a NAT instance in your VPC.</p></td>
</tr>
<tr class="odd">
<td><code id="ec2_replace_route_:_LocalTarget">LocalTarget</code></td>
<td><p>Specifies whether to reset the local route to its default target
(<code>local</code>).</p></td>
</tr>
<tr class="even">
<td><code id="ec2_replace_route_:_NatGatewayId">NatGatewayId</code></td>
<td><p>[IPv4 traffic only] The ID of a NAT gateway.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_replace_route_:_TransitGatewayId">TransitGatewayId</code></td>
<td><p>The ID of a transit gateway.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_replace_route_:_LocalGatewayId">LocalGatewayId</code></td>
<td><p>The ID of the local gateway.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_replace_route_:_CarrierGatewayId">CarrierGatewayId</code></td>
<td><p>[IPv4 traffic only] The ID of a carrier gateway.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_replace_route_:_NetworkInterfaceId">NetworkInterfaceId</code></td>
<td><p>The ID of a network interface.</p></td>
</tr>
<tr class="odd">
<td><code id="ec2_replace_route_:_RouteTableId">RouteTableId</code></td>
<td><p>[required] The ID of the route table.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_replace_route_:_VpcPeeringConnectionId">VpcPeeringConnectionId</code></td>
<td><p>The ID of a VPC peering connection.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_replace_route_:_CoreNetworkArn">CoreNetworkArn</code></td>
<td><p>The Amazon Resource Name (ARN) of the core network.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$replace_route(
      DestinationCidrBlock = "string",
      DestinationIpv6CidrBlock = "string",
      DestinationPrefixListId = "string",
      DryRun = TRUE|FALSE,
      VpcEndpointId = "string",
      EgressOnlyInternetGatewayId = "string",
      GatewayId = "string",
      InstanceId = "string",
      LocalTarget = TRUE|FALSE,
      NatGatewayId = "string",
      TransitGatewayId = "string",
      LocalGatewayId = "string",
      CarrierGatewayId = "string",
      NetworkInterfaceId = "string",
      RouteTableId = "string",
      VpcPeeringConnectionId = "string",
      CoreNetworkArn = "string"
    )

### Examples

    ## Not run: 
    # This example replaces the specified route in the specified table table.
    # The new route matches the specified CIDR and sends the traffic to the
    # specified virtual private gateway.
    svc$replace_route(
      DestinationCidrBlock = "10.0.0.0/16",
      GatewayId = "vgw-9a4cacf3",
      RouteTableId = "rtb-22574640"
    )

    ## End(Not run)
