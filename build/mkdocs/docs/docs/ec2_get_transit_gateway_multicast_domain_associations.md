<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_get_transit_gateway_multicast_domain_associations</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets information about the associations for the transit gateway multicast domain

### Description

Gets information about the associations for the transit gateway
multicast domain.

### Usage

    ec2_get_transit_gateway_multicast_domain_associations(
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
id="ec2_get_transit_gateway_multicast_domain_associations_:_TransitGatewayMulticastDomainId">TransitGatewayMulticastDomainId</code></td>
<td><p>[required] The ID of the transit gateway multicast
domain.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_get_transit_gateway_multicast_domain_associations_:_Filters">Filters</code></td>
<td><p>One or more filters. The possible values are:</p>
<ul>
<li><p><code>resource-id</code> - The ID of the resource.</p></li>
<li><p><code>resource-type</code> - The type of resource. The valid
value is: <code>vpc</code>.</p></li>
<li><p><code>state</code> - The state of the subnet association. Valid
values are <code>associated</code> | <code>associating</code> |
<code>disassociated</code> | <code>disassociating</code>.</p></li>
<li><p><code>subnet-id</code> - The ID of the subnet.</p></li>
<li><p><code>transit-gateway-attachment-id</code> - The id of the
transit gateway attachment.</p></li>
</ul></td>
</tr>
<tr class="odd">
<td><code
id="ec2_get_transit_gateway_multicast_domain_associations_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of results to return with a single call. To
retrieve the remaining results, make another call with the returned
<code>nextToken</code> value.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_get_transit_gateway_multicast_domain_associations_:_NextToken">NextToken</code></td>
<td><p>The token for the next page of results.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_get_transit_gateway_multicast_domain_associations_:_DryRun">DryRun</code></td>
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
      MulticastDomainAssociations = list(
        list(
          TransitGatewayAttachmentId = "string",
          ResourceId = "string",
          ResourceType = "vpc"|"vpn"|"direct-connect-gateway"|"connect"|"peering"|"tgw-peering",
          ResourceOwnerId = "string",
          Subnet = list(
            SubnetId = "string",
            State = "pendingAcceptance"|"associating"|"associated"|"disassociating"|"disassociated"|"rejected"|"failed"
          )
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$get_transit_gateway_multicast_domain_associations(
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
