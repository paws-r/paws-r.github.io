<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>autoscaling_describe_traffic_sources</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets information about the traffic sources for the specified Auto Scaling group

### Description

Gets information about the traffic sources for the specified Auto
Scaling group.

You can optionally provide a traffic source type. If you provide a
traffic source type, then the results only include that traffic source
type.

If you do not provide a traffic source type, then the results include
all the traffic sources for the specified Auto Scaling group.

### Usage

    autoscaling_describe_traffic_sources(AutoScalingGroupName,
      TrafficSourceType, NextToken, MaxRecords)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="autoscaling_describe_traffic_sources_:_AutoScalingGroupName">AutoScalingGroupName</code></td>
<td><p>[required] The name of the Auto Scaling group.</p></td>
</tr>
<tr class="even">
<td><code
id="autoscaling_describe_traffic_sources_:_TrafficSourceType">TrafficSourceType</code></td>
<td><p>The traffic source type that you want to describe.</p>
<p>The following lists the valid values:</p>
<ul>
<li><p><code>elb</code> if the traffic source is a Classic Load
Balancer.</p></li>
<li><p><code>elbv2</code> if the traffic source is a Application Load
Balancer, Gateway Load Balancer, or Network Load Balancer.</p></li>
<li><p><code>vpc-lattice</code> if the traffic source is VPC
Lattice.</p></li>
</ul></td>
</tr>
<tr class="odd">
<td><code
id="autoscaling_describe_traffic_sources_:_NextToken">NextToken</code></td>
<td><p>The token for the next set of items to return. (You received this
token from a previous call.)</p></td>
</tr>
<tr class="even">
<td><code
id="autoscaling_describe_traffic_sources_:_MaxRecords">MaxRecords</code></td>
<td><p>The maximum number of items to return with this call. The maximum
value is <code>50</code>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      TrafficSources = list(
        list(
          TrafficSource = "string",
          State = "string",
          Identifier = "string",
          Type = "string"
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$describe_traffic_sources(
      AutoScalingGroupName = "string",
      TrafficSourceType = "string",
      NextToken = "string",
      MaxRecords = 123
    )

### Examples

    ## Not run: 
    # This example describes the target groups attached to the specified Auto
    # Scaling group.
    svc$describe_traffic_sources(
      AutoScalingGroupName = "my-auto-scaling-group"
    )

    ## End(Not run)
