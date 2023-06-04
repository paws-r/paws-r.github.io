<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>autoscaling_detach_load_balancers</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## This API operation is superseded by DetachTrafficSources, which can detach multiple traffic sources types

### Description

This API operation is superseded by `detach_traffic_sources`, which can
detach multiple traffic sources types. We recommend using
`detach_traffic_sources` to simplify how you manage traffic sources.
However, we continue to support `detach_load_balancers`. You can use
both the original `detach_load_balancers` API operation and
`detach_traffic_sources` on the same Auto Scaling group.

Detaches one or more Classic Load Balancers from the specified Auto
Scaling group.

This operation detaches only Classic Load Balancers. If you have
Application Load Balancers, Network Load Balancers, or Gateway Load
Balancers, use the `detach_load_balancer_target_groups` API instead.

When you detach a load balancer, it enters the `Removing` state while
deregistering the instances in the group. When all instances are
deregistered, then you can no longer describe the load balancer using
the `describe_load_balancers` API call. The instances remain running.

### Usage

    autoscaling_detach_load_balancers(AutoScalingGroupName,
      LoadBalancerNames)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="autoscaling_detach_load_balancers_:_AutoScalingGroupName">AutoScalingGroupName</code></td>
<td><p>[required] The name of the Auto Scaling group.</p></td>
</tr>
<tr class="even">
<td><code
id="autoscaling_detach_load_balancers_:_LoadBalancerNames">LoadBalancerNames</code></td>
<td><p>[required] The names of the load balancers. You can specify up to
10 load balancers.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$detach_load_balancers(
      AutoScalingGroupName = "string",
      LoadBalancerNames = list(
        "string"
      )
    )

### Examples

    ## Not run: 
    # This example detaches the specified load balancer from the specified
    # Auto Scaling group.
    svc$detach_load_balancers(
      AutoScalingGroupName = "my-auto-scaling-group",
      LoadBalancerNames = list(
        "my-load-balancer"
      )
    )

    ## End(Not run)
