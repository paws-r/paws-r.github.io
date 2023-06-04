<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>globalaccelerator_update_endpoint_group</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Update an endpoint group

### Description

Update an endpoint group. A resource must be valid and active when you
add it as an endpoint.

### Usage

    globalaccelerator_update_endpoint_group(EndpointGroupArn,
      EndpointConfigurations, TrafficDialPercentage, HealthCheckPort,
      HealthCheckProtocol, HealthCheckPath, HealthCheckIntervalSeconds,
      ThresholdCount, PortOverrides)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="globalaccelerator_update_endpoint_group_:_EndpointGroupArn">EndpointGroupArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the endpoint
group.</p></td>
</tr>
<tr class="even">
<td><code
id="globalaccelerator_update_endpoint_group_:_EndpointConfigurations">EndpointConfigurations</code></td>
<td><p>The list of endpoint objects. A resource must be valid and active
when you add it as an endpoint.</p></td>
</tr>
<tr class="odd">
<td><code
id="globalaccelerator_update_endpoint_group_:_TrafficDialPercentage">TrafficDialPercentage</code></td>
<td><p>The percentage of traffic to send to an Amazon Web Services
Region. Additional traffic is distributed to other endpoint groups for
this listener.</p>
<p>Use this action to increase (dial up) or decrease (dial down) traffic
to a specific Region. The percentage is applied to the traffic that
would otherwise have been routed to the Region based on optimal
routing.</p>
<p>The default value is 100.</p></td>
</tr>
<tr class="even">
<td><code
id="globalaccelerator_update_endpoint_group_:_HealthCheckPort">HealthCheckPort</code></td>
<td><p>The port that Global Accelerator uses to check the health of
endpoints that are part of this endpoint group. The default port is the
listener port that this endpoint group is associated with. If the
listener port is a list of ports, Global Accelerator uses the first port
in the list.</p></td>
</tr>
<tr class="odd">
<td><code
id="globalaccelerator_update_endpoint_group_:_HealthCheckProtocol">HealthCheckProtocol</code></td>
<td><p>The protocol that Global Accelerator uses to check the health of
endpoints that are part of this endpoint group. The default value is
TCP.</p></td>
</tr>
<tr class="even">
<td><code
id="globalaccelerator_update_endpoint_group_:_HealthCheckPath">HealthCheckPath</code></td>
<td><p>If the protocol is HTTP/S, then this specifies the path that is
the destination for health check targets. The default value is slash
(/).</p></td>
</tr>
<tr class="odd">
<td><code
id="globalaccelerator_update_endpoint_group_:_HealthCheckIntervalSeconds">HealthCheckIntervalSeconds</code></td>
<td><p>The time—10 seconds or 30 seconds—between each health check for
an endpoint. The default value is 30.</p></td>
</tr>
<tr class="even">
<td><code
id="globalaccelerator_update_endpoint_group_:_ThresholdCount">ThresholdCount</code></td>
<td><p>The number of consecutive health checks required to set the state
of a healthy endpoint to unhealthy, or to set an unhealthy endpoint to
healthy. The default value is 3.</p></td>
</tr>
<tr class="odd">
<td><code
id="globalaccelerator_update_endpoint_group_:_PortOverrides">PortOverrides</code></td>
<td><p>Override specific listener ports used to route traffic to
endpoints that are part of this endpoint group. For example, you can
create a port override in which the listener receives user traffic on
ports 80 and 443, but your accelerator routes that traffic to ports 1080
and 1443, respectively, on the endpoints.</p>
<p>For more information, see <a
href="https://docs.aws.amazon.com/global-accelerator/latest/dg/about-endpoint-groups-port-override.html">Overriding
listener ports</a> in the <em>Global Accelerator Developer
Guide</em>.</p></td>
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

    svc$update_endpoint_group(
      EndpointGroupArn = "string",
      EndpointConfigurations = list(
        list(
          EndpointId = "string",
          Weight = 123,
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
