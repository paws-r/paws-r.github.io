<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>globalaccelerator_list_custom_routing_port_mappings_by_destination</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## List the port mappings for a specific EC2 instance (destination) in a VPC subnet endpoint

### Description

List the port mappings for a specific EC2 instance (destination) in a
VPC subnet endpoint. The response is the mappings for one destination IP
address. This is useful when your subnet endpoint has mappings that span
multiple custom routing accelerators in your account, or for scenarios
where you only want to list the port mappings for a specific destination
instance.

### Usage

    globalaccelerator_list_custom_routing_port_mappings_by_destination(
      EndpointId, DestinationAddress, MaxResults, NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="globalaccelerator_list_custom_routing_port_mappings_by_destination_:_EndpointId">EndpointId</code></td>
<td><p>[required] The ID for the virtual private cloud (VPC)
subnet.</p></td>
</tr>
<tr class="even">
<td><code
id="globalaccelerator_list_custom_routing_port_mappings_by_destination_:_DestinationAddress">DestinationAddress</code></td>
<td><p>[required] The endpoint IP address in a virtual private cloud
(VPC) subnet for which you want to receive back port mappings.</p></td>
</tr>
<tr class="odd">
<td><code
id="globalaccelerator_list_custom_routing_port_mappings_by_destination_:_MaxResults">MaxResults</code></td>
<td><p>The number of destination port mappings that you want to return
with this call. The default value is 10.</p></td>
</tr>
<tr class="even">
<td><code
id="globalaccelerator_list_custom_routing_port_mappings_by_destination_:_NextToken">NextToken</code></td>
<td><p>The token for the next set of results. You receive this token
from a previous call.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      DestinationPortMappings = list(
        list(
          AcceleratorArn = "string",
          AcceleratorSocketAddresses = list(
            list(
              IpAddress = "string",
              Port = 123
            )
          ),
          EndpointGroupArn = "string",
          EndpointId = "string",
          EndpointGroupRegion = "string",
          DestinationSocketAddress = list(
            IpAddress = "string",
            Port = 123
          ),
          IpAddressType = "IPV4"|"DUAL_STACK",
          DestinationTrafficState = "ALLOW"|"DENY"
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_custom_routing_port_mappings_by_destination(
      EndpointId = "string",
      DestinationAddress = "string",
      MaxResults = 123,
      NextToken = "string"
    )
