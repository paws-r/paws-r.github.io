<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>globalaccelerator_deny_custom_routing_traffic</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Specify the Amazon EC2 instance (destination) IP addresses and ports for a VPC subnet endpoint that cannot receive traffic for a custom routing accelerator

### Description

Specify the Amazon EC2 instance (destination) IP addresses and ports for
a VPC subnet endpoint that cannot receive traffic for a custom routing
accelerator. You can deny traffic to all destinations in the VPC
endpoint, or deny traffic to a specified list of destination IP
addresses and ports. Note that you cannot specify IP addresses or ports
outside of the range that you configured for the endpoint group.

After you make changes, you can verify that the updates are complete by
checking the status of your accelerator: the status changes from
IN\_PROGRESS to DEPLOYED.

### Usage

    globalaccelerator_deny_custom_routing_traffic(EndpointGroupArn,
      EndpointId, DestinationAddresses, DestinationPorts,
      DenyAllTrafficToEndpoint)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="globalaccelerator_deny_custom_routing_traffic_:_EndpointGroupArn">EndpointGroupArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the endpoint
group.</p></td>
</tr>
<tr class="even">
<td><code
id="globalaccelerator_deny_custom_routing_traffic_:_EndpointId">EndpointId</code></td>
<td><p>[required] An ID for the endpoint. For custom routing
accelerators, this is the virtual private cloud (VPC) subnet
ID.</p></td>
</tr>
<tr class="odd">
<td><code
id="globalaccelerator_deny_custom_routing_traffic_:_DestinationAddresses">DestinationAddresses</code></td>
<td><p>A list of specific Amazon EC2 instance IP addresses (destination
addresses) in a subnet that you want to prevent from receiving traffic.
The IP addresses must be a subset of the IP addresses allowed for the
VPC subnet associated with the endpoint group.</p></td>
</tr>
<tr class="even">
<td><code
id="globalaccelerator_deny_custom_routing_traffic_:_DestinationPorts">DestinationPorts</code></td>
<td><p>A list of specific Amazon EC2 instance ports (destination ports)
in a subnet endpoint that you want to prevent from receiving
traffic.</p></td>
</tr>
<tr class="odd">
<td><code
id="globalaccelerator_deny_custom_routing_traffic_:_DenyAllTrafficToEndpoint">DenyAllTrafficToEndpoint</code></td>
<td><p>Indicates whether all destination IP addresses and ports for a
specified VPC subnet endpoint <em>cannot</em> receive traffic from a
custom routing accelerator. The value is TRUE or FALSE.</p>
<p>When set to TRUE, <em>no</em> destinations in the custom routing VPC
subnet can receive traffic. Note that you cannot specify destination IP
addresses and ports when the value is set to TRUE.</p>
<p>When set to FALSE (or not specified), you <em>must</em> specify a
list of destination IP addresses that cannot receive traffic. A list of
ports is optional. If you don't specify a list of ports, the ports that
can accept traffic is the same as the ports configured for the endpoint
group.</p>
<p>The default value is FALSE.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$deny_custom_routing_traffic(
      EndpointGroupArn = "string",
      EndpointId = "string",
      DestinationAddresses = list(
        "string"
      ),
      DestinationPorts = list(
        123
      ),
      DenyAllTrafficToEndpoint = TRUE|FALSE
    )
