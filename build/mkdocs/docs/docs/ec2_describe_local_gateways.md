<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_describe_local_gateways</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes one or more local gateways

### Description

Describes one or more local gateways. By default, all local gateways are
described. Alternatively, you can filter the results.

### Usage

    ec2_describe_local_gateways(LocalGatewayIds, Filters, MaxResults,
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
id="ec2_describe_local_gateways_:_LocalGatewayIds">LocalGatewayIds</code></td>
<td><p>The IDs of the local gateways.</p></td>
</tr>
<tr class="even">
<td><code id="ec2_describe_local_gateways_:_Filters">Filters</code></td>
<td><p>One or more filters.</p>
<ul>
<li><p><code>local-gateway-id</code> - The ID of a local
gateway.</p></li>
<li><p><code>outpost-arn</code> - The Amazon Resource Name (ARN) of the
Outpost.</p></li>
<li><p><code>owner-id</code> - The ID of the Amazon Web Services account
that owns the local gateway.</p></li>
<li><p><code>state</code> - The state of the association.</p></li>
</ul></td>
</tr>
<tr class="odd">
<td><code
id="ec2_describe_local_gateways_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of results to return with a single call. To
retrieve the remaining results, make another call with the returned
<code>nextToken</code> value.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_describe_local_gateways_:_NextToken">NextToken</code></td>
<td><p>The token for the next page of results.</p></td>
</tr>
<tr class="odd">
<td><code id="ec2_describe_local_gateways_:_DryRun">DryRun</code></td>
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
      LocalGateways = list(
        list(
          LocalGatewayId = "string",
          OutpostArn = "string",
          OwnerId = "string",
          State = "string",
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

    svc$describe_local_gateways(
      LocalGatewayIds = list(
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
