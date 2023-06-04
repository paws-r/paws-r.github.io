<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>directconnect_create_public_virtual_interface</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a public virtual interface

### Description

Creates a public virtual interface. A virtual interface is the VLAN that
transports Direct Connect traffic. A public virtual interface supports
sending traffic to public services of Amazon Web Services such as Amazon
S3.

When creating an IPv6 public virtual interface (`addressFamily` is
`ipv6`), leave the `customer` and `amazon` address fields blank to use
auto-assigned IPv6 space. Custom IPv6 addresses are not supported.

### Usage

    directconnect_create_public_virtual_interface(connectionId,
      newPublicVirtualInterface)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="directconnect_create_public_virtual_interface_:_connectionId">connectionId</code></td>
<td><p>[required] The ID of the connection.</p></td>
</tr>
<tr class="even">
<td><code
id="directconnect_create_public_virtual_interface_:_newPublicVirtualInterface">newPublicVirtualInterface</code></td>
<td><p>[required] Information about the public virtual
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

    svc$create_public_virtual_interface(
      connectionId = "string",
      newPublicVirtualInterface = list(
        virtualInterfaceName = "string",
        vlan = 123,
        asn = 123,
        authKey = "string",
        amazonAddress = "string",
        customerAddress = "string",
        addressFamily = "ipv4"|"ipv6",
        routeFilterPrefixes = list(
          list(
            cidr = "string"
          )
        ),
        tags = list(
          list(
            key = "string",
            value = "string"
          )
        )
      )
    )
