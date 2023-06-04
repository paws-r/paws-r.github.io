<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>codedeploy_batch_get_deployment_targets</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns an array of one or more targets associated with a deployment

### Description

Returns an array of one or more targets associated with a deployment.
This method works with all compute types and should be used instead of
the deprecated `batch_get_deployment_instances`. The maximum number of
targets that can be returned is 25.

The type of targets returned depends on the deployment's compute
platform or deployment method:

-   **EC2/On-premises**: Information about Amazon EC2 instance targets.

-   **Lambda**: Information about Lambda functions targets.

-   **Amazon ECS**: Information about Amazon ECS service targets.

-   **CloudFormation**: Information about targets of blue/green
    deployments initiated by a CloudFormation stack update.

### Usage

    codedeploy_batch_get_deployment_targets(deploymentId, targetIds)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="codedeploy_batch_get_deployment_targets_:_deploymentId">deploymentId</code></td>
<td><p>The unique ID of a deployment.</p></td>
</tr>
<tr class="even">
<td><code
id="codedeploy_batch_get_deployment_targets_:_targetIds">targetIds</code></td>
<td><p>The unique IDs of the deployment targets. The compute platform of
the deployment determines the type of the targets and their formats. The
maximum number of deployment target IDs you can specify is 25.</p>
<ul>
<li><p>For deployments that use the EC2/On-premises compute platform,
the target IDs are Amazon EC2 or on-premises instances IDs, and their
target type is <code>instanceTarget</code>.</p></li>
<li><p>For deployments that use the Lambda compute platform, the target
IDs are the names of Lambda functions, and their target type is
<code>instanceTarget</code>.</p></li>
<li><p>For deployments that use the Amazon ECS compute platform, the
target IDs are pairs of Amazon ECS clusters and services specified using
the format <code
style="white-space: pre;">⁠&lt;clustername&gt;:&lt;servicename&gt;⁠</code>.
Their target type is <code>ecsTarget</code>.</p></li>
<li><p>For deployments that are deployed with CloudFormation, the target
IDs are CloudFormation stack IDs. Their target type is
<code>cloudFormationTarget</code>.</p></li>
</ul></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      deploymentTargets = list(
        list(
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
    )

### Request syntax

    svc$batch_get_deployment_targets(
      deploymentId = "string",
      targetIds = list(
        "string"
      )
    )
