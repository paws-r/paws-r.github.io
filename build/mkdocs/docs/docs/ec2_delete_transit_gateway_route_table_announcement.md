<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_delete_transit_gateway_route_table_announcement</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Advertises to the transit gateway that a transit gateway route table is deleted

### Description

Advertises to the transit gateway that a transit gateway route table is
deleted.

### Usage

    ec2_delete_transit_gateway_route_table_announcement(
      TransitGatewayRouteTableAnnouncementId, DryRun)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ec2_delete_transit_gateway_route_table_announcement_:_TransitGatewayRouteTableAnnouncementId">TransitGatewayRouteTableAnnouncementId</code></td>
<td><p>[required] The transit gateway route table ID that's being
deleted.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_delete_transit_gateway_route_table_announcement_:_DryRun">DryRun</code></td>
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
      TransitGatewayRouteTableAnnouncement = list(
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
    )

### Request syntax

    svc$delete_transit_gateway_route_table_announcement(
      TransitGatewayRouteTableAnnouncementId = "string",
      DryRun = TRUE|FALSE
    )
