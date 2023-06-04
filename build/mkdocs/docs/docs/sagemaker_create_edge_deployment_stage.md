<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sagemaker_create_edge_deployment_stage</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a new stage in an existing edge deployment plan

### Description

Creates a new stage in an existing edge deployment plan.

### Usage

    sagemaker_create_edge_deployment_stage(EdgeDeploymentPlanName, Stages)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="sagemaker_create_edge_deployment_stage_:_EdgeDeploymentPlanName">EdgeDeploymentPlanName</code></td>
<td><p>[required] The name of the edge deployment plan.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_create_edge_deployment_stage_:_Stages">Stages</code></td>
<td><p>[required] List of stages to be added to the edge deployment
plan.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$create_edge_deployment_stage(
      EdgeDeploymentPlanName = "string",
      Stages = list(
        list(
          StageName = "string",
          DeviceSelectionConfig = list(
            DeviceSubsetType = "PERCENTAGE"|"SELECTION"|"NAMECONTAINS",
            Percentage = 123,
            DeviceNames = list(
              "string"
            ),
            DeviceNameContains = "string"
          ),
          DeploymentConfig = list(
            FailureHandlingPolicy = "ROLLBACK_ON_FAILURE"|"DO_NOTHING"
          )
        )
      )
    )
