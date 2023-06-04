<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_search_transit_gateway_routes</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Searches for routes in the specified transit gateway route table

### Description

Searches for routes in the specified transit gateway route table.

### Usage

    ec2_search_transit_gateway_routes(TransitGatewayRouteTableId, Filters,
      MaxResults, DryRun)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ec2_search_transit_gateway_routes_:_TransitGatewayRouteTableId">TransitGatewayRouteTableId</code></td>
<td><p>[required] The ID of the transit gateway route table.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_search_transit_gateway_routes_:_Filters">Filters</code></td>
<td><p>[required] One or more filters. The possible values are:</p>
<ul>
<li><p><code>attachment.transit-gateway-attachment-id</code>- The id of
the transit gateway attachment.</p></li>
<li><p><code>attachment.resource-id</code> - The resource id of the
transit gateway attachment.</p></li>
<li><p><code>attachment.resource-type</code> - The attachment resource
type. Valid values are <code>vpc</code> | <code>vpn</code> |
<code>direct-connect-gateway</code> | <code>peering</code> |
<code>connect</code>.</p></li>
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
supernet-of-match as 10.0.1.0/30, then the result returns
10.0.1.0/29.</p></li>
<li><p><code>state</code> - The state of the route (<code>active</code>
| <code>blackhole</code>).</p></li>
<li><p><code>type</code> - The type of route (<code>propagated</code> |
<code>static</code>).</p></li>
</ul></td>
</tr>
<tr class="odd">
<td><code
id="ec2_search_transit_gateway_routes_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of routes to return.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_search_transit_gateway_routes_:_DryRun">DryRun</code></td>
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
          PrefixListId = "string",
          TransitGatewayRouteTableAnnouncementId = "string",
          TransitGatewayAttachments = list(
            list(
              ResourceId = "string",
              TransitGatewayAttachmentId = "string",
              ResourceType = "vpc"|"vpn"|"direct-connect-gateway"|"connect"|"peering"|"tgw-peering"
            )
          ),
          Type = "static"|"propagated",
          State = "pending"|"active"|"blackhole"|"deleting"|"deleted"
        )
      ),
      AdditionalRoutesAvailable = TRUE|FALSE
    )

### Request syntax

    svc$search_transit_gateway_routes(
      TransitGatewayRouteTableId = "string",
      Filters = list(
        list(
          Name = "string",
          Values = list(
            "string"
          )
        )
      ),
      MaxResults = 123,
      DryRun = TRUE|FALSE
    )
