<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_describe_transit_gateways</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes one or more transit gateways

### Description

Describes one or more transit gateways. By default, all transit gateways
are described. Alternatively, you can filter the results.

### Usage

    ec2_describe_transit_gateways(TransitGatewayIds, Filters, MaxResults,
      NextToken, DryRun)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ec2_describe_transit_gateways_:_TransitGatewayIds">TransitGatewayIds</code></td>
<td><p>The IDs of the transit gateways.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_describe_transit_gateways_:_Filters">Filters</code></td>
<td><p>One or more filters. The possible values are:</p>
<ul>
<li><p><code>options.propagation-default-route-table-id</code> - The ID
of the default propagation route table.</p></li>
<li><p><code>options.amazon-side-asn</code> - The private ASN for the
Amazon side of a BGP session.</p></li>
<li><p><code>options.association-default-route-table-id</code> - The ID
of the default association route table.</p></li>
<li><p><code>options.auto-accept-shared-attachments</code> - Indicates
whether there is automatic acceptance of attachment requests
(<code>enable</code> | <code>disable</code>).</p></li>
<li><p><code>options.default-route-table-association</code> - Indicates
whether resource attachments are automatically associated with the
default association route table (<code>enable</code> |
<code>disable</code>).</p></li>
<li><p><code>options.default-route-table-propagation</code> - Indicates
whether resource attachments automatically propagate routes to the
default propagation route table (<code>enable</code> |
<code>disable</code>).</p></li>
<li><p><code>options.dns-support</code> - Indicates whether DNS support
is enabled (<code>enable</code> | <code>disable</code>).</p></li>
<li><p><code>options.vpn-ecmp-support</code> - Indicates whether Equal
Cost Multipath Protocol support is enabled (<code>enable</code> |
<code>disable</code>).</p></li>
<li><p><code>owner-id</code> - The ID of the Amazon Web Services account
that owns the transit gateway.</p></li>
<li><p><code>state</code> - The state of the transit gateway
(<code>available</code> | <code>deleted</code> | <code>deleting</code> |
<code>modifying</code> | <code>pending</code>).</p></li>
<li><p><code>transit-gateway-id</code> - The ID of the transit
gateway.</p></li>
</ul></td>
</tr>
<tr class="odd">
<td><code
id="ec2_describe_transit_gateways_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of results to return with a single call. To
retrieve the remaining results, make another call with the returned
<code>nextToken</code> value.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_describe_transit_gateways_:_NextToken">NextToken</code></td>
<td><p>The token for the next page of results.</p></td>
</tr>
<tr class="odd">
<td><code id="ec2_describe_transit_gateways_:_DryRun">DryRun</code></td>
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
      TransitGateways = list(
        list(
          TransitGatewayId = "string",
          TransitGatewayArn = "string",
          State = "pending"|"available"|"modifying"|"deleting"|"deleted",
          OwnerId = "string",
          Description = "string",
          CreationTime = as.POSIXct(
            "2015-01-01"
          ),
          Options = list(
            AmazonSideAsn = 123,
            TransitGatewayCidrBlocks = list(
              "string"
            ),
            AutoAcceptSharedAttachments = "enable"|"disable",
            DefaultRouteTableAssociation = "enable"|"disable",
            AssociationDefaultRouteTableId = "string",
            DefaultRouteTablePropagation = "enable"|"disable",
            PropagationDefaultRouteTableId = "string",
            VpnEcmpSupport = "enable"|"disable",
            DnsSupport = "enable"|"disable",
            MulticastSupport = "enable"|"disable"
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

    svc$describe_transit_gateways(
      TransitGatewayIds = list(
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
