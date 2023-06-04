<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_search_transit_gateway_multicast_groups</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Searches one or more transit gateway multicast groups and returns the group membership information

### Description

Searches one or more transit gateway multicast groups and returns the
group membership information.

### Usage

    ec2_search_transit_gateway_multicast_groups(
      TransitGatewayMulticastDomainId, Filters, MaxResults, NextToken, DryRun)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ec2_search_transit_gateway_multicast_groups_:_TransitGatewayMulticastDomainId">TransitGatewayMulticastDomainId</code></td>
<td><p>[required] The ID of the transit gateway multicast
domain.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_search_transit_gateway_multicast_groups_:_Filters">Filters</code></td>
<td><p>One or more filters. The possible values are:</p>
<ul>
<li><p><code>group-ip-address</code> - The IP address of the transit
gateway multicast group.</p></li>
<li><p><code>is-group-member</code> - The resource is a group member.
Valid values are <code>true</code> | <code>false</code>.</p></li>
<li><p><code>is-group-source</code> - The resource is a group source.
Valid values are <code>true</code> | <code>false</code>.</p></li>
<li><p><code>member-type</code> - The member type. Valid values are
<code>igmp</code> | <code>static</code>.</p></li>
<li><p><code>resource-id</code> - The ID of the resource.</p></li>
<li><p><code>resource-type</code> - The type of resource. Valid values
are <code>vpc</code> | <code>vpn</code> |
<code>direct-connect-gateway</code> | <code>tgw-peering</code>.</p></li>
<li><p><code>source-type</code> - The source type. Valid values are
<code>igmp</code> | <code>static</code>.</p></li>
<li><p><code>subnet-id</code> - The ID of the subnet.</p></li>
<li><p><code>transit-gateway-attachment-id</code> - The id of the
transit gateway attachment.</p></li>
</ul></td>
</tr>
<tr class="odd">
<td><code
id="ec2_search_transit_gateway_multicast_groups_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of results to return with a single call. To
retrieve the remaining results, make another call with the returned
<code>nextToken</code> value.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_search_transit_gateway_multicast_groups_:_NextToken">NextToken</code></td>
<td><p>The token for the next page of results.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_search_transit_gateway_multicast_groups_:_DryRun">DryRun</code></td>
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
      MulticastGroups = list(
        list(
          GroupIpAddress = "string",
          TransitGatewayAttachmentId = "string",
          SubnetId = "string",
          ResourceId = "string",
          ResourceType = "vpc"|"vpn"|"direct-connect-gateway"|"connect"|"peering"|"tgw-peering",
          ResourceOwnerId = "string",
          NetworkInterfaceId = "string",
          GroupMember = TRUE|FALSE,
          GroupSource = TRUE|FALSE,
          MemberType = "static"|"igmp",
          SourceType = "static"|"igmp"
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$search_transit_gateway_multicast_groups(
      TransitGatewayMulticastDomainId = "string",
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
