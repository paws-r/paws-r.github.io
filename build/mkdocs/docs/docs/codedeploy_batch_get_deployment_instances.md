<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>codedeploy_batch_get_deployment_instances</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## This method works, but is deprecated

### Description

This method works, but is deprecated. Use `batch_get_deployment_targets`
instead.

Returns an array of one or more instances associated with a deployment.
This method works with EC2/On-premises and Lambda compute platforms. The
newer `batch_get_deployment_targets` works with all compute platforms.
The maximum number of instances that can be returned is 25.

### Usage

    codedeploy_batch_get_deployment_instances(deploymentId, instanceIds)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="codedeploy_batch_get_deployment_instances_:_deploymentId">deploymentId</code></td>
<td><p>[required] The unique ID of a deployment.</p></td>
</tr>
<tr class="even">
<td><code
id="codedeploy_batch_get_deployment_instances_:_instanceIds">instanceIds</code></td>
<td><p>[required] The unique IDs of instances used in the deployment.
The maximum number of instance IDs you can specify is 25.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      instancesSummary = list(
        list(
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
      ),
      errorMessage = "string"
    )

### Request syntax

    svc$batch_get_deployment_instances(
      deploymentId = "string",
      instanceIds = list(
        "string"
      )
    )
