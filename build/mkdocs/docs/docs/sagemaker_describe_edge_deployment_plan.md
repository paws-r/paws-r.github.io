<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sagemaker_describe_edge_deployment_plan</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes an edge deployment plan with deployment status per stage

### Description

Describes an edge deployment plan with deployment status per stage.

### Usage

    sagemaker_describe_edge_deployment_plan(EdgeDeploymentPlanName,
      NextToken, MaxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="sagemaker_describe_edge_deployment_plan_:_EdgeDeploymentPlanName">EdgeDeploymentPlanName</code></td>
<td><p>[required] The name of the deployment plan to describe.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_describe_edge_deployment_plan_:_NextToken">NextToken</code></td>
<td><p>If the edge deployment plan has enough stages to require
tokening, then this is the response from the last list of stages
returned.</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_describe_edge_deployment_plan_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of results to select (50 by default).</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      EdgeDeploymentPlanArn = "string",
      EdgeDeploymentPlanName = "string",
      ModelConfigs = list(
        list(
          ModelHandle = "string",
          EdgePackagingJobName = "string"
        )
      ),
      DeviceFleetName = "string",
      EdgeDeploymentSuccess = 123,
      EdgeDeploymentPending = 123,
      EdgeDeploymentFailed = 123,
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
          ),
          DeploymentStatus = list(
            StageStatus = "CREATING"|"READYTODEPLOY"|"STARTING"|"INPROGRESS"|"DEPLOYED"|"FAILED"|"STOPPING"|"STOPPED",
            EdgeDeploymentSuccessInStage = 123,
            EdgeDeploymentPendingInStage = 123,
            EdgeDeploymentFailedInStage = 123,
            EdgeDeploymentStatusMessage = "string",
            EdgeDeploymentStageStartTime = as.POSIXct(
              "2015-01-01"
            )
          )
        )
      ),
      NextToken = "string",
      CreationTime = as.POSIXct(
        "2015-01-01"
      ),
      LastModifiedTime = as.POSIXct(
        "2015-01-01"
      )
    )

### Request syntax

    svc$describe_edge_deployment_plan(
      EdgeDeploymentPlanName = "string",
      NextToken = "string",
      MaxResults = 123
    )
