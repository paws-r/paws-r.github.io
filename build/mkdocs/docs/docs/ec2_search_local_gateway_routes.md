<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_search_local_gateway_routes</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Searches for routes in the specified local gateway route table

### Description

Searches for routes in the specified local gateway route table.

### Usage

    ec2_search_local_gateway_routes(LocalGatewayRouteTableId, Filters,
      MaxResults, NextToken, DryRun)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ec2_search_local_gateway_routes_:_LocalGatewayRouteTableId">LocalGatewayRouteTableId</code></td>
<td><p>[required] The ID of the local gateway route table.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_search_local_gateway_routes_:_Filters">Filters</code></td>
<td><p>One or more filters.</p>
<ul>
<li><p><code>prefix-list-id</code> - The ID of the prefix list.</p></li>
<li><p><code>route-search.exact-match</code> - The exact match of the
specified filter.</p></li>
<li><p><code>route-search.longest-prefix-match</code> - The longest
prefix that matches the route.</p></li>
<li><p><code>route-search.subnet-of-match</code> - The routes with a
subnet that match the specified CIDR filter.</p></li>
<li><p><code>route-search.supernet-of-match</code> - The routes with a
CIDR that encompass the CIDR filter. For example, if you have
10.0.1.0/29 and 10.0.1.0/31 routes in your route table and you specify
<code>supernet-of-match</code> as 10.0.1.0/30, then the result returns
10.0.1.0/29.</p></li>
<li><p><code>state</code> - The state of the route.</p></li>
<li><p><code>type</code> - The route type.</p></li>
</ul></td>
</tr>
<tr class="odd">
<td><code
id="ec2_search_local_gateway_routes_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of results to return with a single call. To
retrieve the remaining results, make another call with the returned
<code>nextToken</code> value.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_search_local_gateway_routes_:_NextToken">NextToken</code></td>
<td><p>The token for the next page of results.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_search_local_gateway_routes_:_DryRun">DryRun</code></td>
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
      Routes = list(
        list(
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
      ),
      NextToken = "string"
    )

### Request syntax

    svc$search_local_gateway_routes(
      LocalGatewayRouteTableId = "string",
      Filters = list(
        list(
          Name = "string",
          Values = list(
            "string"
          )
        )
      ),
      MaxResults = 123,
      NextToken = "string",
      DryRun = TRUE|FALSE
    )
