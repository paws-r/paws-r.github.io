<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>autoscaling_put_lifecycle_hook</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates or updates a lifecycle hook for the specified Auto Scaling group

### Description

Creates or updates a lifecycle hook for the specified Auto Scaling
group.

Lifecycle hooks let you create solutions that are aware of events in the
Auto Scaling instance lifecycle, and then perform a custom action on
instances when the corresponding lifecycle event occurs.

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

4.  **Create the lifecycle hook. Specify whether the hook is used when
    the instances launch or terminate.**

5.  If you need more time, record the lifecycle action heartbeat to keep
    the instance in a wait state using the
    `record_lifecycle_action_heartbeat` API call.

6.  If you finish before the timeout period ends, send a callback by
    using the `complete_lifecycle_action` API call.

For more information, see [Amazon EC2 Auto Scaling lifecycle
hooks](https://docs.aws.amazon.com/autoscaling/ec2/userguide/lifecycle-hooks.html)
in the *Amazon EC2 Auto Scaling User Guide*.

If you exceed your maximum limit of lifecycle hooks, which by default is
50 per Auto Scaling group, the call fails.

You can view the lifecycle hooks for an Auto Scaling group using the
`describe_lifecycle_hooks` API call. If you are no longer using a
lifecycle hook, you can delete it by calling the `delete_lifecycle_hook`
API.

### Usage

    autoscaling_put_lifecycle_hook(LifecycleHookName, AutoScalingGroupName,
      LifecycleTransition, RoleARN, NotificationTargetARN,
      NotificationMetadata, HeartbeatTimeout, DefaultResult)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="autoscaling_put_lifecycle_hook_:_LifecycleHookName">LifecycleHookName</code></td>
<td><p>[required] The name of the lifecycle hook.</p></td>
</tr>
<tr class="even">
<td><code
id="autoscaling_put_lifecycle_hook_:_AutoScalingGroupName">AutoScalingGroupName</code></td>
<td><p>[required] The name of the Auto Scaling group.</p></td>
</tr>
<tr class="odd">
<td><code
id="autoscaling_put_lifecycle_hook_:_LifecycleTransition">LifecycleTransition</code></td>
<td><p>The lifecycle transition. For Auto Scaling groups, there are two
major lifecycle transitions.</p>
<ul>
<li><p>To create a lifecycle hook for scale-out events, specify
<code>autoscaling:EC2_INSTANCE_LAUNCHING</code>.</p></li>
<li><p>To create a lifecycle hook for scale-in events, specify
<code>autoscaling:EC2_INSTANCE_TERMINATING</code>.</p></li>
</ul>
<p>Required for new lifecycle hooks, but optional when updating existing
hooks.</p></td>
</tr>
<tr class="even">
<td><code
id="autoscaling_put_lifecycle_hook_:_RoleARN">RoleARN</code></td>
<td><p>The ARN of the IAM role that allows the Auto Scaling group to
publish to the specified notification target.</p>
<p>Valid only if the notification target is an Amazon SNS topic or an
Amazon SQS queue. Required for new lifecycle hooks, but optional when
updating existing hooks.</p></td>
</tr>
<tr class="odd">
<td><code
id="autoscaling_put_lifecycle_hook_:_NotificationTargetARN">NotificationTargetARN</code></td>
<td><p>The Amazon Resource Name (ARN) of the notification target that
Amazon EC2 Auto Scaling uses to notify you when an instance is in a wait
state for the lifecycle hook. You can specify either an Amazon SNS topic
or an Amazon SQS queue.</p>
<p>If you specify an empty string, this overrides the current ARN.</p>
<p>This operation uses the JSON format when sending notifications to an
Amazon SQS queue, and an email key-value pair format when sending
notifications to an Amazon SNS topic.</p>
<p>When you specify a notification target, Amazon EC2 Auto Scaling sends
it a test message. Test messages contain the following additional
key-value pair:
<code>"Event": "autoscaling:TEST_NOTIFICATION"</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="autoscaling_put_lifecycle_hook_:_NotificationMetadata">NotificationMetadata</code></td>
<td><p>Additional information that you want to include any time Amazon
EC2 Auto Scaling sends a message to the notification target.</p></td>
</tr>
<tr class="odd">
<td><code
id="autoscaling_put_lifecycle_hook_:_HeartbeatTimeout">HeartbeatTimeout</code></td>
<td><p>The maximum time, in seconds, that can elapse before the
lifecycle hook times out. The range is from <code>30</code> to
<code>7200</code> seconds. The default value is <code>3600</code>
seconds (1 hour).</p></td>
</tr>
<tr class="even">
<td><code
id="autoscaling_put_lifecycle_hook_:_DefaultResult">DefaultResult</code></td>
<td><p>The action the Auto Scaling group takes when the lifecycle hook
timeout elapses or if an unexpected failure occurs. The default value is
<code>ABANDON</code>.</p>
<p>Valid values: <code>CONTINUE</code> | <code>ABANDON</code></p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$put_lifecycle_hook(
      LifecycleHookName = "string",
      AutoScalingGroupName = "string",
      LifecycleTransition = "string",
      RoleARN = "string",
      NotificationTargetARN = "string",
      NotificationMetadata = "string",
      HeartbeatTimeout = 123,
      DefaultResult = "string"
    )

### Examples

    ## Not run: 
    # This example creates a lifecycle hook for instance launch.
    svc$put_lifecycle_hook(
      AutoScalingGroupName = "my-auto-scaling-group",
      DefaultResult = "CONTINUE",
      HeartbeatTimeout = 300L,
      LifecycleHookName = "my-launch-lifecycle-hook",
      LifecycleTransition = "autoscaling:EC2_INSTANCE_LAUNCHING"
    )

    ## End(Not run)
