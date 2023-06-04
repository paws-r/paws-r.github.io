<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_create_route</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a route in a route table within a VPC

### Description

Creates a route in a route table within a VPC.

You must specify either a destination CIDR block or a prefix list ID.
You must also specify exactly one of the resources from the parameter
list.

When determining how to route traffic, we use the route with the most
specific match. For example, traffic is destined for the IPv4 address
`⁠192.0.2.3⁠`, and the route table includes the following two IPv4 routes:

-   `⁠192.0.2.0/24⁠` (goes to some target A)

-   `⁠192.0.2.0/28⁠` (goes to some target B)

Both routes apply to the traffic destined for `⁠192.0.2.3⁠`. However, the
second route in the list covers a smaller number of IP addresses and is
therefore more specific, so we use that route to determine where to
target the traffic.

For more information about route tables, see [Route
tables](https://docs.aws.amazon.com/vpc/latest/userguide/VPC_Route_Tables.html)
in the *Amazon Virtual Private Cloud User Guide*.

### Usage

    ec2_create_route(DestinationCidrBlock, DestinationIpv6CidrBlock,
      DestinationPrefixListId, DryRun, VpcEndpointId,
      EgressOnlyInternetGatewayId, GatewayId, InstanceId, NatGatewayId,
      TransitGatewayId, LocalGatewayId, CarrierGatewayId, NetworkInterfaceId,
      RouteTableId, VpcPeeringConnectionId, CoreNetworkArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ec2_create_route_:_DestinationCidrBlock">DestinationCidrBlock</code></td>
<td><p>The IPv4 CIDR address block used for the destination match.
Routing decisions are based on the most specific match. We modify the
specified CIDR block to its canonical form; for example, if you specify
<code style="white-space: pre;">⁠100.68.0.18/18⁠</code>, we modify it to
<code style="white-space: pre;">⁠100.68.0.0/18⁠</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_create_route_:_DestinationIpv6CidrBlock">DestinationIpv6CidrBlock</code></td>
<td><p>The IPv6 CIDR block used for the destination match. Routing
decisions are based on the most specific match.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_create_route_:_DestinationPrefixListId">DestinationPrefixListId</code></td>
<td><p>The ID of a prefix list used for the destination match.</p></td>
</tr>
<tr class="even">
<td><code id="ec2_create_route_:_DryRun">DryRun</code></td>
<td><p>Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
<code>DryRunOperation</code>. Otherwise, it is
<code>UnauthorizedOperation</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_create_route_:_VpcEndpointId">VpcEndpointId</code></td>
<td><p>The ID of a VPC endpoint. Supported for Gateway Load Balancer
endpoints only.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_create_route_:_EgressOnlyInternetGatewayId">EgressOnlyInternetGatewayId</code></td>
<td><p>[IPv6 traffic only] The ID of an egress-only internet
gateway.</p></td>
</tr>
<tr class="odd">
<td><code id="ec2_create_route_:_GatewayId">GatewayId</code></td>
<td><p>The ID of an internet gateway or virtual private gateway attached
to your VPC.</p></td>
</tr>
<tr class="even">
<td><code id="ec2_create_route_:_InstanceId">InstanceId</code></td>
<td><p>The ID of a NAT instance in your VPC. The operation fails if you
specify an instance ID unless exactly one network interface is
attached.</p></td>
</tr>
<tr class="odd">
<td><code id="ec2_create_route_:_NatGatewayId">NatGatewayId</code></td>
<td><p>[IPv4 traffic only] The ID of a NAT gateway.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_create_route_:_TransitGatewayId">TransitGatewayId</code></td>
<td><p>The ID of a transit gateway.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_create_route_:_LocalGatewayId">LocalGatewayId</code></td>
<td><p>The ID of the local gateway.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_create_route_:_CarrierGatewayId">CarrierGatewayId</code></td>
<td><p>The ID of the carrier gateway.</p>
<p>You can only use this option when the VPC contains a subnet which is
associated with a Wavelength Zone.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_create_route_:_NetworkInterfaceId">NetworkInterfaceId</code></td>
<td><p>The ID of a network interface.</p></td>
</tr>
<tr class="even">
<td><code id="ec2_create_route_:_RouteTableId">RouteTableId</code></td>
<td><p>[required] The ID of the route table for the route.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_create_route_:_VpcPeeringConnectionId">VpcPeeringConnectionId</code></td>
<td><p>The ID of a VPC peering connection.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_create_route_:_CoreNetworkArn">CoreNetworkArn</code></td>
<td><p>The Amazon Resource Name (ARN) of the core network.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Return = TRUE|FALSE
    )

### Request syntax

    svc$create_route(
      DestinationCidrBlock = "string",
      DestinationIpv6CidrBlock = "string",
      DestinationPrefixListId = "string",
      DryRun = TRUE|FALSE,
      VpcEndpointId = "string",
      EgressOnlyInternetGatewayId = "string",
      GatewayId = "string",
      InstanceId = "string",
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
    # This example creates a route for the specified route table. The route
    # matches all traffic (0.0.0.0/0) and routes it to the specified Internet
    # gateway.
    svc$create_route(
      DestinationCidrBlock = "0.0.0.0/0",
      GatewayId = "igw-c0a643a9",
      RouteTableId = "rtb-22574640"
    )

    ## End(Not run)
