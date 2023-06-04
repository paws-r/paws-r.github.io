<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>directconnect_create_bgp_peer</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a BGP peer on the specified virtual interface

### Description

Creates a BGP peer on the specified virtual interface.

You must create a BGP peer for the corresponding address family
(IPv4/IPv6) in order to access Amazon Web Services resources that also
use that address family.

If logical redundancy is not supported by the connection, interconnect,
or LAG, the BGP peer cannot be in the same address family as an existing
BGP peer on the virtual interface.

When creating a IPv6 BGP peer, omit the Amazon address and customer
address. IPv6 addresses are automatically assigned from the Amazon pool
of IPv6 addresses; you cannot specify custom IPv6 addresses.

If you let Amazon Web Services auto-assign IPv4 addresses, a /30 CIDR
will be allocated from 169.254.0.0/16. Amazon Web Services does not
recommend this option if you intend to use the customer router peer IP
address as the source and destination for traffic. Instead you should
use RFC 1918 or other addressing, and specify the address yourself. For
more information about RFC 1918 see [Address Allocation for Private
Internets](https://datatracker.ietf.org/doc/html/rfc1918).

For a public virtual interface, the Autonomous System Number (ASN) must
be private or already on the allow list for the virtual interface.

### Usage

    directconnect_create_bgp_peer(virtualInterfaceId, newBGPPeer)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="directconnect_create_bgp_peer_:_virtualInterfaceId">virtualInterfaceId</code></td>
<td><p>The ID of the virtual interface.</p></td>
</tr>
<tr class="even">
<td><code
id="directconnect_create_bgp_peer_:_newBGPPeer">newBGPPeer</code></td>
<td><p>Information about the BGP peer.</p></td>
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

    svc$create_bgp_peer(
      virtualInterfaceId = "string",
      newBGPPeer = list(
        asn = 123,
        authKey = "string",
        addressFamily = "ipv4"|"ipv6",
        amazonAddress = "string",
        customerAddress = "string"
      )
    )
