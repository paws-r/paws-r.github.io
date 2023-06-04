<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sagemaker_list_stage_devices</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists devices allocated to the stage, containing detailed device information and deployment status

### Description

Lists devices allocated to the stage, containing detailed device
information and deployment status.

### Usage

    sagemaker_list_stage_devices(NextToken, MaxResults,
      EdgeDeploymentPlanName, ExcludeDevicesDeployedInOtherStage, StageName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="sagemaker_list_stage_devices_:_NextToken">NextToken</code></td>
<td><p>The response from the last list when returning a list large
enough to neeed tokening.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_list_stage_devices_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of requests to select.</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_list_stage_devices_:_EdgeDeploymentPlanName">EdgeDeploymentPlanName</code></td>
<td><p>[required] The name of the edge deployment plan.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_list_stage_devices_:_ExcludeDevicesDeployedInOtherStage">ExcludeDevicesDeployedInOtherStage</code></td>
<td><p>Toggle for excluding devices deployed in other stages.</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_list_stage_devices_:_StageName">StageName</code></td>
<td><p>[required] The name of the stage in the deployment.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      DeviceDeploymentSummaries = list(
        list(
          EdgeDeploymentPlanArn = "string",
          EdgeDeploymentPlanName = "string",
          StageName = "string",
          DeployedStageName = "string",
          DeviceFleetName = "string",
          DeviceName = "string",
          DeviceArn = "string",
          DeviceDeploymentStatus = "READYTODEPLOY"|"INPROGRESS"|"DEPLOYED"|"FAILED"|"STOPPING"|"STOPPED",
          DeviceDeploymentStatusMessage = "string",
          Description = "string",
          DeploymentStartTime = as.POSIXct(
            "2015-01-01"
          )
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_stage_devices(
      NextToken = "string",
      MaxResults = 123,
      EdgeDeploymentPlanName = "string",
      ExcludeDevicesDeployedInOtherStage = TRUE|FALSE,
      StageName = "string"
    )
