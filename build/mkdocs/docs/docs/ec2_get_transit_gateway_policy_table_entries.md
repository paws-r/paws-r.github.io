<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_get_transit_gateway_policy_table_entries</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns a list of transit gateway policy table entries

### Description

Returns a list of transit gateway policy table entries.

### Usage

    ec2_get_transit_gateway_policy_table_entries(
      TransitGatewayPolicyTableId, Filters, MaxResults, NextToken, DryRun)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ec2_get_transit_gateway_policy_table_entries_:_TransitGatewayPolicyTableId">TransitGatewayPolicyTableId</code></td>
<td><p>[required] The ID of the transit gateway policy table.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_get_transit_gateway_policy_table_entries_:_Filters">Filters</code></td>
<td><p>The filters associated with the transit gateway policy
table.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_get_transit_gateway_policy_table_entries_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of results to return with a single call. To
retrieve the remaining results, make another call with the returned
<code>nextToken</code> value.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_get_transit_gateway_policy_table_entries_:_NextToken">NextToken</code></td>
<td><p>The token for the next page of results.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_get_transit_gateway_policy_table_entries_:_DryRun">DryRun</code></td>
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
      TransitGatewayPolicyTableEntries = list(
        list(
          PolicyRuleNumber = "string",
          PolicyRule = list(
            SourceCidrBlock = "string",
            SourcePortRange = "string",
            DestinationCidrBlock = "string",
            DestinationPortRange = "string",
            Protocol = "string",
            MetaData = list(
              MetaDataKey = "string",
              MetaDataValue = "string"
            )
          ),
          TargetRouteTableId = "string"
        )
      )
    )

### Request syntax

    svc$get_transit_gateway_policy_table_entries(
      TransitGatewayPolicyTableId = "string",
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
