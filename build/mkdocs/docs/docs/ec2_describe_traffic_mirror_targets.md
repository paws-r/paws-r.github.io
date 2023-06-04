<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_describe_traffic_mirror_targets</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Information about one or more Traffic Mirror targets

### Description

Information about one or more Traffic Mirror targets.

### Usage

    ec2_describe_traffic_mirror_targets(TrafficMirrorTargetIds, DryRun,
      Filters, MaxResults, NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ec2_describe_traffic_mirror_targets_:_TrafficMirrorTargetIds">TrafficMirrorTargetIds</code></td>
<td><p>The ID of the Traffic Mirror targets.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_describe_traffic_mirror_targets_:_DryRun">DryRun</code></td>
<td><p>Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
<code>DryRunOperation</code>. Otherwise, it is
<code>UnauthorizedOperation</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_describe_traffic_mirror_targets_:_Filters">Filters</code></td>
<td><p>One or more filters. The possible values are:</p>
<ul>
<li><p><code>description</code>: The Traffic Mirror target
description.</p></li>
<li><p><code>network-interface-id</code>: The ID of the Traffic Mirror
session network interface.</p></li>
<li><p><code>network-load-balancer-arn</code>: The Amazon Resource Name
(ARN) of the Network Load Balancer that is associated with the
session.</p></li>
<li><p><code>owner-id</code>: The ID of the account that owns the
Traffic Mirror session.</p></li>
<li><p><code>traffic-mirror-target-id</code>: The ID of the Traffic
Mirror target.</p></li>
</ul></td>
</tr>
<tr class="even">
<td><code
id="ec2_describe_traffic_mirror_targets_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of results to return with a single call. To
retrieve the remaining results, make another call with the returned
<code>nextToken</code> value.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_describe_traffic_mirror_targets_:_NextToken">NextToken</code></td>
<td><p>The token for the next page of results.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      TrafficMirrorTargets = list(
        list(
          TrafficMirrorTargetId = "string",
          NetworkInterfaceId = "string",
          NetworkLoadBalancerArn = "string",
          Type = "network-interface"|"network-load-balancer"|"gateway-load-balancer-endpoint",
          Description = "string",
          OwnerId = "string",
          Tags = list(
            list(
              Key = "string",
              Value = "string"
            )
          ),
          GatewayLoadBalancerEndpointId = "string"
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$describe_traffic_mirror_targets(
      TrafficMirrorTargetIds = list(
        "string"
      ),
      DryRun = TRUE|FALSE,
      Filters = list(
        list(
          Name = "string",
          Values = list(
            "string"
          )
        )
      ),
      MaxResults = 123,
      NextToken = "string"
    )
