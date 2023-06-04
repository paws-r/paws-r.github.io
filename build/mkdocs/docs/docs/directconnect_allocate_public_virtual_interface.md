<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>directconnect_allocate_public_virtual_interface</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Provisions a public virtual interface to be owned by the specified Amazon Web Services account

### Description

Provisions a public virtual interface to be owned by the specified
Amazon Web Services account.

The owner of a connection calls this function to provision a public
virtual interface to be owned by the specified Amazon Web Services
account.

Virtual interfaces created using this function must be confirmed by the
owner using `confirm_public_virtual_interface`. Until this step has been
completed, the virtual interface is in the `confirming` state and is not
available to handle traffic.

When creating an IPv6 public virtual interface, omit the Amazon address
and customer address. IPv6 addresses are automatically assigned from the
Amazon pool of IPv6 addresses; you cannot specify custom IPv6 addresses.

### Usage

    directconnect_allocate_public_virtual_interface(connectionId,
      ownerAccount, newPublicVirtualInterfaceAllocation)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="directconnect_allocate_public_virtual_interface_:_connectionId">connectionId</code></td>
<td><p>[required] The ID of the connection on which the public virtual
interface is provisioned.</p></td>
</tr>
<tr class="even">
<td><code
id="directconnect_allocate_public_virtual_interface_:_ownerAccount">ownerAccount</code></td>
<td><p>[required] The ID of the Amazon Web Services account that owns
the public virtual interface.</p></td>
</tr>
<tr class="odd">
<td><code
id="directconnect_allocate_public_virtual_interface_:_newPublicVirtualInterfaceAllocation">newPublicVirtualInterfaceAllocation</code></td>
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

    svc$allocate_public_virtual_interface(
      connectionId = "string",
      ownerAccount = "string",
      newPublicVirtualInterfaceAllocation = list(
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
