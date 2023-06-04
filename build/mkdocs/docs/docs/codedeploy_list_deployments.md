<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>codedeploy_list_deployments</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists the deployments in a deployment group for an application registered with the IAM user or Amazon Web Services account

### Description

Lists the deployments in a deployment group for an application
registered with the IAM user or Amazon Web Services account.

### Usage

    codedeploy_list_deployments(applicationName, deploymentGroupName,
      externalId, includeOnlyStatuses, createTimeRange, nextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="codedeploy_list_deployments_:_applicationName">applicationName</code></td>
<td><p>The name of an CodeDeploy application associated with the IAM
user or Amazon Web Services account.</p>
<p>If <code>applicationName</code> is specified, then
<code>deploymentGroupName</code> must be specified. If it is not
specified, then <code>deploymentGroupName</code> must not be
specified.</p></td>
</tr>
<tr class="even">
<td><code
id="codedeploy_list_deployments_:_deploymentGroupName">deploymentGroupName</code></td>
<td><p>The name of a deployment group for the specified application.</p>
<p>If <code>deploymentGroupName</code> is specified, then
<code>applicationName</code> must be specified. If it is not specified,
then <code>applicationName</code> must not be specified.</p></td>
</tr>
<tr class="odd">
<td><code
id="codedeploy_list_deployments_:_externalId">externalId</code></td>
<td><p>The unique ID of an external resource for returning deployments
linked to the external resource.</p></td>
</tr>
<tr class="even">
<td><code
id="codedeploy_list_deployments_:_includeOnlyStatuses">includeOnlyStatuses</code></td>
<td><p>A subset of deployments to list by status:</p>
<ul>
<li><p><code>Created</code>: Include created deployments in the
resulting list.</p></li>
<li><p><code>Queued</code>: Include queued deployments in the resulting
list.</p></li>
<li><p><code style="white-space: pre;">⁠In Progress⁠</code>: Include
in-progress deployments in the resulting list.</p></li>
<li><p><code>Succeeded</code>: Include successful deployments in the
resulting list.</p></li>
<li><p><code>Failed</code>: Include failed deployments in the resulting
list.</p></li>
<li><p><code>Stopped</code>: Include stopped deployments in the
resulting list.</p></li>
</ul></td>
</tr>
<tr class="odd">
<td><code
id="codedeploy_list_deployments_:_createTimeRange">createTimeRange</code></td>
<td><p>A time range (start and end) for returning a subset of the list
of deployments.</p></td>
</tr>
<tr class="even">
<td><code
id="codedeploy_list_deployments_:_nextToken">nextToken</code></td>
<td><p>An identifier returned from the previous list deployments call.
It can be used to return the next set of deployments in the
list.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      deployments = list(
        "string"
      ),
      nextToken = "string"
    )

### Request syntax

    svc$list_deployments(
      applicationName = "string",
      deploymentGroupName = "string",
      externalId = "string",
      includeOnlyStatuses = list(
        "Created"|"Queued"|"InProgress"|"Baking"|"Succeeded"|"Failed"|"Stopped"|"Ready"
      ),
      createTimeRange = list(
        start = as.POSIXct(
          "2015-01-01"
        ),
        end = as.POSIXct(
          "2015-01-01"
        )
      ),
      nextToken = "string"
    )
