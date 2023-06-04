<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_deregister_transit_gateway_multicast_group_sources</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deregisters the specified sources (network interfaces) from the transit gateway multicast group

### Description

Deregisters the specified sources (network interfaces) from the transit
gateway multicast group.

### Usage

    ec2_deregister_transit_gateway_multicast_group_sources(
      TransitGatewayMulticastDomainId, GroupIpAddress, NetworkInterfaceIds,
      DryRun)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ec2_deregister_transit_gateway_multicast_group_sources_:_TransitGatewayMulticastDomainId">TransitGatewayMulticastDomainId</code></td>
<td><p>The ID of the transit gateway multicast domain.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_deregister_transit_gateway_multicast_group_sources_:_GroupIpAddress">GroupIpAddress</code></td>
<td><p>The IP address assigned to the transit gateway multicast
group.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_deregister_transit_gateway_multicast_group_sources_:_NetworkInterfaceIds">NetworkInterfaceIds</code></td>
<td><p>The IDs of the group sources' network interfaces.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_deregister_transit_gateway_multicast_group_sources_:_DryRun">DryRun</code></td>
<td><p>Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
<code>DryRunOperation</code>. Otherwise, it is
<code>UnauthorizedOperation</code>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      DeregisteredMulticastGroupSources = list(
        TransitGatewayMulticastDomainId = "string",
        DeregisteredNetworkInterfaceIds = list(
          "string"
        ),
        GroupIpAddress = "string"
      )
    )

### Request syntax

    svc$deregister_transit_gateway_multicast_group_sources(
      TransitGatewayMulticastDomainId = "string",
      GroupIpAddress = "string",
      NetworkInterfaceIds = list(
        "string"
      ),
      DryRun = TRUE|FALSE
    )
