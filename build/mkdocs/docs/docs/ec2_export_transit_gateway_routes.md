<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_export_transit_gateway_routes</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Exports routes from the specified transit gateway route table to the specified S3 bucket

### Description

Exports routes from the specified transit gateway route table to the
specified S3 bucket. By default, all routes are exported. Alternatively,
you can filter by CIDR range.

The routes are saved to the specified bucket in a JSON file. For more
information, see [Export Route Tables to Amazon
S3](https://docs.aws.amazon.com/vpc/latest/tgw/tgw-route-tables.html#tgw-export-route-tables)
in *Transit Gateways*.

### Usage

    ec2_export_transit_gateway_routes(TransitGatewayRouteTableId, Filters,
      S3Bucket, DryRun)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ec2_export_transit_gateway_routes_:_TransitGatewayRouteTableId">TransitGatewayRouteTableId</code></td>
<td><p>[required] The ID of the route table.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_export_transit_gateway_routes_:_Filters">Filters</code></td>
<td><p>One or more filters. The possible values are:</p>
<ul>
<li><p><code>attachment.transit-gateway-attachment-id</code> - The id of
the transit gateway attachment.</p></li>
<li><p><code>attachment.resource-id</code> - The resource id of the
transit gateway attachment.</p></li>
<li><p><code>route-search.exact-match</code> - The exact match of the
specified filter.</p></li>
<li><p><code>route-search.longest-prefix-match</code> - The longest
prefix that matches the route.</p></li>
<li><p><code>route-search.subnet-of-match</code> - The routes with a
subnet that match the specified CIDR filter.</p></li>
<li><p><code>route-search.supernet-of-match</code> - The routes with a
CIDR that encompass the CIDR filter. For example, if you have
10.0.1.0/29 and 10.0.1.0/31 routes in your route table and you specify
supernet-of-match as 10.0.1.0/30, then the result returns
10.0.1.0/29.</p></li>
<li><p><code>state</code> - The state of the route (<code>active</code>
| <code>blackhole</code>).</p></li>
<li><p><code>transit-gateway-route-destination-cidr-block</code> - The
CIDR range.</p></li>
<li><p><code>type</code> - The type of route (<code>propagated</code> |
<code>static</code>).</p></li>
</ul></td>
</tr>
<tr class="odd">
<td><code
id="ec2_export_transit_gateway_routes_:_S3Bucket">S3Bucket</code></td>
<td><p>[required] The name of the S3 bucket.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_export_transit_gateway_routes_:_DryRun">DryRun</code></td>
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
      S3Location = "string"
    )

### Request syntax

    svc$export_transit_gateway_routes(
      TransitGatewayRouteTableId = "string",
      Filters = list(
        list(
          Name = "string",
          Values = list(
            "string"
          )
        )
      ),
      S3Bucket = "string",
      DryRun = TRUE|FALSE
    )
