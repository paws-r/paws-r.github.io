<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>autoscaling_rollback_instance_refresh</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Cancels an instance refresh that is in progress and rolls back any changes that it made

### Description

Cancels an instance refresh that is in progress and rolls back any
changes that it made. Amazon EC2 Auto Scaling replaces any instances
that were replaced during the instance refresh. This restores your Auto
Scaling group to the configuration that it was using before the start of
the instance refresh.

This operation is part of the [instance refresh
feature](https://docs.aws.amazon.com/autoscaling/ec2/userguide/asg-instance-refresh.html)
in Amazon EC2 Auto Scaling, which helps you update instances in your
Auto Scaling group after you make configuration changes.

A rollback is not supported in the following situations:

-   There is no desired configuration specified for the instance
    refresh.

-   The Auto Scaling group has a launch template that uses an Amazon Web
    Services Systems Manager parameter instead of an AMI ID for the
    `ImageId` property.

-   The Auto Scaling group uses the launch template's `⁠$Latest⁠` or
    `⁠$Default⁠` version.

When you receive a successful response from this operation, Amazon EC2
Auto Scaling immediately begins replacing instances. You can check the
status of this operation through the `describe_instance_refreshes` API
operation.

### Usage

    autoscaling_rollback_instance_refresh(AutoScalingGroupName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="autoscaling_rollback_instance_refresh_:_AutoScalingGroupName">AutoScalingGroupName</code></td>
<td><p>The name of the Auto Scaling group.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      InstanceRefreshId = "string"
    )

### Request syntax

    svc$rollback_instance_refresh(
      AutoScalingGroupName = "string"
    )
