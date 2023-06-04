<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_describe_transit_gateway_peering_attachments</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes your transit gateway peering attachments

### Description

Describes your transit gateway peering attachments.

### Usage

    ec2_describe_transit_gateway_peering_attachments(
      TransitGatewayAttachmentIds, Filters, MaxResults, NextToken, DryRun)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ec2_describe_transit_gateway_peering_attachments_:_TransitGatewayAttachmentIds">TransitGatewayAttachmentIds</code></td>
<td><p>One or more IDs of the transit gateway peering
attachments.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_describe_transit_gateway_peering_attachments_:_Filters">Filters</code></td>
<td><p>One or more filters. The possible values are:</p>
<ul>
<li><p><code>transit-gateway-attachment-id</code> - The ID of the
transit gateway attachment.</p></li>
<li><p><code>local-owner-id</code> - The ID of your Amazon Web Services
account.</p></li>
<li><p><code>remote-owner-id</code> - The ID of the Amazon Web Services
account in the remote Region that owns the transit gateway.</p></li>
<li><p><code>state</code> - The state of the peering attachment. Valid
values are <code>available</code> | <code>deleted</code> |
<code>deleting</code> | <code>failed</code> | <code>failing</code> |
<code>initiatingRequest</code> | <code>modifying</code> |
<code>pendingAcceptance</code> | <code>pending</code> |
<code>rollingBack</code> | <code>rejected</code> |
<code>rejecting</code>).</p></li>
<li><p><code>tag</code>:\&lt;key\&gt; - The key/value combination of a
tag assigned to the resource. Use the tag key in the filter name and the
tag value as the filter value. For example, to find all resources that
have a tag with the key <code>Owner</code> and the value
<code>TeamA</code>, specify <code>tag:Owner</code> for the filter name
and <code>TeamA</code> for the filter value.</p></li>
<li><p><code>tag-key</code> - The key of a tag assigned to the resource.
Use this filter to find all resources that have a tag with a specific
key, regardless of the tag value.</p></li>
<li><p><code>transit-gateway-id</code> - The ID of the transit
gateway.</p></li>
</ul></td>
</tr>
<tr class="odd">
<td><code
id="ec2_describe_transit_gateway_peering_attachments_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of results to return with a single call. To
retrieve the remaining results, make another call with the returned
<code>nextToken</code> value.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_describe_transit_gateway_peering_attachments_:_NextToken">NextToken</code></td>
<td><p>The token for the next page of results.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_describe_transit_gateway_peering_attachments_:_DryRun">DryRun</code></td>
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
      TransitGatewayPeeringAttachments = list(
        list(
          TransitGatewayAttachmentId = "string",
          AccepterTransitGatewayAttachmentId = "string",
          RequesterTgwInfo = list(
            TransitGatewayId = "string",
            CoreNetworkId = "string",
            OwnerId = "string",
            Region = "string"
          ),
          AccepterTgwInfo = list(
            TransitGatewayId = "string",
            CoreNetworkId = "string",
            OwnerId = "string",
            Region = "string"
          ),
          Options = list(
            DynamicRouting = "enable"|"disable"
          ),
          Status = list(
            Code = "string",
            Message = "string"
          ),
          State = "initiating"|"initiatingRequest"|"pendingAcceptance"|"rollingBack"|"pending"|"available"|"modifying"|"deleting"|"deleted"|"failed"|"rejected"|"rejecting"|"failing",
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

    svc$describe_transit_gateway_peering_attachments(
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
