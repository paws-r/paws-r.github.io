<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sagemaker_start_edge_deployment_stage</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Starts a stage in an edge deployment plan

### Description

Starts a stage in an edge deployment plan.

### Usage

    sagemaker_start_edge_deployment_stage(EdgeDeploymentPlanName, StageName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="sagemaker_start_edge_deployment_stage_:_EdgeDeploymentPlanName">EdgeDeploymentPlanName</code></td>
<td><p>[required] The name of the edge deployment plan to
start.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_start_edge_deployment_stage_:_StageName">StageName</code></td>
<td><p>[required] The name of the stage to start.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$start_edge_deployment_stage(
      EdgeDeploymentPlanName = "string",
      StageName = "string"
    )
