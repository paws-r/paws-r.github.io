<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sagemakeredgemanager_send_heartbeat</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Use to get the current status of devices registered on SageMaker Edge Manager

### Description

Use to get the current status of devices registered on SageMaker Edge
Manager.

### Usage

    sagemakeredgemanager_send_heartbeat(AgentMetrics, Models, AgentVersion,
      DeviceName, DeviceFleetName, DeploymentResult)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="sagemakeredgemanager_send_heartbeat_:_AgentMetrics">AgentMetrics</code></td>
<td><p>For internal use. Returns a list of SageMaker Edge Manager agent
operating metrics.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemakeredgemanager_send_heartbeat_:_Models">Models</code></td>
<td><p>Returns a list of models deployed on the the device.</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemakeredgemanager_send_heartbeat_:_AgentVersion">AgentVersion</code></td>
<td><p>[required] Returns the version of the agent.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemakeredgemanager_send_heartbeat_:_DeviceName">DeviceName</code></td>
<td><p>[required] The unique name of the device.</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemakeredgemanager_send_heartbeat_:_DeviceFleetName">DeviceFleetName</code></td>
<td><p>[required] The name of the fleet that the device belongs
to.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemakeredgemanager_send_heartbeat_:_DeploymentResult">DeploymentResult</code></td>
<td><p>Returns the result of a deployment on the device.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$send_heartbeat(
      AgentMetrics = list(
        list(
          Dimension = "string",
          MetricName = "string",
          Value = 123.0,
          Timestamp = as.POSIXct(
            "2015-01-01"
          )
        )
      ),
      Models = list(
        list(
          ModelName = "string",
          ModelVersion = "string",
          LatestSampleTime = as.POSIXct(
            "2015-01-01"
          ),
          LatestInference = as.POSIXct(
            "2015-01-01"
          ),
          ModelMetrics = list(
            list(
              Dimension = "string",
              MetricName = "string",
              Value = 123.0,
              Timestamp = as.POSIXct(
                "2015-01-01"
              )
            )
          )
        )
      ),
      AgentVersion = "string",
      DeviceName = "string",
      DeviceFleetName = "string",
      DeploymentResult = list(
        DeploymentName = "string",
        DeploymentStatus = "string",
        DeploymentStatusMessage = "string",
        DeploymentStartTime = as.POSIXct(
          "2015-01-01"
        ),
        DeploymentEndTime = as.POSIXct(
          "2015-01-01"
        ),
        DeploymentModels = list(
          list(
            ModelHandle = "string",
            ModelName = "string",
            ModelVersion = "string",
            DesiredState = "DEPLOY"|"UNDEPLOY",
            State = "DEPLOY"|"UNDEPLOY",
            Status = "SUCCESS"|"FAIL",
            StatusReason = "string",
            RollbackFailureReason = "string"
          )
        )
      )
    )
