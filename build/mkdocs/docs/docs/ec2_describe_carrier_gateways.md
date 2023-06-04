<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_describe_carrier_gateways</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes one or more of your carrier gateways

### Description

Describes one or more of your carrier gateways.

### Usage

    ec2_describe_carrier_gateways(CarrierGatewayIds, Filters, MaxResults,
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
id="ec2_describe_carrier_gateways_:_CarrierGatewayIds">CarrierGatewayIds</code></td>
<td><p>One or more carrier gateway IDs.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_describe_carrier_gateways_:_Filters">Filters</code></td>
<td><p>One or more filters.</p>
<ul>
<li><p><code>carrier-gateway-id</code> - The ID of the carrier
gateway.</p></li>
<li><p><code>state</code> - The state of the carrier gateway
(<code>pending</code> | <code>failed</code> | <code>available</code> |
<code>deleting</code> | <code>deleted</code>).</p></li>
<li><p><code>owner-id</code> - The Amazon Web Services account ID of the
owner of the carrier gateway.</p></li>
<li><p><code>tag</code>:\&lt;key\&gt; - The key/value combination of a
tag assigned to the resource. Use the tag key in the filter name and the
tag value as the filter value. For example, to find all resources that
have a tag with the key <code>Owner</code> and the value
<code>TeamA</code>, specify <code>tag:Owner</code> for the filter name
and <code>TeamA</code> for the filter value.</p></li>
<li><p><code>tag-key</code> - The key of a tag assigned to the resource.
Use this filter to find all resources assigned a tag with a specific
key, regardless of the tag value.</p></li>
<li><p><code>vpc-id</code> - The ID of the VPC associated with the
carrier gateway.</p></li>
</ul></td>
</tr>
<tr class="odd">
<td><code
id="ec2_describe_carrier_gateways_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of results to return with a single call. To
retrieve the remaining results, make another call with the returned
<code>nextToken</code> value.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_describe_carrier_gateways_:_NextToken">NextToken</code></td>
<td><p>The token for the next page of results.</p></td>
</tr>
<tr class="odd">
<td><code id="ec2_describe_carrier_gateways_:_DryRun">DryRun</code></td>
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
      CarrierGateways = list(
        list(
          CarrierGatewayId = "string",
          VpcId = "string",
          State = "pending"|"available"|"deleting"|"deleted",
          OwnerId = "string",
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

    svc$describe_carrier_gateways(
      CarrierGatewayIds = list(
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
