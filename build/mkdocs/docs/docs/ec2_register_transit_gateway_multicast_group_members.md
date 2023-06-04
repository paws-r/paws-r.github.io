<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_register_transit_gateway_multicast_group_members</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Registers members (network interfaces) with the transit gateway multicast group

### Description

Registers members (network interfaces) with the transit gateway
multicast group. A member is a network interface associated with a
supported EC2 instance that receives multicast traffic. For information
about supported instances, see [Multicast
Consideration](https://docs.aws.amazon.com/vpc/latest/tgw/transit-gateway-quotas.html#multicast-limits)
in *Amazon VPC Transit Gateways*.

After you add the members, use `search_transit_gateway_multicast_groups`
to verify that the members were added to the transit gateway multicast
group.

### Usage

    ec2_register_transit_gateway_multicast_group_members(
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
id="ec2_register_transit_gateway_multicast_group_members_:_TransitGatewayMulticastDomainId">TransitGatewayMulticastDomainId</code></td>
<td><p>[required] The ID of the transit gateway multicast
domain.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_register_transit_gateway_multicast_group_members_:_GroupIpAddress">GroupIpAddress</code></td>
<td><p>The IP address assigned to the transit gateway multicast
group.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_register_transit_gateway_multicast_group_members_:_NetworkInterfaceIds">NetworkInterfaceIds</code></td>
<td><p>[required] The group members' network interface IDs to register
with the transit gateway multicast group.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_register_transit_gateway_multicast_group_members_:_DryRun">DryRun</code></td>
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
      RegisteredMulticastGroupMembers = list(
        TransitGatewayMulticastDomainId = "string",
        RegisteredNetworkInterfaceIds = list(
          "string"
        ),
        GroupIpAddress = "string"
      )
    )

### Request syntax

    svc$register_transit_gateway_multicast_group_members(
      TransitGatewayMulticastDomainId = "string",
      GroupIpAddress = "string",
      NetworkInterfaceIds = list(
        "string"
      ),
      DryRun = TRUE|FALSE
    )
