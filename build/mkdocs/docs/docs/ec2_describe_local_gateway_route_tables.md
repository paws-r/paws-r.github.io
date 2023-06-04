<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_describe_local_gateway_route_tables</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes one or more local gateway route tables

### Description

Describes one or more local gateway route tables. By default, all local
gateway route tables are described. Alternatively, you can filter the
results.

### Usage

    ec2_describe_local_gateway_route_tables(LocalGatewayRouteTableIds,
      Filters, MaxResults, NextToken, DryRun)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ec2_describe_local_gateway_route_tables_:_LocalGatewayRouteTableIds">LocalGatewayRouteTableIds</code></td>
<td><p>The IDs of the local gateway route tables.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_describe_local_gateway_route_tables_:_Filters">Filters</code></td>
<td><p>One or more filters.</p>
<ul>
<li><p><code>local-gateway-id</code> - The ID of a local
gateway.</p></li>
<li><p><code>local-gateway-route-table-arn</code> - The Amazon Resource
Name (ARN) of the local gateway route table.</p></li>
<li><p><code>local-gateway-route-table-id</code> - The ID of a local
gateway route table.</p></li>
<li><p><code>outpost-arn</code> - The Amazon Resource Name (ARN) of the
Outpost.</p></li>
<li><p><code>owner-id</code> - The ID of the Amazon Web Services account
that owns the local gateway route table.</p></li>
<li><p><code>state</code> - The state of the local gateway route
table.</p></li>
</ul></td>
</tr>
<tr class="odd">
<td><code
id="ec2_describe_local_gateway_route_tables_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of results to return with a single call. To
retrieve the remaining results, make another call with the returned
<code>nextToken</code> value.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_describe_local_gateway_route_tables_:_NextToken">NextToken</code></td>
<td><p>The token for the next page of results.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_describe_local_gateway_route_tables_:_DryRun">DryRun</code></td>
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
      LocalGatewayRouteTables = list(
        list(
          LocalGatewayRouteTableId = "string",
          LocalGatewayRouteTableArn = "string",
          LocalGatewayId = "string",
          OutpostArn = "string",
          OwnerId = "string",
          State = "string",
          Tags = list(
            list(
              Key = "string",
              Value = "string"
            )
          ),
          Mode = "direct-vpc-routing"|"coip",
          StateReason = list(
            Code = "string",
            Message = "string"
          )
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$describe_local_gateway_route_tables(
      LocalGatewayRouteTableIds = list(
        "string"
      ),
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
