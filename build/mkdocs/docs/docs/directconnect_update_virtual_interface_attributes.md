<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>directconnect_update_virtual_interface_attributes</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates the specified attributes of the specified virtual private interface

### Description

Updates the specified attributes of the specified virtual private
interface.

Setting the MTU of a virtual interface to 9001 (jumbo frames) can cause
an update to the underlying physical connection if it wasn't updated to
support jumbo frames. Updating the connection disrupts network
connectivity for all virtual interfaces associated with the connection
for up to 30 seconds. To check whether your connection supports jumbo
frames, call `describe_connections`. To check whether your virtual q
interface supports jumbo frames, call `describe_virtual_interfaces`.

### Usage

    directconnect_update_virtual_interface_attributes(virtualInterfaceId,
      mtu, enableSiteLink, virtualInterfaceName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="directconnect_update_virtual_interface_attributes_:_virtualInterfaceId">virtualInterfaceId</code></td>
<td><p>[required] The ID of the virtual private interface.</p></td>
</tr>
<tr class="even">
<td><code
id="directconnect_update_virtual_interface_attributes_:_mtu">mtu</code></td>
<td><p>The maximum transmission unit (MTU), in bytes. The supported
values are 1500 and 9001. The default value is 1500.</p></td>
</tr>
<tr class="odd">
<td><code
id="directconnect_update_virtual_interface_attributes_:_enableSiteLink">enableSiteLink</code></td>
<td><p>Indicates whether to enable or disable SiteLink.</p></td>
</tr>
<tr class="even">
<td><code
id="directconnect_update_virtual_interface_attributes_:_virtualInterfaceName">virtualInterfaceName</code></td>
<td><p>The name of the virtual private interface.</p></td>
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

    svc$update_virtual_interface_attributes(
      virtualInterfaceId = "string",
      mtu = 123,
      enableSiteLink = TRUE|FALSE,
      virtualInterfaceName = "string"
    )
