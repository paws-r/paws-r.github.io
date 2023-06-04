<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>autoscaling_enter_standby</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Moves the specified instances into the standby state

### Description

Moves the specified instances into the standby state.

If you choose to decrement the desired capacity of the Auto Scaling
group, the instances can enter standby as long as the desired capacity
of the Auto Scaling group after the instances are placed into standby is
equal to or greater than the minimum capacity of the group.

If you choose not to decrement the desired capacity of the Auto Scaling
group, the Auto Scaling group launches new instances to replace the
instances on standby.

For more information, see [Temporarily removing instances from your Auto
Scaling
group](https://docs.aws.amazon.com/autoscaling/ec2/userguide/as-enter-exit-standby.html)
in the *Amazon EC2 Auto Scaling User Guide*.

### Usage

    autoscaling_enter_standby(InstanceIds, AutoScalingGroupName,
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
id="autoscaling_enter_standby_:_InstanceIds">InstanceIds</code></td>
<td><p>The IDs of the instances. You can specify up to 20
instances.</p></td>
</tr>
<tr class="even">
<td><code
id="autoscaling_enter_standby_:_AutoScalingGroupName">AutoScalingGroupName</code></td>
<td><p>[required] The name of the Auto Scaling group.</p></td>
</tr>
<tr class="odd">
<td><code
id="autoscaling_enter_standby_:_ShouldDecrementDesiredCapacity">ShouldDecrementDesiredCapacity</code></td>
<td><p>[required] Indicates whether to decrement the desired capacity of
the Auto Scaling group by the number of instances moved to
<code>Standby</code> mode.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Activities = list(
        list(
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
    )

### Request syntax

    svc$enter_standby(
      InstanceIds = list(
        "string"
      ),
      AutoScalingGroupName = "string",
      ShouldDecrementDesiredCapacity = TRUE|FALSE
    )

### Examples

    ## Not run: 
    # This example puts the specified instance into standby mode.
    svc$enter_standby(
      AutoScalingGroupName = "my-auto-scaling-group",
      InstanceIds = list(
        "i-93633f9b"
      ),
      ShouldDecrementDesiredCapacity = TRUE
    )

    ## End(Not run)
