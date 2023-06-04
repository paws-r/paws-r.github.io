<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>directconnect_delete_bgp_peer</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes the specified BGP peer on the specified virtual interface with the specified customer address and ASN

### Description

Deletes the specified BGP peer on the specified virtual interface with
the specified customer address and ASN.

You cannot delete the last BGP peer from a virtual interface.

### Usage

    directconnect_delete_bgp_peer(virtualInterfaceId, asn, customerAddress,
      bgpPeerId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="directconnect_delete_bgp_peer_:_virtualInterfaceId">virtualInterfaceId</code></td>
<td><p>The ID of the virtual interface.</p></td>
</tr>
<tr class="even">
<td><code id="directconnect_delete_bgp_peer_:_asn">asn</code></td>
<td><p>The autonomous system (AS) number for Border Gateway Protocol
(BGP) configuration.</p></td>
</tr>
<tr class="odd">
<td><code
id="directconnect_delete_bgp_peer_:_customerAddress">customerAddress</code></td>
<td><p>The IP address assigned to the customer interface.</p></td>
</tr>
<tr class="even">
<td><code
id="directconnect_delete_bgp_peer_:_bgpPeerId">bgpPeerId</code></td>
<td><p>The ID of the BGP peer.</p></td>
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

    svc$delete_bgp_peer(
      virtualInterfaceId = "string",
      asn = 123,
      customerAddress = "string",
      bgpPeerId = "string"
    )
