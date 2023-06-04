<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_describe_traffic_mirror_filters</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes one or more Traffic Mirror filters

### Description

Describes one or more Traffic Mirror filters.

### Usage

    ec2_describe_traffic_mirror_filters(TrafficMirrorFilterIds, DryRun,
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
id="ec2_describe_traffic_mirror_filters_:_TrafficMirrorFilterIds">TrafficMirrorFilterIds</code></td>
<td><p>The ID of the Traffic Mirror filter.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_describe_traffic_mirror_filters_:_DryRun">DryRun</code></td>
<td><p>Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
<code>DryRunOperation</code>. Otherwise, it is
<code>UnauthorizedOperation</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_describe_traffic_mirror_filters_:_Filters">Filters</code></td>
<td><p>One or more filters. The possible values are:</p>
<ul>
<li><p><code>description</code>: The Traffic Mirror filter
description.</p></li>
<li><p><code>traffic-mirror-filter-id</code>: The ID of the Traffic
Mirror filter.</p></li>
</ul></td>
</tr>
<tr class="even">
<td><code
id="ec2_describe_traffic_mirror_filters_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of results to return with a single call. To
retrieve the remaining results, make another call with the returned
<code>nextToken</code> value.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_describe_traffic_mirror_filters_:_NextToken">NextToken</code></td>
<td><p>The token for the next page of results.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      TrafficMirrorFilters = list(
        list(
          TrafficMirrorFilterId = "string",
          IngressFilterRules = list(
            list(
              TrafficMirrorFilterRuleId = "string",
              TrafficMirrorFilterId = "string",
              TrafficDirection = "ingress"|"egress",
              RuleNumber = 123,
              RuleAction = "accept"|"reject",
              Protocol = 123,
              DestinationPortRange = list(
                FromPort = 123,
                ToPort = 123
              ),
              SourcePortRange = list(
                FromPort = 123,
                ToPort = 123
              ),
              DestinationCidrBlock = "string",
              SourceCidrBlock = "string",
              Description = "string"
            )
          ),
          EgressFilterRules = list(
            list(
              TrafficMirrorFilterRuleId = "string",
              TrafficMirrorFilterId = "string",
              TrafficDirection = "ingress"|"egress",
              RuleNumber = 123,
              RuleAction = "accept"|"reject",
              Protocol = 123,
              DestinationPortRange = list(
                FromPort = 123,
                ToPort = 123
              ),
              SourcePortRange = list(
                FromPort = 123,
                ToPort = 123
              ),
              DestinationCidrBlock = "string",
              SourceCidrBlock = "string",
              Description = "string"
            )
          ),
          NetworkServices = list(
            "amazon-dns"
          ),
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

    svc$describe_traffic_mirror_filters(
      TrafficMirrorFilterIds = list(
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
