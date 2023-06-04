<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>globalaccelerator_add_custom_routing_endpoints</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Associate a virtual private cloud (VPC) subnet endpoint with your custom routing accelerator

### Description

Associate a virtual private cloud (VPC) subnet endpoint with your custom
routing accelerator.

The listener port range must be large enough to support the number of IP
addresses that can be specified in your subnet. The number of ports
required is: subnet size times the number of ports per destination EC2
instances. For example, a subnet defined as /24 requires a listener port
range of at least 255 ports.

Note: You must have enough remaining listener ports available to map to
the subnet ports, or the call will fail with a LimitExceededException.

By default, all destinations in a subnet in a custom routing accelerator
cannot receive traffic. To enable all destinations to receive traffic,
or to specify individual port mappings that can receive traffic, see the
[AllowCustomRoutingTraffic](https://docs.aws.amazon.com/global-accelerator/latest/api/API_AllowCustomRoutingTraffic.html)
operation.

### Usage

    globalaccelerator_add_custom_routing_endpoints(EndpointConfigurations,
      EndpointGroupArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="globalaccelerator_add_custom_routing_endpoints_:_EndpointConfigurations">EndpointConfigurations</code></td>
<td><p>[required] The list of endpoint objects to add to a custom
routing accelerator.</p></td>
</tr>
<tr class="even">
<td><code
id="globalaccelerator_add_custom_routing_endpoints_:_EndpointGroupArn">EndpointGroupArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the endpoint group
for the custom routing endpoint.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      EndpointDescriptions = list(
        list(
          EndpointId = "string"
        )
      ),
      EndpointGroupArn = "string"
    )

### Request syntax

    svc$add_custom_routing_endpoints(
      EndpointConfigurations = list(
        list(
          EndpointId = "string"
        )
      ),
      EndpointGroupArn = "string"
    )
