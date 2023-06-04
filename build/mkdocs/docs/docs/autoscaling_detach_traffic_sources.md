<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>autoscaling_detach_traffic_sources</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Detaches one or more traffic sources from the specified Auto Scaling group

### Description

Detaches one or more traffic sources from the specified Auto Scaling
group.

When you detach a taffic, it enters the `Removing` state while
deregistering the instances in the group. When all instances are
deregistered, then you can no longer describe the traffic source using
the `describe_traffic_sources` API call. The instances continue to run.

### Usage

    autoscaling_detach_traffic_sources(AutoScalingGroupName, TrafficSources)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="autoscaling_detach_traffic_sources_:_AutoScalingGroupName">AutoScalingGroupName</code></td>
<td><p>[required] The name of the Auto Scaling group.</p></td>
</tr>
<tr class="even">
<td><code
id="autoscaling_detach_traffic_sources_:_TrafficSources">TrafficSources</code></td>
<td><p>[required] The unique identifiers of one or more traffic sources.
You can specify up to 10 traffic sources.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$detach_traffic_sources(
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
    # This example detaches the specified target group from the specified Auto
    # Scaling group.
    svc$detach_traffic_sources(
      AutoScalingGroupName = "my-auto-scaling-group",
      TrafficSources = list(
        list(
          Identifier = "arn:aws:elasticloadbalancing:us-west-2:123456789012:tar..."
        )
      )
    )

    ## End(Not run)
