<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>autoscaling_complete_lifecycle_action</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Completes the lifecycle action for the specified token or instance with the specified result

### Description

Completes the lifecycle action for the specified token or instance with
the specified result.

This step is a part of the procedure for adding a lifecycle hook to an
Auto Scaling group:

1.  (Optional) Create a launch template or launch configuration with a
    user data script that runs while an instance is in a wait state due
    to a lifecycle hook.

2.  (Optional) Create a Lambda function and a rule that allows Amazon
    EventBridge to invoke your Lambda function when an instance is put
    into a wait state due to a lifecycle hook.

3.  (Optional) Create a notification target and an IAM role. The target
    can be either an Amazon SQS queue or an Amazon SNS topic. The role
    allows Amazon EC2 Auto Scaling to publish lifecycle notifications to
    the target.

4.  Create the lifecycle hook. Specify whether the hook is used when the
    instances launch or terminate.

5.  If you need more time, record the lifecycle action heartbeat to keep
    the instance in a wait state.

6.  **If you finish before the timeout period ends, send a callback by
    using the `complete_lifecycle_action` API call.**

For more information, see [Amazon EC2 Auto Scaling lifecycle
hooks](https://docs.aws.amazon.com/autoscaling/ec2/userguide/lifecycle-hooks.html)
in the *Amazon EC2 Auto Scaling User Guide*.

### Usage

    autoscaling_complete_lifecycle_action(LifecycleHookName,
      AutoScalingGroupName, LifecycleActionToken, LifecycleActionResult,
      InstanceId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="autoscaling_complete_lifecycle_action_:_LifecycleHookName">LifecycleHookName</code></td>
<td><p>[required] The name of the lifecycle hook.</p></td>
</tr>
<tr class="even">
<td><code
id="autoscaling_complete_lifecycle_action_:_AutoScalingGroupName">AutoScalingGroupName</code></td>
<td><p>[required] The name of the Auto Scaling group.</p></td>
</tr>
<tr class="odd">
<td><code
id="autoscaling_complete_lifecycle_action_:_LifecycleActionToken">LifecycleActionToken</code></td>
<td><p>A universally unique identifier (UUID) that identifies a specific
lifecycle action associated with an instance. Amazon EC2 Auto Scaling
sends this token to the notification target you specified when you
created the lifecycle hook.</p></td>
</tr>
<tr class="even">
<td><code
id="autoscaling_complete_lifecycle_action_:_LifecycleActionResult">LifecycleActionResult</code></td>
<td><p>[required] The action for the group to take. You can specify
either <code>CONTINUE</code> or <code>ABANDON</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="autoscaling_complete_lifecycle_action_:_InstanceId">InstanceId</code></td>
<td><p>The ID of the instance.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$complete_lifecycle_action(
      LifecycleHookName = "string",
      AutoScalingGroupName = "string",
      LifecycleActionToken = "string",
      LifecycleActionResult = "string",
      InstanceId = "string"
    )

### Examples

    ## Not run: 
    # This example notifies Auto Scaling that the specified lifecycle action
    # is complete so that it can finish launching or terminating the instance.
    svc$complete_lifecycle_action(
      AutoScalingGroupName = "my-auto-scaling-group",
      LifecycleActionResult = "CONTINUE",
      LifecycleActionToken = "bcd2f1b8-9a78-44d3-8a7a-4dd07d7cf635",
      LifecycleHookName = "my-lifecycle-hook"
    )

    ## End(Not run)
