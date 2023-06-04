<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>directconnect_create_private_virtual_interface</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a private virtual interface

### Description

Creates a private virtual interface. A virtual interface is the VLAN
that transports Direct Connect traffic. A private virtual interface can
be connected to either a Direct Connect gateway or a Virtual Private
Gateway (VGW). Connecting the private virtual interface to a Direct
Connect gateway enables the possibility for connecting to multiple VPCs,
including VPCs in different Amazon Web Services Regions. Connecting the
private virtual interface to a VGW only provides access to a single VPC
within the same Region.

Setting the MTU of a virtual interface to 9001 (jumbo frames) can cause
an update to the underlying physical connection if it wasn't updated to
support jumbo frames. Updating the connection disrupts network
connectivity for all virtual interfaces associated with the connection
for up to 30 seconds. To check whether your connection supports jumbo
frames, call `describe_connections`. To check whether your virtual
interface supports jumbo frames, call `describe_virtual_interfaces`.

### Usage

    directconnect_create_private_virtual_interface(connectionId,
      newPrivateVirtualInterface)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="directconnect_create_private_virtual_interface_:_connectionId">connectionId</code></td>
<td><p>[required] The ID of the connection.</p></td>
</tr>
<tr class="even">
<td><code
id="directconnect_create_private_virtual_interface_:_newPrivateVirtualInterface">newPrivateVirtualInterface</code></td>
<td><p>[required] Information about the private virtual
interface.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
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

### Request syntax

    svc$create_private_virtual_interface(
      connectionId = "string",
      newPrivateVirtualInterface = list(
        virtualInterfaceName = "string",
        vlan = 123,
        asn = 123,
        mtu = 123,
        authKey = "string",
        amazonAddress = "string",
        customerAddress = "string",
        addressFamily = "ipv4"|"ipv6",
        virtualGatewayId = "string",
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
