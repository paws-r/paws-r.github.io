<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_describe_transit_gateway_attachments</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes one or more attachments between resources and transit gateways

### Description

Describes one or more attachments between resources and transit
gateways. By default, all attachments are described. Alternatively, you
can filter the results by attachment ID, attachment state, resource ID,
or resource owner.

### Usage

    ec2_describe_transit_gateway_attachments(TransitGatewayAttachmentIds,
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
id="ec2_describe_transit_gateway_attachments_:_TransitGatewayAttachmentIds">TransitGatewayAttachmentIds</code></td>
<td><p>The IDs of the attachments.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_describe_transit_gateway_attachments_:_Filters">Filters</code></td>
<td><p>One or more filters. The possible values are:</p>
<ul>
<li><p><code>association.state</code> - The state of the association
(<code>associating</code> | <code>associated</code> |
<code>disassociating</code>).</p></li>
<li><p><code>association.transit-gateway-route-table-id</code> - The ID
of the route table for the transit gateway.</p></li>
<li><p><code>resource-id</code> - The ID of the resource.</p></li>
<li><p><code>resource-owner-id</code> - The ID of the Amazon Web
Services account that owns the resource.</p></li>
<li><p><code>resource-type</code> - The resource type. Valid values are
<code>vpc</code> | <code>vpn</code> |
<code>direct-connect-gateway</code> | <code>peering</code> |
<code>connect</code>.</p></li>
<li><p><code>state</code> - The state of the attachment. Valid values
are <code>available</code> | <code>deleted</code> |
<code>deleting</code> | <code>failed</code> | <code>failing</code> |
<code>initiatingRequest</code> | <code>modifying</code> |
<code>pendingAcceptance</code> | <code>pending</code> |
<code>rollingBack</code> | <code>rejected</code> |
<code>rejecting</code>.</p></li>
<li><p><code>transit-gateway-attachment-id</code> - The ID of the
attachment.</p></li>
<li><p><code>transit-gateway-id</code> - The ID of the transit
gateway.</p></li>
<li><p><code>transit-gateway-owner-id</code> - The ID of the Amazon Web
Services account that owns the transit gateway.</p></li>
</ul></td>
</tr>
<tr class="odd">
<td><code
id="ec2_describe_transit_gateway_attachments_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of results to return with a single call. To
retrieve the remaining results, make another call with the returned
<code>nextToken</code> value.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_describe_transit_gateway_attachments_:_NextToken">NextToken</code></td>
<td><p>The token for the next page of results.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_describe_transit_gateway_attachments_:_DryRun">DryRun</code></td>
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
      TransitGatewayAttachments = list(
        list(
          TransitGatewayAttachmentId = "string",
          TransitGatewayId = "string",
          TransitGatewayOwnerId = "string",
          ResourceOwnerId = "string",
          ResourceType = "vpc"|"vpn"|"direct-connect-gateway"|"connect"|"peering"|"tgw-peering",
          ResourceId = "string",
          State = "initiating"|"initiatingRequest"|"pendingAcceptance"|"rollingBack"|"pending"|"available"|"modifying"|"deleting"|"deleted"|"failed"|"rejected"|"rejecting"|"failing",
          Association = list(
            TransitGatewayRouteTableId = "string",
            State = "associating"|"associated"|"disassociating"|"disassociated"
          ),
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

    svc$describe_transit_gateway_attachments(
      TransitGatewayAttachmentIds = list(
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
