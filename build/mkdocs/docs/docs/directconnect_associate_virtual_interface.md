<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>directconnect_associate_virtual_interface</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Associates a virtual interface with a specified link aggregation group (LAG) or connection

### Description

Associates a virtual interface with a specified link aggregation group
(LAG) or connection. Connectivity to Amazon Web Services is temporarily
interrupted as the virtual interface is being migrated. If the target
connection or LAG has an associated virtual interface with a conflicting
VLAN number or a conflicting IP address, the operation fails.

Virtual interfaces associated with a hosted connection cannot be
associated with a LAG; hosted connections must be migrated along with
their virtual interfaces using `associate_hosted_connection`.

To reassociate a virtual interface to a new connection or LAG, the
requester must own either the virtual interface itself or the connection
to which the virtual interface is currently associated. Additionally,
the requester must own the connection or LAG for the association.

### Usage

    directconnect_associate_virtual_interface(virtualInterfaceId,
      connectionId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="directconnect_associate_virtual_interface_:_virtualInterfaceId">virtualInterfaceId</code></td>
<td><p>[required] The ID of the virtual interface.</p></td>
</tr>
<tr class="even">
<td><code
id="directconnect_associate_virtual_interface_:_connectionId">connectionId</code></td>
<td><p>[required] The ID of the LAG or connection.</p></td>
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

    svc$associate_virtual_interface(
      virtualInterfaceId = "string",
      connectionId = "string"
    )
