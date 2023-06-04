<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>directconnect_allocate_transit_virtual_interface</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Provisions a transit virtual interface to be owned by the specified Amazon Web Services account

### Description

Provisions a transit virtual interface to be owned by the specified
Amazon Web Services account. Use this type of interface to connect a
transit gateway to your Direct Connect gateway.

The owner of a connection provisions a transit virtual interface to be
owned by the specified Amazon Web Services account.

After you create a transit virtual interface, it must be confirmed by
the owner using `confirm_transit_virtual_interface`. Until this step has
been completed, the transit virtual interface is in the `requested`
state and is not available to handle traffic.

### Usage

    directconnect_allocate_transit_virtual_interface(connectionId,
      ownerAccount, newTransitVirtualInterfaceAllocation)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="directconnect_allocate_transit_virtual_interface_:_connectionId">connectionId</code></td>
<td><p>[required] The ID of the connection on which the transit virtual
interface is provisioned.</p></td>
</tr>
<tr class="even">
<td><code
id="directconnect_allocate_transit_virtual_interface_:_ownerAccount">ownerAccount</code></td>
<td><p>[required] The ID of the Amazon Web Services account that owns
the transit virtual interface.</p></td>
</tr>
<tr class="odd">
<td><code
id="directconnect_allocate_transit_virtual_interface_:_newTransitVirtualInterfaceAllocation">newTransitVirtualInterfaceAllocation</code></td>
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

    svc$allocate_transit_virtual_interface(
      connectionId = "string",
      ownerAccount = "string",
      newTransitVirtualInterfaceAllocation = list(
        virtualInterfaceName = "string",
        vlan = 123,
        asn = 123,
        mtu = 123,
        authKey = "string",
        amazonAddress = "string",
        customerAddress = "string",
        addressFamily = "ipv4"|"ipv6",
        tags = list(
          list(
            key = "string",
            value = "string"
          )
        )
      )
    )
