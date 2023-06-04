<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_describe_transit_gateway_route_tables</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes one or more transit gateway route tables

### Description

Describes one or more transit gateway route tables. By default, all
transit gateway route tables are described. Alternatively, you can
filter the results.

### Usage

    ec2_describe_transit_gateway_route_tables(TransitGatewayRouteTableIds,
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
id="ec2_describe_transit_gateway_route_tables_:_TransitGatewayRouteTableIds">TransitGatewayRouteTableIds</code></td>
<td><p>The IDs of the transit gateway route tables.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_describe_transit_gateway_route_tables_:_Filters">Filters</code></td>
<td><p>One or more filters. The possible values are:</p>
<ul>
<li><p><code>default-association-route-table</code> - Indicates whether
this is the default association route table for the transit gateway
(<code>true</code> | <code>false</code>).</p></li>
<li><p><code>default-propagation-route-table</code> - Indicates whether
this is the default propagation route table for the transit gateway
(<code>true</code> | <code>false</code>).</p></li>
<li><p><code>state</code> - The state of the route table
(<code>available</code> | <code>deleting</code> | <code>deleted</code> |
<code>pending</code>).</p></li>
<li><p><code>transit-gateway-id</code> - The ID of the transit
gateway.</p></li>
<li><p><code>transit-gateway-route-table-id</code> - The ID of the
transit gateway route table.</p></li>
</ul></td>
</tr>
<tr class="odd">
<td><code
id="ec2_describe_transit_gateway_route_tables_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of results to return with a single call. To
retrieve the remaining results, make another call with the returned
<code>nextToken</code> value.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_describe_transit_gateway_route_tables_:_NextToken">NextToken</code></td>
<td><p>The token for the next page of results.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_describe_transit_gateway_route_tables_:_DryRun">DryRun</code></td>
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
      TransitGatewayRouteTables = list(
        list(
          TransitGatewayRouteTableId = "string",
          TransitGatewayId = "string",
          State = "pending"|"available"|"deleting"|"deleted",
          DefaultAssociationRouteTable = TRUE|FALSE,
          DefaultPropagationRouteTable = TRUE|FALSE,
          CreationTime = as.POSIXct(
            "2015-01-01"
          ),
          Tags = list(
            list(
              Key = "string",
              Value = "string"
            )
          )
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$describe_transit_gateway_route_tables(
      TransitGatewayRouteTableIds = list(
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
