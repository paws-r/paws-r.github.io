<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>codedeploy_get_deployment_target</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns information about a deployment target

### Description

Returns information about a deployment target.

### Usage

    codedeploy_get_deployment_target(deploymentId, targetId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="codedeploy_get_deployment_target_:_deploymentId">deploymentId</code></td>
<td><p>The unique ID of a deployment.</p></td>
</tr>
<tr class="even">
<td><code
id="codedeploy_get_deployment_target_:_targetId">targetId</code></td>
<td><p>The unique ID of a deployment target.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      deploymentTarget = list(
        deploymentTargetType = "InstanceTarget"|"LambdaTarget"|"ECSTarget"|"CloudFormationTarget",
        instanceTarget = list(
          deploymentId = "string",
          targetId = "string",
          targetArn = "string",
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
          instanceLabel = "Blue"|"Green"
        ),
        lambdaTarget = list(
          deploymentId = "string",
          targetId = "string",
          targetArn = "string",
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
          lambdaFunctionInfo = list(
            functionName = "string",
            functionAlias = "string",
            currentVersion = "string",
            targetVersion = "string",
            targetVersionWeight = 123.0
          )
        ),
        ecsTarget = list(
          deploymentId = "string",
          targetId = "string",
          targetArn = "string",
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
          status = "Pending"|"InProgress"|"Succeeded"|"Failed"|"Skipped"|"Unknown"|"Ready",
          taskSetsInfo = list(
            list(
              identifer = "string",
              desiredCount = 123,
              pendingCount = 123,
              runningCount = 123,
              status = "string",
              trafficWeight = 123.0,
              targetGroup = list(
                name = "string"
              ),
              taskSetLabel = "Blue"|"Green"
            )
          )
        ),
        cloudFormationTarget = list(
          deploymentId = "string",
          targetId = "string",
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
          status = "Pending"|"InProgress"|"Succeeded"|"Failed"|"Skipped"|"Unknown"|"Ready",
          resourceType = "string",
          targetVersionWeight = 123.0
        )
      )
    )

### Request syntax

    svc$get_deployment_target(
      deploymentId = "string",
      targetId = "string"
    )
