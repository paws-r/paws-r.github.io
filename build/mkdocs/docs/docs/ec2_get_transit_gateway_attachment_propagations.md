<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_get_transit_gateway_attachment_propagations</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists the route tables to which the specified resource attachment propagates routes

### Description

Lists the route tables to which the specified resource attachment
propagates routes.

### Usage

    ec2_get_transit_gateway_attachment_propagations(
      TransitGatewayAttachmentId, Filters, MaxResults, NextToken, DryRun)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ec2_get_transit_gateway_attachment_propagations_:_TransitGatewayAttachmentId">TransitGatewayAttachmentId</code></td>
<td><p>[required] The ID of the attachment.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_get_transit_gateway_attachment_propagations_:_Filters">Filters</code></td>
<td><p>One or more filters. The possible values are:</p>
<ul>
<li><p><code>transit-gateway-route-table-id</code> - The ID of the
transit gateway route table.</p></li>
</ul></td>
</tr>
<tr class="odd">
<td><code
id="ec2_get_transit_gateway_attachment_propagations_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of results to return with a single call. To
retrieve the remaining results, make another call with the returned
<code>nextToken</code> value.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_get_transit_gateway_attachment_propagations_:_NextToken">NextToken</code></td>
<td><p>The token for the next page of results.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_get_transit_gateway_attachment_propagations_:_DryRun">DryRun</code></td>
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
      TransitGatewayAttachmentPropagations = list(
        list(
          TransitGatewayRouteTableId = "string",
          State = "enabling"|"enabled"|"disabling"|"disabled"
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$get_transit_gateway_attachment_propagations(
      TransitGatewayAttachmentId = "string",
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
