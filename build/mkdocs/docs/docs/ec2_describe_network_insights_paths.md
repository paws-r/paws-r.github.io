<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_describe_network_insights_paths</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes one or more of your paths

### Description

Describes one or more of your paths.

### Usage

    ec2_describe_network_insights_paths(NetworkInsightsPathIds, Filters,
      MaxResults, DryRun, NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ec2_describe_network_insights_paths_:_NetworkInsightsPathIds">NetworkInsightsPathIds</code></td>
<td><p>The IDs of the paths.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_describe_network_insights_paths_:_Filters">Filters</code></td>
<td><p>The filters. The following are the possible values:</p>
<ul>
<li><p>destination - The ID of the resource.</p></li>
<li><p>filter-at-source.source-address - The source IPv4 address at the
source.</p></li>
<li><p>filter-at-source.source-port-range - The source port range at the
source.</p></li>
<li><p>filter-at-source.destination-address - The destination IPv4
address at the source.</p></li>
<li><p>filter-at-source.destination-port-range - The destination port
range at the source.</p></li>
<li><p>filter-at-destination.source-address - The source IPv4 address at
the destination.</p></li>
<li><p>filter-at-destination.source-port-range - The source port range
at the destination.</p></li>
<li><p>filter-at-destination.destination-address - The destination IPv4
address at the destination.</p></li>
<li><p>filter-at-destination.destination-port-range - The destination
port range at the destination.</p></li>
<li><p>protocol - The protocol.</p></li>
<li><p>source - The ID of the resource.</p></li>
</ul></td>
</tr>
<tr class="odd">
<td><code
id="ec2_describe_network_insights_paths_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of results to return with a single call. To
retrieve the remaining results, make another call with the returned
<code>nextToken</code> value.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_describe_network_insights_paths_:_DryRun">DryRun</code></td>
<td><p>Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
<code>DryRunOperation</code>. Otherwise, it is
<code>UnauthorizedOperation</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_describe_network_insights_paths_:_NextToken">NextToken</code></td>
<td><p>The token for the next page of results.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      NetworkInsightsPaths = list(
        list(
          NetworkInsightsPathId = "string",
          NetworkInsightsPathArn = "string",
          CreatedDate = as.POSIXct(
            "2015-01-01"
          ),
          Source = "string",
          Destination = "string",
          SourceArn = "string",
          DestinationArn = "string",
          SourceIp = "string",
          DestinationIp = "string",
          Protocol = "tcp"|"udp",
          DestinationPort = 123,
          Tags = list(
            list(
              Key = "string",
              Value = "string"
            )
          ),
          FilterAtSource = list(
            SourceAddress = "string",
            SourcePortRange = list(
              FromPort = 123,
              ToPort = 123
            ),
            DestinationAddress = "string",
            DestinationPortRange = list(
              FromPort = 123,
              ToPort = 123
            )
          ),
          FilterAtDestination = list(
            SourceAddress = "string",
            SourcePortRange = list(
              FromPort = 123,
              ToPort = 123
            ),
            DestinationAddress = "string",
            DestinationPortRange = list(
              FromPort = 123,
              ToPort = 123
            )
          )
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$describe_network_insights_paths(
      NetworkInsightsPathIds = list(
        "string"
      ),
      Filters = list(
        list(
          Name = "string",
          Values = list(
            "string"
          )
        )
      ),
      MaxResults = 123,
      DryRun = TRUE|FALSE,
      NextToken = "string"
    )
