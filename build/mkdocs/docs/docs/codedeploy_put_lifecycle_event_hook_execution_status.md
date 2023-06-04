<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>codedeploy_put_lifecycle_event_hook_execution_status</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Sets the result of a Lambda validation function

### Description

Sets the result of a Lambda validation function. The function validates
lifecycle hooks during a deployment that uses the Lambda or Amazon ECS
compute platform. For Lambda deployments, the available lifecycle hooks
are `BeforeAllowTraffic` and `AfterAllowTraffic`. For Amazon ECS
deployments, the available lifecycle hooks are `BeforeInstall`,
`AfterInstall`, `AfterAllowTestTraffic`, `BeforeAllowTraffic`, and
`AfterAllowTraffic`. Lambda validation functions return `Succeeded` or
`Failed`. For more information, see [AppSpec 'hooks' Section for an
Lambda
Deployment](https://docs.aws.amazon.com/codedeploy/latest/userguide/reference-appspec-file-structure-hooks.html#appspec-hooks-lambda)
and [AppSpec 'hooks' Section for an Amazon ECS
Deployment](https://docs.aws.amazon.com/codedeploy/latest/userguide/reference-appspec-file-structure-hooks.html#appspec-hooks-ecs).

### Usage

    codedeploy_put_lifecycle_event_hook_execution_status(deploymentId,
      lifecycleEventHookExecutionId, status)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="codedeploy_put_lifecycle_event_hook_execution_status_:_deploymentId">deploymentId</code></td>
<td><p>The unique ID of a deployment. Pass this ID to a Lambda function
that validates a deployment lifecycle event.</p></td>
</tr>
<tr class="even">
<td><code
id="codedeploy_put_lifecycle_event_hook_execution_status_:_lifecycleEventHookExecutionId">lifecycleEventHookExecutionId</code></td>
<td><p>The execution ID of a deployment's lifecycle hook. A deployment
lifecycle hook is specified in the <code>hooks</code> section of the
AppSpec file.</p></td>
</tr>
<tr class="odd">
<td><code
id="codedeploy_put_lifecycle_event_hook_execution_status_:_status">status</code></td>
<td><p>The result of a Lambda function that validates a deployment
lifecycle event. The values listed in <strong>Valid Values</strong> are
valid for lifecycle statuses in general; however, only
<code>Succeeded</code> and <code>Failed</code> can be passed
successfully in your API call.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      lifecycleEventHookExecutionId = "string"
    )

### Request syntax

    svc$put_lifecycle_event_hook_execution_status(
      deploymentId = "string",
      lifecycleEventHookExecutionId = "string",
      status = "Pending"|"InProgress"|"Succeeded"|"Failed"|"Skipped"|"Unknown"
    )
