<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>globalaccelerator_list_custom_routing_port_mappings</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Provides a complete mapping from the public accelerator IP address and port to destination EC2 instance IP addresses and ports in the virtual public cloud (VPC) subnet endpoint for a custom routing accelerator

### Description

Provides a complete mapping from the public accelerator IP address and
port to destination EC2 instance IP addresses and ports in the virtual
public cloud (VPC) subnet endpoint for a custom routing accelerator. For
each subnet endpoint that you add, Global Accelerator creates a new
static port mapping for the accelerator. The port mappings don't change
after Global Accelerator generates them, so you can retrieve and cache
the full mapping on your servers.

If you remove a subnet from your accelerator, Global Accelerator removes
(reclaims) the port mappings. If you add a subnet to your accelerator,
Global Accelerator creates new port mappings (the existing ones don't
change). If you add or remove EC2 instances in your subnet, the port
mappings don't change, because the mappings are created when you add the
subnet to Global Accelerator.

The mappings also include a flag for each destination denoting which
destination IP addresses and ports are allowed or denied traffic.

### Usage

    globalaccelerator_list_custom_routing_port_mappings(AcceleratorArn,
      EndpointGroupArn, MaxResults, NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="globalaccelerator_list_custom_routing_port_mappings_:_AcceleratorArn">AcceleratorArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the accelerator to
list the custom routing port mappings for.</p></td>
</tr>
<tr class="even">
<td><code
id="globalaccelerator_list_custom_routing_port_mappings_:_EndpointGroupArn">EndpointGroupArn</code></td>
<td><p>The Amazon Resource Name (ARN) of the endpoint group to list the
custom routing port mappings for.</p></td>
</tr>
<tr class="odd">
<td><code
id="globalaccelerator_list_custom_routing_port_mappings_:_MaxResults">MaxResults</code></td>
<td><p>The number of destination port mappings that you want to return
with this call. The default value is 10.</p></td>
</tr>
<tr class="even">
<td><code
id="globalaccelerator_list_custom_routing_port_mappings_:_NextToken">NextToken</code></td>
<td><p>The token for the next set of results. You receive this token
from a previous call.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      PortMappings = list(
        list(
          AcceleratorPort = 123,
          EndpointGroupArn = "string",
          EndpointId = "string",
          DestinationSocketAddress = list(
            IpAddress = "string",
            Port = 123
          ),
          Protocols = list(
            "TCP"|"UDP"
          ),
          DestinationTrafficState = "ALLOW"|"DENY"
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_custom_routing_port_mappings(
      AcceleratorArn = "string",
      EndpointGroupArn = "string",
      MaxResults = 123,
      NextToken = "string"
    )
