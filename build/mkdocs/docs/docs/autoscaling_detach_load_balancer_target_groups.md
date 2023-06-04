<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>autoscaling_detach_load_balancer_target_groups</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## This API operation is superseded by DetachTrafficSources, which can detach multiple traffic sources types

### Description

This API operation is superseded by `detach_traffic_sources`, which can
detach multiple traffic sources types. We recommend using
`detach_traffic_sources` to simplify how you manage traffic sources.
However, we continue to support `detach_load_balancer_target_groups`.
You can use both the original `detach_load_balancer_target_groups` API
operation and `detach_traffic_sources` on the same Auto Scaling group.

Detaches one or more target groups from the specified Auto Scaling
group.

When you detach a target group, it enters the `Removing` state while
deregistering the instances in the group. When all instances are
deregistered, then you can no longer describe the target group using the
`describe_load_balancer_target_groups` API call. The instances remain
running.

You can use this operation to detach target groups that were attached by
using `attach_load_balancer_target_groups`, but not for target groups
that were attached by using `attach_traffic_sources`.

### Usage

    autoscaling_detach_load_balancer_target_groups(AutoScalingGroupName,
      TargetGroupARNs)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="autoscaling_detach_load_balancer_target_groups_:_AutoScalingGroupName">AutoScalingGroupName</code></td>
<td><p>[required] The name of the Auto Scaling group.</p></td>
</tr>
<tr class="even">
<td><code
id="autoscaling_detach_load_balancer_target_groups_:_TargetGroupARNs">TargetGroupARNs</code></td>
<td><p>[required] The Amazon Resource Names (ARN) of the target groups.
You can specify up to 10 target groups.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$detach_load_balancer_target_groups(
      AutoScalingGroupName = "string",
      TargetGroupARNs = list(
        "string"
      )
    )

### Examples

    ## Not run: 
    # This example detaches the specified target group from the specified Auto
    # Scaling group
    svc$detach_load_balancer_target_groups(
      AutoScalingGroupName = "my-auto-scaling-group",
      TargetGroupARNs = list(
        "arn:aws:elasticloadbalancing:us-west-2:123456789012:targetgroup/my-tar..."
      )
    )

    ## End(Not run)
