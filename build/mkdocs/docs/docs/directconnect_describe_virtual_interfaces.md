<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>directconnect_describe_virtual_interfaces</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Displays all virtual interfaces for an Amazon Web Services account

### Description

Displays all virtual interfaces for an Amazon Web Services account.
Virtual interfaces deleted fewer than 15 minutes before you make the
request are also returned. If you specify a connection ID, only the
virtual interfaces associated with the connection are returned. If you
specify a virtual interface ID, then only a single virtual interface is
returned.

A virtual interface (VLAN) transmits the traffic between the Direct
Connect location and the customer network.

### Usage

    directconnect_describe_virtual_interfaces(connectionId,
      virtualInterfaceId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="directconnect_describe_virtual_interfaces_:_connectionId">connectionId</code></td>
<td><p>The ID of the connection.</p></td>
</tr>
<tr class="even">
<td><code
id="directconnect_describe_virtual_interfaces_:_virtualInterfaceId">virtualInterfaceId</code></td>
<td><p>The ID of the virtual interface.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      virtualInterfaces = list(
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
      )
    )

### Request syntax

    svc$describe_virtual_interfaces(
      connectionId = "string",
      virtualInterfaceId = "string"
    )
