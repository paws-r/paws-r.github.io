<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_get_transit_gateway_prefix_list_references</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets information about the prefix list references in a specified transit gateway route table

### Description

Gets information about the prefix list references in a specified transit
gateway route table.

### Usage

    ec2_get_transit_gateway_prefix_list_references(
      TransitGatewayRouteTableId, Filters, MaxResults, NextToken, DryRun)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ec2_get_transit_gateway_prefix_list_references_:_TransitGatewayRouteTableId">TransitGatewayRouteTableId</code></td>
<td><p>[required] The ID of the transit gateway route table.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_get_transit_gateway_prefix_list_references_:_Filters">Filters</code></td>
<td><p>One or more filters. The possible values are:</p>
<ul>
<li><p><code>attachment.resource-id</code> - The ID of the resource for
the attachment.</p></li>
<li><p><code>attachment.resource-type</code> - The type of resource for
the attachment. Valid values are <code>vpc</code> | <code>vpn</code> |
<code>direct-connect-gateway</code> | <code>peering</code>.</p></li>
<li><p><code>attachment.transit-gateway-attachment-id</code> - The ID of
the attachment.</p></li>
<li><p><code>is-blackhole</code> - Whether traffic matching the route is
blocked (<code>true</code> | <code>false</code>).</p></li>
<li><p><code>prefix-list-id</code> - The ID of the prefix list.</p></li>
<li><p><code>prefix-list-owner-id</code> - The ID of the owner of the
prefix list.</p></li>
<li><p><code>state</code> - The state of the prefix list reference
(<code>pending</code> | <code>available</code> | <code>modifying</code>
| <code>deleting</code>).</p></li>
</ul></td>
</tr>
<tr class="odd">
<td><code
id="ec2_get_transit_gateway_prefix_list_references_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of results to return with a single call. To
retrieve the remaining results, make another call with the returned
<code>nextToken</code> value.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_get_transit_gateway_prefix_list_references_:_NextToken">NextToken</code></td>
<td><p>The token for the next page of results.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_get_transit_gateway_prefix_list_references_:_DryRun">DryRun</code></td>
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
      TransitGatewayPrefixListReferences = list(
        list(
          TransitGatewayRouteTableId = "string",
          PrefixListId = "string",
          PrefixListOwnerId = "string",
          State = "pending"|"available"|"modifying"|"deleting",
          Blackhole = TRUE|FALSE,
          TransitGatewayAttachment = list(
            TransitGatewayAttachmentId = "string",
            ResourceType = "vpc"|"vpn"|"direct-connect-gateway"|"connect"|"peering"|"tgw-peering",
            ResourceId = "string"
          )
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$get_transit_gateway_prefix_list_references(
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
      NextToken = "string",
      DryRun = TRUE|FALSE
    )
