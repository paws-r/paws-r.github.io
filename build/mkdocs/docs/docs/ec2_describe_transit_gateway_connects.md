<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_describe_transit_gateway_connects</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes one or more Connect attachments

### Description

Describes one or more Connect attachments.

### Usage

    ec2_describe_transit_gateway_connects(TransitGatewayAttachmentIds,
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
id="ec2_describe_transit_gateway_connects_:_TransitGatewayAttachmentIds">TransitGatewayAttachmentIds</code></td>
<td><p>The IDs of the attachments.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_describe_transit_gateway_connects_:_Filters">Filters</code></td>
<td><p>One or more filters. The possible values are:</p>
<ul>
<li><p><code>options.protocol</code> - The tunnel protocol
(<code>gre</code>).</p></li>
<li><p><code>state</code> - The state of the attachment
(<code>initiating</code> | <code>initiatingRequest</code> |
<code>pendingAcceptance</code> | <code>rollingBack</code> |
<code>pending</code> | <code>available</code> | <code>modifying</code> |
<code>deleting</code> | <code>deleted</code> | <code>failed</code> |
<code>rejected</code> | <code>rejecting</code> |
<code>failing</code>).</p></li>
<li><p><code>transit-gateway-attachment-id</code> - The ID of the
Connect attachment.</p></li>
<li><p><code>transit-gateway-id</code> - The ID of the transit
gateway.</p></li>
<li><p><code>transport-transit-gateway-attachment-id</code> - The ID of
the transit gateway attachment from which the Connect attachment was
created.</p></li>
</ul></td>
</tr>
<tr class="odd">
<td><code
id="ec2_describe_transit_gateway_connects_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of results to return with a single call. To
retrieve the remaining results, make another call with the returned
<code>nextToken</code> value.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_describe_transit_gateway_connects_:_NextToken">NextToken</code></td>
<td><p>The token for the next page of results.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_describe_transit_gateway_connects_:_DryRun">DryRun</code></td>
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
      TransitGatewayConnects = list(
        list(
          TransitGatewayAttachmentId = "string",
          TransportTransitGatewayAttachmentId = "string",
          TransitGatewayId = "string",
          State = "initiating"|"initiatingRequest"|"pendingAcceptance"|"rollingBack"|"pending"|"available"|"modifying"|"deleting"|"deleted"|"failed"|"rejected"|"rejecting"|"failing",
          CreationTime = as.POSIXct(
            "2015-01-01"
          ),
          Options = list(
            Protocol = "gre"
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

    svc$describe_transit_gateway_connects(
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
