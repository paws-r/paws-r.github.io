<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>autoscaling_detach_instances</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Removes one or more instances from the specified Auto Scaling group

### Description

Removes one or more instances from the specified Auto Scaling group.

After the instances are detached, you can manage them independent of the
Auto Scaling group.

If you do not specify the option to decrement the desired capacity,
Amazon EC2 Auto Scaling launches instances to replace the ones that are
detached.

If there is a Classic Load Balancer attached to the Auto Scaling group,
the instances are deregistered from the load balancer. If there are
target groups attached to the Auto Scaling group, the instances are
deregistered from the target groups.

For more information, see [Detach EC2 instances from your Auto Scaling
group](https://docs.aws.amazon.com/autoscaling/ec2/userguide/detach-instance-asg.html)
in the *Amazon EC2 Auto Scaling User Guide*.

### Usage

    autoscaling_detach_instances(InstanceIds, AutoScalingGroupName,
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
id="autoscaling_detach_instances_:_InstanceIds">InstanceIds</code></td>
<td><p>The IDs of the instances. You can specify up to 20
instances.</p></td>
</tr>
<tr class="even">
<td><code
id="autoscaling_detach_instances_:_AutoScalingGroupName">AutoScalingGroupName</code></td>
<td><p>[required] The name of the Auto Scaling group.</p></td>
</tr>
<tr class="odd">
<td><code
id="autoscaling_detach_instances_:_ShouldDecrementDesiredCapacity">ShouldDecrementDesiredCapacity</code></td>
<td><p>[required] Indicates whether the Auto Scaling group decrements
the desired capacity value by the number of instances detached.</p></td>
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

    svc$detach_instances(
      InstanceIds = list(
        "string"
      ),
      AutoScalingGroupName = "string",
      ShouldDecrementDesiredCapacity = TRUE|FALSE
    )

### Examples

    ## Not run: 
    # This example detaches the specified instance from the specified Auto
    # Scaling group.
    svc$detach_instances(
      AutoScalingGroupName = "my-auto-scaling-group",
      InstanceIds = list(
        "i-93633f9b"
      ),
      ShouldDecrementDesiredCapacity = TRUE
    )

    ## End(Not run)
