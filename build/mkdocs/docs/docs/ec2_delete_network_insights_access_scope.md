<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_delete_network_insights_access_scope</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes the specified Network Access Scope

### Description

Deletes the specified Network Access Scope.

### Usage

    ec2_delete_network_insights_access_scope(DryRun,
      NetworkInsightsAccessScopeId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ec2_delete_network_insights_access_scope_:_DryRun">DryRun</code></td>
<td><p>Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
<code>DryRunOperation</code>. Otherwise, it is
<code>UnauthorizedOperation</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_delete_network_insights_access_scope_:_NetworkInsightsAccessScopeId">NetworkInsightsAccessScopeId</code></td>
<td><p>[required] The ID of the Network Access Scope.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      NetworkInsightsAccessScopeId = "string"
    )

### Request syntax

    svc$delete_network_insights_access_scope(
      DryRun = TRUE|FALSE,
      NetworkInsightsAccessScopeId = "string"
    )
