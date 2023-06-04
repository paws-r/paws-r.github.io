<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>autoscaling_terminate_instance_in_auto_scaling_group</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Terminates the specified instance and optionally adjusts the desired group size

### Description

Terminates the specified instance and optionally adjusts the desired
group size. This operation cannot be called on instances in a warm pool.

This call simply makes a termination request. The instance is not
terminated immediately. When an instance is terminated, the instance
status changes to `terminated`. You can't connect to or start an
instance after you've terminated it.

If you do not specify the option to decrement the desired capacity,
Amazon EC2 Auto Scaling launches instances to replace the ones that are
terminated.

By default, Amazon EC2 Auto Scaling balances instances across all
Availability Zones. If you decrement the desired capacity, your Auto
Scaling group can become unbalanced between Availability Zones. Amazon
EC2 Auto Scaling tries to rebalance the group, and rebalancing might
terminate instances in other zones. For more information, see
[Rebalancing
activities](https://docs.aws.amazon.com/autoscaling/ec2/userguide/auto-scaling-benefits.html#AutoScalingBehavior.InstanceUsage)
in the *Amazon EC2 Auto Scaling User Guide*.

### Usage

    autoscaling_terminate_instance_in_auto_scaling_group(InstanceId,
      ShouldDecrementDesiredCapacity)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="autoscaling_terminate_instance_in_auto_scaling_group_:_InstanceId">InstanceId</code></td>
<td><p>[required] The ID of the instance.</p></td>
</tr>
<tr class="even">
<td><code
id="autoscaling_terminate_instance_in_auto_scaling_group_:_ShouldDecrementDesiredCapacity">ShouldDecrementDesiredCapacity</code></td>
<td><p>[required] Indicates whether terminating the instance also
decrements the size of the Auto Scaling group.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Activity = list(
        ActivityId = "string",
        AutoScalingGroupName = "string",
        Description = "string",
        Cause = "string",
        StartTime = as.POSIXct(
          "2015-01-01"
        ),
        EndTime = as.POSIXct(
          "2015-01-01"
        ),
        StatusCode = "PendingSpotBidPlacement"|"WaitingForSpotInstanceRequestId"|"WaitingForSpotInstanceId"|"WaitingForInstanceId"|"PreInService"|"InProgress"|"WaitingForELBConnectionDraining"|"MidLifecycleAction"|"WaitingForInstanceWarmup"|"Successful"|"Failed"|"Cancelled"|"WaitingForConnectionDraining",
        StatusMessage = "string",
        Progress = 123,
        Details = "string",
        AutoScalingGroupState = "string",
        AutoScalingGroupARN = "string"
      )
    )

### Request syntax

    svc$terminate_instance_in_auto_scaling_group(
      InstanceId = "string",
      ShouldDecrementDesiredCapacity = TRUE|FALSE
    )

### Examples

    ## Not run: 
    # This example terminates the specified instance from the specified Auto
    # Scaling group without updating the size of the group. Auto Scaling
    # launches a replacement instance after the specified instance terminates.
    svc$terminate_instance_in_auto_scaling_group(
      InstanceId = "i-93633f9b",
      ShouldDecrementDesiredCapacity = FALSE
    )

    ## End(Not run)
