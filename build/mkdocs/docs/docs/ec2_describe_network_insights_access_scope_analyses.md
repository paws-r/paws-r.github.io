<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_describe_network_insights_access_scope_analyses</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes the specified Network Access Scope analyses

### Description

Describes the specified Network Access Scope analyses.

### Usage

    ec2_describe_network_insights_access_scope_analyses(
      NetworkInsightsAccessScopeAnalysisIds, NetworkInsightsAccessScopeId,
      AnalysisStartTimeBegin, AnalysisStartTimeEnd, Filters, MaxResults,
      DryRun, NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ec2_describe_network_insights_access_scope_analyses_:_NetworkInsightsAccessScopeAnalysisIds">NetworkInsightsAccessScopeAnalysisIds</code></td>
<td><p>The IDs of the Network Access Scope analyses.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_describe_network_insights_access_scope_analyses_:_NetworkInsightsAccessScopeId">NetworkInsightsAccessScopeId</code></td>
<td><p>The ID of the Network Access Scope.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_describe_network_insights_access_scope_analyses_:_AnalysisStartTimeBegin">AnalysisStartTimeBegin</code></td>
<td><p>Filters the results based on the start time. The analysis must
have started on or after this time.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_describe_network_insights_access_scope_analyses_:_AnalysisStartTimeEnd">AnalysisStartTimeEnd</code></td>
<td><p>Filters the results based on the start time. The analysis must
have started on or before this time.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_describe_network_insights_access_scope_analyses_:_Filters">Filters</code></td>
<td><p>There are no supported filters.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_describe_network_insights_access_scope_analyses_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of results to return with a single call. To
retrieve the remaining results, make another call with the returned
<code>nextToken</code> value.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_describe_network_insights_access_scope_analyses_:_DryRun">DryRun</code></td>
<td><p>Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
<code>DryRunOperation</code>. Otherwise, it is
<code>UnauthorizedOperation</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_describe_network_insights_access_scope_analyses_:_NextToken">NextToken</code></td>
<td><p>The token for the next page of results.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      NetworkInsightsAccessScopeAnalyses = list(
        list(
          NetworkInsightsAccessScopeAnalysisId = "string",
          NetworkInsightsAccessScopeAnalysisArn = "string",
          NetworkInsightsAccessScopeId = "string",
          Status = "running"|"succeeded"|"failed",
          StatusMessage = "string",
          WarningMessage = "string",
          StartDate = as.POSIXct(
            "2015-01-01"
          ),
          EndDate = as.POSIXct(
            "2015-01-01"
          ),
          FindingsFound = "true"|"false"|"unknown",
          AnalyzedEniCount = 123,
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

    svc$describe_network_insights_access_scope_analyses(
      NetworkInsightsAccessScopeAnalysisIds = list(
        "string"
      ),
      NetworkInsightsAccessScopeId = "string",
      AnalysisStartTimeBegin = as.POSIXct(
        "2015-01-01"
      ),
      AnalysisStartTimeEnd = as.POSIXct(
        "2015-01-01"
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
