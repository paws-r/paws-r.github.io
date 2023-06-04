<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sagemaker_create_edge_deployment_plan</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates an edge deployment plan, consisting of multiple stages

### Description

Creates an edge deployment plan, consisting of multiple stages. Each
stage may have a different deployment configuration and devices.

### Usage

    sagemaker_create_edge_deployment_plan(EdgeDeploymentPlanName,
      ModelConfigs, DeviceFleetName, Stages, Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="sagemaker_create_edge_deployment_plan_:_EdgeDeploymentPlanName">EdgeDeploymentPlanName</code></td>
<td><p>[required] The name of the edge deployment plan.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_create_edge_deployment_plan_:_ModelConfigs">ModelConfigs</code></td>
<td><p>[required] List of models associated with the edge deployment
plan.</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_create_edge_deployment_plan_:_DeviceFleetName">DeviceFleetName</code></td>
<td><p>[required] The device fleet used for this edge deployment
plan.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_create_edge_deployment_plan_:_Stages">Stages</code></td>
<td><p>List of stages of the edge deployment plan. The number of stages
is limited to 10 per deployment.</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_create_edge_deployment_plan_:_Tags">Tags</code></td>
<td><p>List of tags with which to tag the edge deployment plan.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      EdgeDeploymentPlanArn = "string"
    )

### Request syntax

    svc$create_edge_deployment_plan(
      EdgeDeploymentPlanName = "string",
      ModelConfigs = list(
        list(
          ModelHandle = "string",
          EdgePackagingJobName = "string"
        )
      ),
      DeviceFleetName = "string",
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
      ),
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      )
    )
