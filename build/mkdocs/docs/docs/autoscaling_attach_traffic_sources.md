<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>autoscaling_attach_traffic_sources</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Attaches one or more traffic sources to the specified Auto Scaling group

### Description

Attaches one or more traffic sources to the specified Auto Scaling
group.

You can use any of the following as traffic sources for an Auto Scaling
group:

-   Application Load Balancer

-   Classic Load Balancer

-   Gateway Load Balancer

-   Network Load Balancer

-   VPC Lattice

This operation is additive and does not detach existing traffic sources
from the Auto Scaling group.

After the operation completes, use the `describe_traffic_sources` API to
return details about the state of the attachments between traffic
sources and your Auto Scaling group. To detach a traffic source from the
Auto Scaling group, call the `detach_traffic_sources` API.

### Usage

    autoscaling_attach_traffic_sources(AutoScalingGroupName, TrafficSources)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="autoscaling_attach_traffic_sources_:_AutoScalingGroupName">AutoScalingGroupName</code></td>
<td><p>[required] The name of the Auto Scaling group.</p></td>
</tr>
<tr class="even">
<td><code
id="autoscaling_attach_traffic_sources_:_TrafficSources">TrafficSources</code></td>
<td><p>[required] The unique identifiers of one or more traffic sources.
You can specify up to 10 traffic sources.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$attach_traffic_sources(
      AutoScalingGroupName = "string",
      TrafficSources = list(
        list(
          Identifier = "string",
          Type = "string"
        )
      )
    )

### Examples

    ## Not run: 
    # This example attaches the specified target group to the specified Auto
    # Scaling group.
    svc$attach_traffic_sources(
      AutoScalingGroupName = "my-auto-scaling-group",
      TrafficSources = list(
        list(
          Identifier = "arn:aws:elasticloadbalancing:us-west-2:123456789012:tar..."
        )
      )
    )

    ## End(Not run)
