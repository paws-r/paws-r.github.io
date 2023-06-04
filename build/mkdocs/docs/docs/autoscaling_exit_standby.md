<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>autoscaling_exit_standby</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Moves the specified instances out of the standby state

### Description

Moves the specified instances out of the standby state.

After you put the instances back in service, the desired capacity is
incremented.

For more information, see [Temporarily removing instances from your Auto
Scaling
group](https://docs.aws.amazon.com/autoscaling/ec2/userguide/as-enter-exit-standby.html)
in the *Amazon EC2 Auto Scaling User Guide*.

### Usage

    autoscaling_exit_standby(InstanceIds, AutoScalingGroupName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="autoscaling_exit_standby_:_InstanceIds">InstanceIds</code></td>
<td><p>The IDs of the instances. You can specify up to 20
instances.</p></td>
</tr>
<tr class="even">
<td><code
id="autoscaling_exit_standby_:_AutoScalingGroupName">AutoScalingGroupName</code></td>
<td><p>[required] The name of the Auto Scaling group.</p></td>
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

    svc$exit_standby(
      InstanceIds = list(
        "string"
      ),
      AutoScalingGroupName = "string"
    )

### Examples

    ## Not run: 
    # This example moves the specified instance out of standby mode.
    svc$exit_standby(
      AutoScalingGroupName = "my-auto-scaling-group",
      InstanceIds = list(
        "i-93633f9b"
      )
    )

    ## End(Not run)
