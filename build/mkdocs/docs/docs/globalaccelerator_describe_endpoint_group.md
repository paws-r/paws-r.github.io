<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>globalaccelerator_describe_endpoint_group</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describe an endpoint group

### Description

Describe an endpoint group.

### Usage

    globalaccelerator_describe_endpoint_group(EndpointGroupArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="globalaccelerator_describe_endpoint_group_:_EndpointGroupArn">EndpointGroupArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the endpoint group
to describe.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      EndpointGroup = list(
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
    )

### Request syntax

    svc$describe_endpoint_group(
      EndpointGroupArn = "string"
    )
