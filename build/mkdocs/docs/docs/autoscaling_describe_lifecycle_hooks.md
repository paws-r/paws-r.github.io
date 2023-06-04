<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>autoscaling_describe_lifecycle_hooks</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets information about the lifecycle hooks for the specified Auto Scaling group

### Description

Gets information about the lifecycle hooks for the specified Auto
Scaling group.

### Usage

    autoscaling_describe_lifecycle_hooks(AutoScalingGroupName,
      LifecycleHookNames)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="autoscaling_describe_lifecycle_hooks_:_AutoScalingGroupName">AutoScalingGroupName</code></td>
<td><p>[required] The name of the Auto Scaling group.</p></td>
</tr>
<tr class="even">
<td><code
id="autoscaling_describe_lifecycle_hooks_:_LifecycleHookNames">LifecycleHookNames</code></td>
<td><p>The names of one or more lifecycle hooks. If you omit this
property, all lifecycle hooks are described.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      LifecycleHooks = list(
        list(
          LifecycleHookName = "string",
          AutoScalingGroupName = "string",
          LifecycleTransition = "string",
          NotificationTargetARN = "string",
          RoleARN = "string",
          NotificationMetadata = "string",
          HeartbeatTimeout = 123,
          GlobalTimeout = 123,
          DefaultResult = "string"
        )
      )
    )

### Request syntax

    svc$describe_lifecycle_hooks(
      AutoScalingGroupName = "string",
      LifecycleHookNames = list(
        "string"
      )
    )

### Examples

    ## Not run: 
    # This example describes the lifecycle hooks for the specified Auto
    # Scaling group.
    svc$describe_lifecycle_hooks(
      AutoScalingGroupName = "my-auto-scaling-group"
    )

    ## End(Not run)
