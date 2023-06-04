<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_describe_route_tables</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes one or more of your route tables

### Description

Describes one or more of your route tables.

Each subnet in your VPC must be associated with a route table. If a
subnet is not explicitly associated with any route table, it is
implicitly associated with the main route table. This command does not
return the subnet ID for implicit associations.

For more information, see [Route
tables](https://docs.aws.amazon.com/vpc/latest/userguide/VPC_Route_Tables.html)
in the *Amazon Virtual Private Cloud User Guide*.

### Usage

    ec2_describe_route_tables(Filters, DryRun, RouteTableIds, NextToken,
      MaxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="ec2_describe_route_tables_:_Filters">Filters</code></td>
<td><p>One or more filters.</p>
<ul>
<li><p><code>association.route-table-association-id</code> - The ID of
an association ID for the route table.</p></li>
<li><p><code>association.route-table-id</code> - The ID of the route
table involved in the association.</p></li>
<li><p><code>association.subnet-id</code> - The ID of the subnet
involved in the association.</p></li>
<li><p><code>association.main</code> - Indicates whether the route table
is the main route table for the VPC (<code>true</code> |
<code>false</code>). Route tables that do not have an association ID are
not returned in the response.</p></li>
<li><p><code>owner-id</code> - The ID of the Amazon Web Services account
that owns the route table.</p></li>
<li><p><code>route-table-id</code> - The ID of the route table.</p></li>
<li><p><code>route.destination-cidr-block</code> - The IPv4 CIDR range
specified in a route in the table.</p></li>
<li><p><code>route.destination-ipv6-cidr-block</code> - The IPv6 CIDR
range specified in a route in the route table.</p></li>
<li><p><code>route.destination-prefix-list-id</code> - The ID (prefix)
of the Amazon Web Service specified in a route in the table.</p></li>
<li><p><code>route.egress-only-internet-gateway-id</code> - The ID of an
egress-only Internet gateway specified in a route in the route
table.</p></li>
<li><p><code>route.gateway-id</code> - The ID of a gateway specified in
a route in the table.</p></li>
<li><p><code>route.instance-id</code> - The ID of an instance specified
in a route in the table.</p></li>
<li><p><code>route.nat-gateway-id</code> - The ID of a NAT
gateway.</p></li>
<li><p><code>route.transit-gateway-id</code> - The ID of a transit
gateway.</p></li>
<li><p><code>route.origin</code> - Describes how the route was created.
<code>create_route_table</code> indicates that the route was
automatically created when the route table was created;
<code>create_route</code> indicates that the route was manually added to
the route table; <code>enable_vgw_route_propagation</code> indicates
that the route was propagated by route propagation.</p></li>
<li><p><code>route.state</code> - The state of a route in the route
table (<code>active</code> | <code>blackhole</code>). The blackhole
state indicates that the route's target isn't available (for example,
the specified gateway isn't attached to the VPC, the specified NAT
instance has been terminated, and so on).</p></li>
<li><p><code>route.vpc-peering-connection-id</code> - The ID of a VPC
peering connection specified in a route in the table.</p></li>
<li><p><code>tag</code>:\&lt;key\&gt; - The key/value combination of a
tag assigned to the resource. Use the tag key in the filter name and the
tag value as the filter value. For example, to find all resources that
have a tag with the key <code>Owner</code> and the value
<code>TeamA</code>, specify <code>tag:Owner</code> for the filter name
and <code>TeamA</code> for the filter value.</p></li>
<li><p><code>tag-key</code> - The key of a tag assigned to the resource.
Use this filter to find all resources assigned a tag with a specific
key, regardless of the tag value.</p></li>
<li><p><code>vpc-id</code> - The ID of the VPC for the route
table.</p></li>
</ul></td>
</tr>
<tr class="even">
<td><code id="ec2_describe_route_tables_:_DryRun">DryRun</code></td>
<td><p>Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
<code>DryRunOperation</code>. Otherwise, it is
<code>UnauthorizedOperation</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_describe_route_tables_:_RouteTableIds">RouteTableIds</code></td>
<td><p>One or more route table IDs.</p>
<p>Default: Describes all your route tables.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_describe_route_tables_:_NextToken">NextToken</code></td>
<td><p>The token returned from a previous paginated request. Pagination
continues from the end of the items returned by the previous
request.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_describe_route_tables_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of items to return for this request. To get
the next page of items, make another request with the token returned in
the output. For more information, see <a
href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Query-Requests.html#api-pagination">Pagination</a>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      RouteTables = list(
        list(
          Associations = list(
            list(
              Main = TRUE|FALSE,
              RouteTableAssociationId = "string",
              RouteTableId = "string",
              SubnetId = "string",
              GatewayId = "string",
              AssociationState = list(
                State = "associating"|"associated"|"disassociating"|"disassociated"|"failed",
                StatusMessage = "string"
              )
            )
          ),
          PropagatingVgws = list(
            list(
              GatewayId = "string"
            )
          ),
          RouteTableId = "string",
          Routes = list(
            list(
              DestinationCidrBlock = "string",
              DestinationIpv6CidrBlock = "string",
              DestinationPrefixListId = "string",
              EgressOnlyInternetGatewayId = "string",
              GatewayId = "string",
              InstanceId = "string",
              InstanceOwnerId = "string",
              NatGatewayId = "string",
              TransitGatewayId = "string",
              LocalGatewayId = "string",
              CarrierGatewayId = "string",
              NetworkInterfaceId = "string",
              Origin = "CreateRouteTable"|"CreateRoute"|"EnableVgwRoutePropagation",
              State = "active"|"blackhole",
              VpcPeeringConnectionId = "string",
              CoreNetworkArn = "string"
            )
          ),
          Tags = list(
            list(
              Key = "string",
              Value = "string"
            )
          ),
          VpcId = "string",
          OwnerId = "string"
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$describe_route_tables(
      Filters = list(
        list(
          Name = "string",
          Values = list(
            "string"
          )
        )
      ),
      DryRun = TRUE|FALSE,
      RouteTableIds = list(
        "string"
      ),
      NextToken = "string",
      MaxResults = 123
    )

### Examples

    ## Not run: 
    # This example describes the specified route table.
    svc$describe_route_tables(
      RouteTableIds = list(
        "rtb-1f382e7d"
      )
    )

    ## End(Not run)
