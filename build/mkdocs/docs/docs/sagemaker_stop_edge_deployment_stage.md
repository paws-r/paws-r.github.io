<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sagemaker_stop_edge_deployment_stage</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Stops a stage in an edge deployment plan

### Description

Stops a stage in an edge deployment plan.

### Usage

    sagemaker_stop_edge_deployment_stage(EdgeDeploymentPlanName, StageName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="sagemaker_stop_edge_deployment_stage_:_EdgeDeploymentPlanName">EdgeDeploymentPlanName</code></td>
<td><p>[required] The name of the edge deployment plan to stop.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_stop_edge_deployment_stage_:_StageName">StageName</code></td>
<td><p>[required] The name of the stage to stop.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$stop_edge_deployment_stage(
      EdgeDeploymentPlanName = "string",
      StageName = "string"
    )
