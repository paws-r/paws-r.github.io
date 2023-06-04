<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_describe_network_insights_access_scopes</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes the specified Network Access Scopes

### Description

Describes the specified Network Access Scopes.

### Usage

    ec2_describe_network_insights_access_scopes(
      NetworkInsightsAccessScopeIds, Filters, MaxResults, DryRun, NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ec2_describe_network_insights_access_scopes_:_NetworkInsightsAccessScopeIds">NetworkInsightsAccessScopeIds</code></td>
<td><p>The IDs of the Network Access Scopes.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_describe_network_insights_access_scopes_:_Filters">Filters</code></td>
<td><p>There are no supported filters.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_describe_network_insights_access_scopes_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of results to return with a single call. To
retrieve the remaining results, make another call with the returned
<code>nextToken</code> value.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_describe_network_insights_access_scopes_:_DryRun">DryRun</code></td>
<td><p>Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
<code>DryRunOperation</code>. Otherwise, it is
<code>UnauthorizedOperation</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_describe_network_insights_access_scopes_:_NextToken">NextToken</code></td>
<td><p>The token for the next page of results.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      NetworkInsightsAccessScopes = list(
        list(
          NetworkInsightsAccessScopeId = "string",
          NetworkInsightsAccessScopeArn = "string",
          CreatedDate = as.POSIXct(
            "2015-01-01"
          ),
          UpdatedDate = as.POSIXct(
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

    svc$describe_network_insights_access_scopes(
      NetworkInsightsAccessScopeIds = list(
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
      DryRun = TRUE|FALSE,
      NextToken = "string"
    )
