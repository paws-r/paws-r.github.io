<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>autoscaling_describe_load_balancer_target_groups</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## This API operation is superseded by DescribeTrafficSources, which can describe multiple traffic sources types

### Description

This API operation is superseded by `describe_traffic_sources`, which
can describe multiple traffic sources types. We recommend using
`detach_traffic_sources` to simplify how you manage traffic sources.
However, we continue to support `describe_load_balancer_target_groups`.
You can use both the original `describe_load_balancer_target_groups` API
operation and `describe_traffic_sources` on the same Auto Scaling group.

Gets information about the Elastic Load Balancing target groups for the
specified Auto Scaling group.

To determine the attachment status of the target group, use the `State`
element in the response. When you attach a target group to an Auto
Scaling group, the initial `State` value is `Adding`. The state
transitions to `Added` after all Auto Scaling instances are registered
with the target group. If Elastic Load Balancing health checks are
enabled for the Auto Scaling group, the state transitions to `InService`
after at least one Auto Scaling instance passes the health check. When
the target group is in the `InService` state, Amazon EC2 Auto Scaling
can terminate and replace any instances that are reported as unhealthy.
If no registered instances pass the health checks, the target group
doesn't enter the `InService` state.

Target groups also have an `InService` state if you attach them in the
`create_auto_scaling_group` API call. If your target group state is
`InService`, but it is not working properly, check the scaling
activities by calling `describe_scaling_activities` and take any
corrective actions necessary.

For help with failed health checks, see [Troubleshooting Amazon EC2 Auto
Scaling: Health
checks](https://docs.aws.amazon.com/autoscaling/ec2/userguide/ts-as-healthchecks.html)
in the *Amazon EC2 Auto Scaling User Guide*. For more information, see
[Use Elastic Load Balancing to distribute traffic across the instances
in your Auto Scaling
group](https://docs.aws.amazon.com/autoscaling/ec2/userguide/autoscaling-load-balancer.html)
in the *Amazon EC2 Auto Scaling User Guide*.

You can use this operation to describe target groups that were attached
by using `attach_load_balancer_target_groups`, but not for target groups
that were attached by using `attach_traffic_sources`.

### Usage

    autoscaling_describe_load_balancer_target_groups(AutoScalingGroupName,
      NextToken, MaxRecords)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="autoscaling_describe_load_balancer_target_groups_:_AutoScalingGroupName">AutoScalingGroupName</code></td>
<td><p>[required] The name of the Auto Scaling group.</p></td>
</tr>
<tr class="even">
<td><code
id="autoscaling_describe_load_balancer_target_groups_:_NextToken">NextToken</code></td>
<td><p>The token for the next set of items to return. (You received this
token from a previous call.)</p></td>
</tr>
<tr class="odd">
<td><code
id="autoscaling_describe_load_balancer_target_groups_:_MaxRecords">MaxRecords</code></td>
<td><p>The maximum number of items to return with this call. The default
value is <code>100</code> and the maximum value is
<code>100</code>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      LoadBalancerTargetGroups = list(
        list(
          LoadBalancerTargetGroupARN = "string",
          State = "string"
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$describe_load_balancer_target_groups(
      AutoScalingGroupName = "string",
      NextToken = "string",
      MaxRecords = 123
    )

### Examples

    ## Not run: 
    # This example describes the target groups attached to the specified Auto
    # Scaling group.
    svc$describe_load_balancer_target_groups(
      AutoScalingGroupName = "my-auto-scaling-group"
    )

    ## End(Not run)
