<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>autoscaling_attach_load_balancer_target_groups</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## This API operation is superseded by AttachTrafficSources, which can attach multiple traffic sources types

### Description

This API operation is superseded by `attach_traffic_sources`, which can
attach multiple traffic sources types. We recommend using
`attach_traffic_sources` to simplify how you manage traffic sources.
However, we continue to support `attach_load_balancer_target_groups`.
You can use both the original `attach_load_balancer_target_groups` API
operation and `attach_traffic_sources` on the same Auto Scaling group.

Attaches one or more target groups to the specified Auto Scaling group.

This operation is used with the following load balancer types:

-   Application Load Balancer - Operates at the application layer
    (layer 7) and supports HTTP and HTTPS.

-   Network Load Balancer - Operates at the transport layer (layer 4)
    and supports TCP, TLS, and UDP.

-   Gateway Load Balancer - Operates at the network layer (layer 3).

To describe the target groups for an Auto Scaling group, call the
`describe_load_balancer_target_groups` API. To detach the target group
from the Auto Scaling group, call the
`detach_load_balancer_target_groups` API.

This operation is additive and does not detach existing target groups or
Classic Load Balancers from the Auto Scaling group.

For more information, see [Use Elastic Load Balancing to distribute
traffic across the instances in your Auto Scaling
group](https://docs.aws.amazon.com/autoscaling/ec2/userguide/autoscaling-load-balancer.html)
in the *Amazon EC2 Auto Scaling User Guide*.

### Usage

    autoscaling_attach_load_balancer_target_groups(AutoScalingGroupName,
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
id="autoscaling_attach_load_balancer_target_groups_:_AutoScalingGroupName">AutoScalingGroupName</code></td>
<td><p>[required] The name of the Auto Scaling group.</p></td>
</tr>
<tr class="even">
<td><code
id="autoscaling_attach_load_balancer_target_groups_:_TargetGroupARNs">TargetGroupARNs</code></td>
<td><p>[required] The Amazon Resource Names (ARNs) of the target groups.
You can specify up to 10 target groups. To get the ARN of a target
group, use the Elastic Load Balancing <a
href="https://docs.aws.amazon.com/elasticloadbalancing/latest/APIReference/API_DescribeTargetGroups.html">DescribeTargetGroups</a>
API operation.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$attach_load_balancer_target_groups(
      AutoScalingGroupName = "string",
      TargetGroupARNs = list(
        "string"
      )
    )

### Examples

    ## Not run: 
    # This example attaches the specified target group to the specified Auto
    # Scaling group.
    svc$attach_load_balancer_target_groups(
      AutoScalingGroupName = "my-auto-scaling-group",
      TargetGroupARNs = list(
        "arn:aws:elasticloadbalancing:us-west-2:123456789012:targetgroup/my-tar..."
      )
    )

    ## End(Not run)
