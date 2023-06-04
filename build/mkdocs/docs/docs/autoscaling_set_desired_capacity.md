<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>autoscaling_set_desired_capacity</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Sets the size of the specified Auto Scaling group

### Description

Sets the size of the specified Auto Scaling group.

If a scale-in activity occurs as a result of a new `DesiredCapacity`
value that is lower than the current size of the group, the Auto Scaling
group uses its termination policy to determine which instances to
terminate.

For more information, see [Manual
scaling](https://docs.aws.amazon.com/autoscaling/ec2/userguide/as-manual-scaling.html)
in the *Amazon EC2 Auto Scaling User Guide*.

### Usage

    autoscaling_set_desired_capacity(AutoScalingGroupName, DesiredCapacity,
      HonorCooldown)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="autoscaling_set_desired_capacity_:_AutoScalingGroupName">AutoScalingGroupName</code></td>
<td><p>[required] The name of the Auto Scaling group.</p></td>
</tr>
<tr class="even">
<td><code
id="autoscaling_set_desired_capacity_:_DesiredCapacity">DesiredCapacity</code></td>
<td><p>[required] The desired capacity is the initial capacity of the
Auto Scaling group after this operation completes and the capacity it
attempts to maintain.</p></td>
</tr>
<tr class="odd">
<td><code
id="autoscaling_set_desired_capacity_:_HonorCooldown">HonorCooldown</code></td>
<td><p>Indicates whether Amazon EC2 Auto Scaling waits for the cooldown
period to complete before initiating a scaling activity to set your Auto
Scaling group to its new capacity. By default, Amazon EC2 Auto Scaling
does not honor the cooldown period during manual scaling
activities.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$set_desired_capacity(
      AutoScalingGroupName = "string",
      DesiredCapacity = 123,
      HonorCooldown = TRUE|FALSE
    )

### Examples

    ## Not run: 
    # This example sets the desired capacity for the specified Auto Scaling
    # group.
    svc$set_desired_capacity(
      AutoScalingGroupName = "my-auto-scaling-group",
      DesiredCapacity = 2L,
      HonorCooldown = TRUE
    )

    ## End(Not run)
