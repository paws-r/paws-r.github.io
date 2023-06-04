<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_describe_transit_gateway_route_table_announcements</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes one or more transit gateway route table advertisements

### Description

Describes one or more transit gateway route table advertisements.

### Usage

    ec2_describe_transit_gateway_route_table_announcements(
      TransitGatewayRouteTableAnnouncementIds, Filters, MaxResults, NextToken,
      DryRun)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ec2_describe_transit_gateway_route_table_announcements_:_TransitGatewayRouteTableAnnouncementIds">TransitGatewayRouteTableAnnouncementIds</code></td>
<td><p>The IDs of the transit gateway route tables that are being
advertised.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_describe_transit_gateway_route_table_announcements_:_Filters">Filters</code></td>
<td><p>The filters associated with the transit gateway policy
table.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_describe_transit_gateway_route_table_announcements_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of results to return with a single call. To
retrieve the remaining results, make another call with the returned
<code>nextToken</code> value.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_describe_transit_gateway_route_table_announcements_:_NextToken">NextToken</code></td>
<td><p>The token for the next page of results.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_describe_transit_gateway_route_table_announcements_:_DryRun">DryRun</code></td>
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
      TransitGatewayRouteTableAnnouncements = list(
        list(
          TransitGatewayRouteTableAnnouncementId = "string",
          TransitGatewayId = "string",
          CoreNetworkId = "string",
          PeerTransitGatewayId = "string",
          PeerCoreNetworkId = "string",
          PeeringAttachmentId = "string",
          AnnouncementDirection = "outgoing"|"incoming",
          TransitGatewayRouteTableId = "string",
          State = "available"|"pending"|"failing"|"failed"|"deleting"|"deleted",
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

    svc$describe_transit_gateway_route_table_announcements(
      TransitGatewayRouteTableAnnouncementIds = list(
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
