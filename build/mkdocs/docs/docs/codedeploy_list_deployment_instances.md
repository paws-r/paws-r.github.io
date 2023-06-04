<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>codedeploy_list_deployment_instances</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## The newer BatchGetDeploymentTargets should be used instead because it works with all compute types

### Description

The newer `batch_get_deployment_targets` should be used instead because
it works with all compute types. `list_deployment_instances` throws an
exception if it is used with a compute platform other than
EC2/On-premises or Lambda.

Lists the instance for a deployment associated with the IAM user or
Amazon Web Services account.

### Usage

    codedeploy_list_deployment_instances(deploymentId, nextToken,
      instanceStatusFilter, instanceTypeFilter)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="codedeploy_list_deployment_instances_:_deploymentId">deploymentId</code></td>
<td><p>[required] The unique ID of a deployment.</p></td>
</tr>
<tr class="even">
<td><code
id="codedeploy_list_deployment_instances_:_nextToken">nextToken</code></td>
<td><p>An identifier returned from the previous list deployment
instances call. It can be used to return the next set of deployment
instances in the list.</p></td>
</tr>
<tr class="odd">
<td><code
id="codedeploy_list_deployment_instances_:_instanceStatusFilter">instanceStatusFilter</code></td>
<td><p>A subset of instances to list by status:</p>
<ul>
<li><p><code>Pending</code>: Include those instances with pending
deployments.</p></li>
<li><p><code>InProgress</code>: Include those instances where
deployments are still in progress.</p></li>
<li><p><code>Succeeded</code>: Include those instances with successful
deployments.</p></li>
<li><p><code>Failed</code>: Include those instances with failed
deployments.</p></li>
<li><p><code>Skipped</code>: Include those instances with skipped
deployments.</p></li>
<li><p><code>Unknown</code>: Include those instances with deployments in
an unknown state.</p></li>
</ul></td>
</tr>
<tr class="even">
<td><code
id="codedeploy_list_deployment_instances_:_instanceTypeFilter">instanceTypeFilter</code></td>
<td><p>The set of instances in a blue/green deployment, either those in
the original environment ("BLUE") or those in the replacement
environment ("GREEN"), for which you want to view instance
information.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      instancesList = list(
        "string"
      ),
      nextToken = "string"
    )

### Request syntax

    svc$list_deployment_instances(
      deploymentId = "string",
      nextToken = "string",
      instanceStatusFilter = list(
        "Pending"|"InProgress"|"Succeeded"|"Failed"|"Skipped"|"Unknown"|"Ready"
      ),
      instanceTypeFilter = list(
        "Blue"|"Green"
      )
    )
