<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_create_vpn_connection_route</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a static route associated with a VPN connection between an existing virtual private gateway and a VPN customer gateway

### Description

Creates a static route associated with a VPN connection between an
existing virtual private gateway and a VPN customer gateway. The static
route allows traffic to be routed from the virtual private gateway to
the VPN customer gateway.

For more information, see [Amazon Web Services Site-to-Site
VPN](https://docs.aws.amazon.com/vpn/latest/s2svpn/VPC_VPN.html) in the
*Amazon Web Services Site-to-Site VPN User Guide*.

### Usage

    ec2_create_vpn_connection_route(DestinationCidrBlock, VpnConnectionId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ec2_create_vpn_connection_route_:_DestinationCidrBlock">DestinationCidrBlock</code></td>
<td><p>[required] The CIDR block associated with the local subnet of the
customer network.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_create_vpn_connection_route_:_VpnConnectionId">VpnConnectionId</code></td>
<td><p>[required] The ID of the VPN connection.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$create_vpn_connection_route(
      DestinationCidrBlock = "string",
      VpnConnectionId = "string"
    )
