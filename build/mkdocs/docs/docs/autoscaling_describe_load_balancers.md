<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>autoscaling_describe_load_balancers</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## This API operation is superseded by DescribeTrafficSources, which can describe multiple traffic sources types

### Description

This API operation is superseded by `describe_traffic_sources`, which
can describe multiple traffic sources types. We recommend using
`describe_traffic_sources` to simplify how you manage traffic sources.
However, we continue to support `describe_load_balancers`. You can use
both the original `describe_load_balancers` API operation and
`describe_traffic_sources` on the same Auto Scaling group.

Gets information about the load balancers for the specified Auto Scaling
group.

This operation describes only Classic Load Balancers. If you have
Application Load Balancers, Network Load Balancers, or Gateway Load
Balancers, use the `describe_load_balancer_target_groups` API instead.

To determine the attachment status of the load balancer, use the `State`
element in the response. When you attach a load balancer to an Auto
Scaling group, the initial `State` value is `Adding`. The state
transitions to `Added` after all Auto Scaling instances are registered
with the load balancer. If Elastic Load Balancing health checks are
enabled for the Auto Scaling group, the state transitions to `InService`
after at least one Auto Scaling instance passes the health check. When
the load balancer is in the `InService` state, Amazon EC2 Auto Scaling
can terminate and replace any instances that are reported as unhealthy.
If no registered instances pass the health checks, the load balancer
doesn't enter the `InService` state.

Load balancers also have an `InService` state if you attach them in the
`create_auto_scaling_group` API call. If your load balancer state is
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

### Usage

    autoscaling_describe_load_balancers(AutoScalingGroupName, NextToken,
      MaxRecords)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="autoscaling_describe_load_balancers_:_AutoScalingGroupName">AutoScalingGroupName</code></td>
<td><p>[required] The name of the Auto Scaling group.</p></td>
</tr>
<tr class="even">
<td><code
id="autoscaling_describe_load_balancers_:_NextToken">NextToken</code></td>
<td><p>The token for the next set of items to return. (You received this
token from a previous call.)</p></td>
</tr>
<tr class="odd">
<td><code
id="autoscaling_describe_load_balancers_:_MaxRecords">MaxRecords</code></td>
<td><p>The maximum number of items to return with this call. The default
value is <code>100</code> and the maximum value is
<code>100</code>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      LoadBalancers = list(
        list(
          LoadBalancerName = "string",
          State = "string"
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$describe_load_balancers(
      AutoScalingGroupName = "string",
      NextToken = "string",
      MaxRecords = 123
    )

### Examples

    ## Not run: 
    # This example describes the load balancers attached to the specified Auto
    # Scaling group.
    svc$describe_load_balancers(
      AutoScalingGroupName = "my-auto-scaling-group"
    )

    ## End(Not run)
