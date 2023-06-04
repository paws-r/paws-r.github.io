<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_describe_transit_gateway_multicast_domains</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes one or more transit gateway multicast domains

### Description

Describes one or more transit gateway multicast domains.

### Usage

    ec2_describe_transit_gateway_multicast_domains(
      TransitGatewayMulticastDomainIds, Filters, MaxResults, NextToken,
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
id="ec2_describe_transit_gateway_multicast_domains_:_TransitGatewayMulticastDomainIds">TransitGatewayMulticastDomainIds</code></td>
<td><p>The ID of the transit gateway multicast domain.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_describe_transit_gateway_multicast_domains_:_Filters">Filters</code></td>
<td><p>One or more filters. The possible values are:</p>
<ul>
<li><p><code>state</code> - The state of the transit gateway multicast
domain. Valid values are <code>pending</code> | <code>available</code> |
<code>deleting</code> | <code>deleted</code>.</p></li>
<li><p><code>transit-gateway-id</code> - The ID of the transit
gateway.</p></li>
<li><p><code>transit-gateway-multicast-domain-id</code> - The ID of the
transit gateway multicast domain.</p></li>
</ul></td>
</tr>
<tr class="odd">
<td><code
id="ec2_describe_transit_gateway_multicast_domains_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of results to return with a single call. To
retrieve the remaining results, make another call with the returned
<code>nextToken</code> value.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_describe_transit_gateway_multicast_domains_:_NextToken">NextToken</code></td>
<td><p>The token for the next page of results.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_describe_transit_gateway_multicast_domains_:_DryRun">DryRun</code></td>
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
      TransitGatewayMulticastDomains = list(
        list(
          TransitGatewayMulticastDomainId = "string",
          TransitGatewayId = "string",
          TransitGatewayMulticastDomainArn = "string",
          OwnerId = "string",
          Options = list(
            Igmpv2Support = "enable"|"disable",
            StaticSourcesSupport = "enable"|"disable",
            AutoAcceptSharedAssociations = "enable"|"disable"
          ),
          State = "pending"|"available"|"deleting"|"deleted",
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

    svc$describe_transit_gateway_multicast_domains(
      TransitGatewayMulticastDomainIds = list(
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
