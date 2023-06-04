<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>codedeploy_list_deployment_targets</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns an array of target IDs that are associated a deployment

### Description

Returns an array of target IDs that are associated a deployment.

### Usage

    codedeploy_list_deployment_targets(deploymentId, nextToken,
      targetFilters)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="codedeploy_list_deployment_targets_:_deploymentId">deploymentId</code></td>
<td><p>The unique ID of a deployment.</p></td>
</tr>
<tr class="even">
<td><code
id="codedeploy_list_deployment_targets_:_nextToken">nextToken</code></td>
<td><p>A token identifier returned from the previous
<code>list_deployment_targets</code> call. It can be used to return the
next set of deployment targets in the list.</p></td>
</tr>
<tr class="odd">
<td><code
id="codedeploy_list_deployment_targets_:_targetFilters">targetFilters</code></td>
<td><p>A key used to filter the returned targets. The two valid values
are:</p>
<ul>
<li><p><code>TargetStatus</code> - A <code>TargetStatus</code> filter
string can be <code>Failed</code>, <code>InProgress</code>,
<code>Pending</code>, <code>Ready</code>, <code>Skipped</code>,
<code>Succeeded</code>, or <code>Unknown</code>.</p></li>
<li><p><code>ServerInstanceLabel</code> - A
<code>ServerInstanceLabel</code> filter string can be <code>Blue</code>
or <code>Green</code>.</p></li>
</ul></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      targetIds = list(
        "string"
      ),
      nextToken = "string"
    )

### Request syntax

    svc$list_deployment_targets(
      deploymentId = "string",
      nextToken = "string",
      targetFilters = list(
        list(
          "string"
        )
      )
    )
