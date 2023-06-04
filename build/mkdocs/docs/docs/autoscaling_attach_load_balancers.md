<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>autoscaling_attach_load_balancers</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## This API operation is superseded by AttachTrafficSources, which can attach multiple traffic sources types

### Description

This API operation is superseded by `attach_traffic_sources`, which can
attach multiple traffic sources types. We recommend using
`attach_traffic_sources` to simplify how you manage traffic sources.
However, we continue to support `attach_load_balancers`. You can use
both the original `attach_load_balancers` API operation and
`attach_traffic_sources` on the same Auto Scaling group.

Attaches one or more Classic Load Balancers to the specified Auto
Scaling group. Amazon EC2 Auto Scaling registers the running instances
with these Classic Load Balancers.

To describe the load balancers for an Auto Scaling group, call the
`describe_load_balancers` API. To detach a load balancer from the Auto
Scaling group, call the `detach_load_balancers` API.

This operation is additive and does not detach existing Classic Load
Balancers or target groups from the Auto Scaling group.

For more information, see [Use Elastic Load Balancing to distribute
traffic across the instances in your Auto Scaling
group](https://docs.aws.amazon.com/autoscaling/ec2/userguide/autoscaling-load-balancer.html)
in the *Amazon EC2 Auto Scaling User Guide*.

### Usage

    autoscaling_attach_load_balancers(AutoScalingGroupName,
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
id="autoscaling_attach_load_balancers_:_AutoScalingGroupName">AutoScalingGroupName</code></td>
<td><p>[required] The name of the Auto Scaling group.</p></td>
</tr>
<tr class="even">
<td><code
id="autoscaling_attach_load_balancers_:_LoadBalancerNames">LoadBalancerNames</code></td>
<td><p>[required] The names of the load balancers. You can specify up to
10 load balancers.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$attach_load_balancers(
      AutoScalingGroupName = "string",
      LoadBalancerNames = list(
        "string"
      )
    )

### Examples

    ## Not run: 
    # This example attaches the specified load balancer to the specified Auto
    # Scaling group.
    svc$attach_load_balancers(
      AutoScalingGroupName = "my-auto-scaling-group",
      LoadBalancerNames = list(
        "my-load-balancer"
      )
    )

    ## End(Not run)
