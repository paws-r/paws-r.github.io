<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>autoscaling_record_lifecycle_action_heartbeat</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Records a heartbeat for the lifecycle action associated with the specified token or instance

### Description

Records a heartbeat for the lifecycle action associated with the
specified token or instance. This extends the timeout by the length of
time defined using the `put_lifecycle_hook` API call.

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

5.  **If you need more time, record the lifecycle action heartbeat to
    keep the instance in a wait state.**

6.  If you finish before the timeout period ends, send a callback by
    using the `complete_lifecycle_action` API call.

For more information, see [Amazon EC2 Auto Scaling lifecycle
hooks](https://docs.aws.amazon.com/autoscaling/ec2/userguide/lifecycle-hooks.html)
in the *Amazon EC2 Auto Scaling User Guide*.

### Usage

    autoscaling_record_lifecycle_action_heartbeat(LifecycleHookName,
      AutoScalingGroupName, LifecycleActionToken, InstanceId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="autoscaling_record_lifecycle_action_heartbeat_:_LifecycleHookName">LifecycleHookName</code></td>
<td><p>[required] The name of the lifecycle hook.</p></td>
</tr>
<tr class="even">
<td><code
id="autoscaling_record_lifecycle_action_heartbeat_:_AutoScalingGroupName">AutoScalingGroupName</code></td>
<td><p>[required] The name of the Auto Scaling group.</p></td>
</tr>
<tr class="odd">
<td><code
id="autoscaling_record_lifecycle_action_heartbeat_:_LifecycleActionToken">LifecycleActionToken</code></td>
<td><p>A token that uniquely identifies a specific lifecycle action
associated with an instance. Amazon EC2 Auto Scaling sends this token to
the notification target that you specified when you created the
lifecycle hook.</p></td>
</tr>
<tr class="even">
<td><code
id="autoscaling_record_lifecycle_action_heartbeat_:_InstanceId">InstanceId</code></td>
<td><p>The ID of the instance.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$record_lifecycle_action_heartbeat(
      LifecycleHookName = "string",
      AutoScalingGroupName = "string",
      LifecycleActionToken = "string",
      InstanceId = "string"
    )

### Examples

    ## Not run: 
    # This example records a lifecycle action heartbeat to keep the instance
    # in a pending state.
    svc$record_lifecycle_action_heartbeat(
      AutoScalingGroupName = "my-auto-scaling-group",
      LifecycleActionToken = "bcd2f1b8-9a78-44d3-8a7a-4dd07d7cf635",
      LifecycleHookName = "my-lifecycle-hook"
    )

    ## End(Not run)
