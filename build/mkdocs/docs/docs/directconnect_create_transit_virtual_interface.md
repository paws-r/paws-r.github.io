<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>directconnect_create_transit_virtual_interface</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a transit virtual interface

### Description

Creates a transit virtual interface. A transit virtual interface should
be used to access one or more transit gateways associated with Direct
Connect gateways. A transit virtual interface enables the connection of
multiple VPCs attached to a transit gateway to a Direct Connect gateway.

If you associate your transit gateway with one or more Direct Connect
gateways, the Autonomous System Number (ASN) used by the transit gateway
and the Direct Connect gateway must be different. For example, if you
use the default ASN 64512 for both your the transit gateway and Direct
Connect gateway, the association request fails.

A jumbo MTU value must be either 1500 or 8500. No other values will be
accepted. Setting the MTU of a virtual interface to 8500 (jumbo frames)
can cause an update to the underlying physical connection if it wasn't
updated to support jumbo frames. Updating the connection disrupts
network connectivity for all virtual interfaces associated with the
connection for up to 30 seconds. To check whether your connection
supports jumbo frames, call `describe_connections`. To check whether
your virtual interface supports jumbo frames, call
`describe_virtual_interfaces`.

### Usage

    directconnect_create_transit_virtual_interface(connectionId,
      newTransitVirtualInterface)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="directconnect_create_transit_virtual_interface_:_connectionId">connectionId</code></td>
<td><p>[required] The ID of the connection.</p></td>
</tr>
<tr class="even">
<td><code
id="directconnect_create_transit_virtual_interface_:_newTransitVirtualInterface">newTransitVirtualInterface</code></td>
<td><p>[required] Information about the transit virtual
interface.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      virtualInterface = list(
        ownerAccount = "string",
        virtualInterfaceId = "string",
        location = "string",
        connectionId = "string",
        virtualInterfaceType = "string",
        virtualInterfaceName = "string",
        vlan = 123,
        asn = 123,
        amazonSideAsn = 123,
        authKey = "string",
        amazonAddress = "string",
        customerAddress = "string",
        addressFamily = "ipv4"|"ipv6",
        virtualInterfaceState = "confirming"|"verifying"|"pending"|"available"|"down"|"deleting"|"deleted"|"rejected"|"unknown",
        customerRouterConfig = "string",
        mtu = 123,
        jumboFrameCapable = TRUE|FALSE,
        virtualGatewayId = "string",
        directConnectGatewayId = "string",
        routeFilterPrefixes = list(
          list(
            cidr = "string"
          )
        ),
        bgpPeers = list(
          list(
            bgpPeerId = "string",
            asn = 123,
            authKey = "string",
            addressFamily = "ipv4"|"ipv6",
            amazonAddress = "string",
            customerAddress = "string",
            bgpPeerState = "verifying"|"pending"|"available"|"deleting"|"deleted",
            bgpStatus = "up"|"down"|"unknown",
            awsDeviceV2 = "string",
            awsLogicalDeviceId = "string"
          )
        ),
        region = "string",
        awsDeviceV2 = "string",
        awsLogicalDeviceId = "string",
        tags = list(
          list(
            key = "string",
            value = "string"
          )
        ),
        siteLinkEnabled = TRUE|FALSE
      )
    )

### Request syntax

    svc$create_transit_virtual_interface(
      connectionId = "string",
      newTransitVirtualInterface = list(
        virtualInterfaceName = "string",
        vlan = 123,
        asn = 123,
        mtu = 123,
        authKey = "string",
        amazonAddress = "string",
        customerAddress = "string",
        addressFamily = "ipv4"|"ipv6",
        directConnectGatewayId = "string",
        tags = list(
          list(
            key = "string",
            value = "string"
          )
        ),
        enableSiteLink = TRUE|FALSE
      )
    )
