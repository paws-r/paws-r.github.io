<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>autoscaling_cancel_instance_refresh</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Cancels an instance refresh or rollback that is in progress

### Description

Cancels an instance refresh or rollback that is in progress. If an
instance refresh or rollback is not in progress, an
`ActiveInstanceRefreshNotFound` error occurs.

This operation is part of the [instance refresh
feature](https://docs.aws.amazon.com/autoscaling/ec2/userguide/asg-instance-refresh.html)
in Amazon EC2 Auto Scaling, which helps you update instances in your
Auto Scaling group after you make configuration changes.

When you cancel an instance refresh, this does not roll back any changes
that it made. Use the `rollback_instance_refresh` API to roll back
instead.

### Usage

    autoscaling_cancel_instance_refresh(AutoScalingGroupName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="autoscaling_cancel_instance_refresh_:_AutoScalingGroupName">AutoScalingGroupName</code></td>
<td><p>[required] The name of the Auto Scaling group.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      InstanceRefreshId = "string"
    )

### Request syntax

    svc$cancel_instance_refresh(
      AutoScalingGroupName = "string"
    )

### Examples

    ## Not run: 
    # This example cancels an instance refresh operation in progress.
    svc$cancel_instance_refresh(
      AutoScalingGroupName = "my-auto-scaling-group"
    )

    ## End(Not run)
