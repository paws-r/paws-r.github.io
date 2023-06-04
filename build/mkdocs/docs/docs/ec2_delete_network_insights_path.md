<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_delete_network_insights_path</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes the specified path

### Description

Deletes the specified path.

### Usage

    ec2_delete_network_insights_path(DryRun, NetworkInsightsPathId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ec2_delete_network_insights_path_:_DryRun">DryRun</code></td>
<td><p>Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
<code>DryRunOperation</code>. Otherwise, it is
<code>UnauthorizedOperation</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_delete_network_insights_path_:_NetworkInsightsPathId">NetworkInsightsPathId</code></td>
<td><p>[required] The ID of the path.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      NetworkInsightsPathId = "string"
    )

### Request syntax

    svc$delete_network_insights_path(
      DryRun = TRUE|FALSE,
      NetworkInsightsPathId = "string"
    )
