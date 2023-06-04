<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_describe_traffic_mirror_sessions</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes one or more Traffic Mirror sessions

### Description

Describes one or more Traffic Mirror sessions. By default, all Traffic
Mirror sessions are described. Alternatively, you can filter the
results.

### Usage

    ec2_describe_traffic_mirror_sessions(TrafficMirrorSessionIds, DryRun,
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
id="ec2_describe_traffic_mirror_sessions_:_TrafficMirrorSessionIds">TrafficMirrorSessionIds</code></td>
<td><p>The ID of the Traffic Mirror session.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_describe_traffic_mirror_sessions_:_DryRun">DryRun</code></td>
<td><p>Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
<code>DryRunOperation</code>. Otherwise, it is
<code>UnauthorizedOperation</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_describe_traffic_mirror_sessions_:_Filters">Filters</code></td>
<td><p>One or more filters. The possible values are:</p>
<ul>
<li><p><code>description</code>: The Traffic Mirror session
description.</p></li>
<li><p><code>network-interface-id</code>: The ID of the Traffic Mirror
session network interface.</p></li>
<li><p><code>owner-id</code>: The ID of the account that owns the
Traffic Mirror session.</p></li>
<li><p><code>packet-length</code>: The assigned number of packets to
mirror.</p></li>
<li><p><code>session-number</code>: The assigned session
number.</p></li>
<li><p><code>traffic-mirror-filter-id</code>: The ID of the Traffic
Mirror filter.</p></li>
<li><p><code>traffic-mirror-session-id</code>: The ID of the Traffic
Mirror session.</p></li>
<li><p><code>traffic-mirror-target-id</code>: The ID of the Traffic
Mirror target.</p></li>
<li><p><code>virtual-network-id</code>: The virtual network ID of the
Traffic Mirror session.</p></li>
</ul></td>
</tr>
<tr class="even">
<td><code
id="ec2_describe_traffic_mirror_sessions_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of results to return with a single call. To
retrieve the remaining results, make another call with the returned
<code>nextToken</code> value.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_describe_traffic_mirror_sessions_:_NextToken">NextToken</code></td>
<td><p>The token for the next page of results.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      TrafficMirrorSessions = list(
        list(
          TrafficMirrorSessionId = "string",
          TrafficMirrorTargetId = "string",
          TrafficMirrorFilterId = "string",
          NetworkInterfaceId = "string",
          OwnerId = "string",
          PacketLength = 123,
          SessionNumber = 123,
          VirtualNetworkId = 123,
          Description = "string",
          Tags = list(
            list(
              Key = "string",
              Value = "string"
            )
          )
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$describe_traffic_mirror_sessions(
      TrafficMirrorSessionIds = list(
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
