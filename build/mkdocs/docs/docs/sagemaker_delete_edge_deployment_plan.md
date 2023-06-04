<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sagemaker_delete_edge_deployment_plan</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes an edge deployment plan if (and only if) all the stages in the plan are inactive or there are no stages in the plan

### Description

Deletes an edge deployment plan if (and only if) all the stages in the
plan are inactive or there are no stages in the plan.

### Usage

    sagemaker_delete_edge_deployment_plan(EdgeDeploymentPlanName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="sagemaker_delete_edge_deployment_plan_:_EdgeDeploymentPlanName">EdgeDeploymentPlanName</code></td>
<td><p>[required] The name of the edge deployment plan to
delete.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_edge_deployment_plan(
      EdgeDeploymentPlanName = "string"
    )
