<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_delete_network_insights_access_scope_analysis</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes the specified Network Access Scope analysis

### Description

Deletes the specified Network Access Scope analysis.

### Usage

    ec2_delete_network_insights_access_scope_analysis(
      NetworkInsightsAccessScopeAnalysisId, DryRun)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ec2_delete_network_insights_access_scope_analysis_:_NetworkInsightsAccessScopeAnalysisId">NetworkInsightsAccessScopeAnalysisId</code></td>
<td><p>[required] The ID of the Network Access Scope analysis.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_delete_network_insights_access_scope_analysis_:_DryRun">DryRun</code></td>
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
      NetworkInsightsAccessScopeAnalysisId = "string"
    )

### Request syntax

    svc$delete_network_insights_access_scope_analysis(
      NetworkInsightsAccessScopeAnalysisId = "string",
      DryRun = TRUE|FALSE
    )
