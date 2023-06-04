<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>codedeploy_get_deployment_instance</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets information about an instance as part of a deployment

### Description

Gets information about an instance as part of a deployment.

### Usage

    codedeploy_get_deployment_instance(deploymentId, instanceId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="codedeploy_get_deployment_instance_:_deploymentId">deploymentId</code></td>
<td><p>[required] The unique ID of a deployment.</p></td>
</tr>
<tr class="even">
<td><code
id="codedeploy_get_deployment_instance_:_instanceId">instanceId</code></td>
<td><p>[required] The unique ID of an instance in the deployment
group.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      instanceSummary = list(
        deploymentId = "string",
        instanceId = "string",
        status = "Pending"|"InProgress"|"Succeeded"|"Failed"|"Skipped"|"Unknown"|"Ready",
        lastUpdatedAt = as.POSIXct(
          "2015-01-01"
        ),
        lifecycleEvents = list(
          list(
            lifecycleEventName = "string",
            diagnostics = list(
              errorCode = "Success"|"ScriptMissing"|"ScriptNotExecutable"|"ScriptTimedOut"|"ScriptFailed"|"UnknownError",
              scriptName = "string",
              message = "string",
              logTail = "string"
            ),
            startTime = as.POSIXct(
              "2015-01-01"
            ),
            endTime = as.POSIXct(
              "2015-01-01"
            ),
            status = "Pending"|"InProgress"|"Succeeded"|"Failed"|"Skipped"|"Unknown"
          )
        ),
        instanceType = "Blue"|"Green"
      )
    )

### Request syntax

    svc$get_deployment_instance(
      deploymentId = "string",
      instanceId = "string"
    )
