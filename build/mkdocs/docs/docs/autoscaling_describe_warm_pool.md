<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>autoscaling_describe_warm_pool</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets information about a warm pool and its instances

### Description

Gets information about a warm pool and its instances.

For more information, see [Warm pools for Amazon EC2 Auto
Scaling](https://docs.aws.amazon.com/autoscaling/ec2/userguide/ec2-auto-scaling-warm-pools.html)
in the *Amazon EC2 Auto Scaling User Guide*.

### Usage

    autoscaling_describe_warm_pool(AutoScalingGroupName, MaxRecords,
      NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="autoscaling_describe_warm_pool_:_AutoScalingGroupName">AutoScalingGroupName</code></td>
<td><p>[required] The name of the Auto Scaling group.</p></td>
</tr>
<tr class="even">
<td><code
id="autoscaling_describe_warm_pool_:_MaxRecords">MaxRecords</code></td>
<td><p>The maximum number of instances to return with this call. The
maximum value is <code>50</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="autoscaling_describe_warm_pool_:_NextToken">NextToken</code></td>
<td><p>The token for the next set of instances to return. (You received
this token from a previous call.)</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      WarmPoolConfiguration = list(
        MaxGroupPreparedCapacity = 123,
        MinSize = 123,
        PoolState = "Stopped"|"Running"|"Hibernated",
        Status = "PendingDelete",
        InstanceReusePolicy = list(
          ReuseOnScaleIn = TRUE|FALSE
        )
      ),
      Instances = list(
        list(
          InstanceId = "string",
          InstanceType = "string",
          AvailabilityZone = "string",
          LifecycleState = "Pending"|"Pending:Wait"|"Pending:Proceed"|"Quarantined"|"InService"|"Terminating"|"Terminating:Wait"|"Terminating:Proceed"|"Terminated"|"Detaching"|"Detached"|"EnteringStandby"|"Standby"|"Warmed:Pending"|"Warmed:Pending:Wait"|"Warmed:Pending:Proceed"|"Warmed:Terminating"|"Warmed:Terminating:Wait"|"Warmed:Terminating:Proceed"|"Warmed:Terminated"|"Warmed:Stopped"|"Warmed:Running"|"Warmed:Hibernated",
          HealthStatus = "string",
          LaunchConfigurationName = "string",
          LaunchTemplate = list(
            LaunchTemplateId = "string",
            LaunchTemplateName = "string",
            Version = "string"
          ),
          ProtectedFromScaleIn = TRUE|FALSE,
          WeightedCapacity = "string"
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$describe_warm_pool(
      AutoScalingGroupName = "string",
      MaxRecords = 123,
      NextToken = "string"
    )
