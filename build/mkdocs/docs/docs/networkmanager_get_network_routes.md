<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>networkmanager_get_network_routes</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets the network routes of the specified global network

### Description

Gets the network routes of the specified global network.

### Usage

    networkmanager_get_network_routes(GlobalNetworkId, RouteTableIdentifier,
      ExactCidrMatches, LongestPrefixMatches, SubnetOfMatches,
      SupernetOfMatches, PrefixListIds, States, Types, DestinationFilters)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="networkmanager_get_network_routes_:_GlobalNetworkId">GlobalNetworkId</code></td>
<td><p>[required] The ID of the global network.</p></td>
</tr>
<tr class="even">
<td><code
id="networkmanager_get_network_routes_:_RouteTableIdentifier">RouteTableIdentifier</code></td>
<td><p>[required] The ID of the route table.</p></td>
</tr>
<tr class="odd">
<td><code
id="networkmanager_get_network_routes_:_ExactCidrMatches">ExactCidrMatches</code></td>
<td><p>An exact CIDR block.</p></td>
</tr>
<tr class="even">
<td><code
id="networkmanager_get_network_routes_:_LongestPrefixMatches">LongestPrefixMatches</code></td>
<td><p>The most specific route that matches the traffic (longest prefix
match).</p></td>
</tr>
<tr class="odd">
<td><code
id="networkmanager_get_network_routes_:_SubnetOfMatches">SubnetOfMatches</code></td>
<td><p>The routes with a subnet that match the specified CIDR
filter.</p></td>
</tr>
<tr class="even">
<td><code
id="networkmanager_get_network_routes_:_SupernetOfMatches">SupernetOfMatches</code></td>
<td><p>The routes with a CIDR that encompasses the CIDR filter. Example:
If you specify 10.0.1.0/30, then the result returns
10.0.1.0/29.</p></td>
</tr>
<tr class="odd">
<td><code
id="networkmanager_get_network_routes_:_PrefixListIds">PrefixListIds</code></td>
<td><p>The IDs of the prefix lists.</p></td>
</tr>
<tr class="even">
<td><code
id="networkmanager_get_network_routes_:_States">States</code></td>
<td><p>The route states.</p></td>
</tr>
<tr class="odd">
<td><code
id="networkmanager_get_network_routes_:_Types">Types</code></td>
<td><p>The route types.</p></td>
</tr>
<tr class="even">
<td><code
id="networkmanager_get_network_routes_:_DestinationFilters">DestinationFilters</code></td>
<td><p>Filter by route table destination. Possible Values:
TRANSIT_GATEWAY_ATTACHMENT_ID, RESOURCE_ID, or RESOURCE_TYPE.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      RouteTableArn = "string",
      CoreNetworkSegmentEdge = list(
        CoreNetworkId = "string",
        SegmentName = "string",
        EdgeLocation = "string"
      ),
      RouteTableType = "TRANSIT_GATEWAY_ROUTE_TABLE"|"CORE_NETWORK_SEGMENT",
      RouteTableTimestamp = as.POSIXct(
        "2015-01-01"
      ),
      NetworkRoutes = list(
        list(
          DestinationCidrBlock = "string",
          Destinations = list(
            list(
              CoreNetworkAttachmentId = "string",
              TransitGatewayAttachmentId = "string",
              SegmentName = "string",
              EdgeLocation = "string",
              ResourceType = "string",
              ResourceId = "string"
            )
          ),
          PrefixListId = "string",
          State = "ACTIVE"|"BLACKHOLE",
          Type = "PROPAGATED"|"STATIC"
        )
      )
    )

### Request syntax

    svc$get_network_routes(
      GlobalNetworkId = "string",
      RouteTableIdentifier = list(
        TransitGatewayRouteTableArn = "string",
        CoreNetworkSegmentEdge = list(
          CoreNetworkId = "string",
          SegmentName = "string",
          EdgeLocation = "string"
        )
      ),
      ExactCidrMatches = list(
        "string"
      ),
      LongestPrefixMatches = list(
        "string"
      ),
      SubnetOfMatches = list(
        "string"
      ),
      SupernetOfMatches = list(
        "string"
      ),
      PrefixListIds = list(
        "string"
      ),
      States = list(
        "ACTIVE"|"BLACKHOLE"
      ),
      Types = list(
        "PROPAGATED"|"STATIC"
      ),
      DestinationFilters = list(
        list(
          "string"
        )
      )
    )
