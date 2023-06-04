<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>globalaccelerator_list_endpoint_groups</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## List the endpoint groups that are associated with a listener

### Description

List the endpoint groups that are associated with a listener.

### Usage

    globalaccelerator_list_endpoint_groups(ListenerArn, MaxResults,
      NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="globalaccelerator_list_endpoint_groups_:_ListenerArn">ListenerArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the
listener.</p></td>
</tr>
<tr class="even">
<td><code
id="globalaccelerator_list_endpoint_groups_:_MaxResults">MaxResults</code></td>
<td><p>The number of endpoint group objects that you want to return with
this call. The default value is 10.</p></td>
</tr>
<tr class="odd">
<td><code
id="globalaccelerator_list_endpoint_groups_:_NextToken">NextToken</code></td>
<td><p>The token for the next set of results. You receive this token
from a previous call.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      EndpointGroups = list(
        list(
          EndpointGroupArn = "string",
          EndpointGroupRegion = "string",
          EndpointDescriptions = list(
            list(
              EndpointId = "string",
              Weight = 123,
              HealthState = "INITIAL"|"HEALTHY"|"UNHEALTHY",
              HealthReason = "string",
              ClientIPPreservationEnabled = TRUE|FALSE
            )
          ),
          TrafficDialPercentage = 123.0,
          HealthCheckPort = 123,
          HealthCheckProtocol = "TCP"|"HTTP"|"HTTPS",
          HealthCheckPath = "string",
          HealthCheckIntervalSeconds = 123,
          ThresholdCount = 123,
          PortOverrides = list(
            list(
              ListenerPort = 123,
              EndpointPort = 123
            )
          )
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_endpoint_groups(
      ListenerArn = "string",
      MaxResults = 123,
      NextToken = "string"
    )
