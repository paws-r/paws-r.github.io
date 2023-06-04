<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>directconnect_create_direct_connect_gateway</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a Direct Connect gateway, which is an intermediate object that enables you to connect a set of virtual interfaces and virtual private gateways

### Description

Creates a Direct Connect gateway, which is an intermediate object that
enables you to connect a set of virtual interfaces and virtual private
gateways. A Direct Connect gateway is global and visible in any Amazon
Web Services Region after it is created. The virtual interfaces and
virtual private gateways that are connected through a Direct Connect
gateway can be in different Amazon Web Services Regions. This enables
you to connect to a VPC in any Region, regardless of the Region in which
the virtual interfaces are located, and pass traffic between them.

### Usage

    directconnect_create_direct_connect_gateway(directConnectGatewayName,
      amazonSideAsn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="directconnect_create_direct_connect_gateway_:_directConnectGatewayName">directConnectGatewayName</code></td>
<td><p>[required] The name of the Direct Connect gateway.</p></td>
</tr>
<tr class="even">
<td><code
id="directconnect_create_direct_connect_gateway_:_amazonSideAsn">amazonSideAsn</code></td>
<td><p>The autonomous system number (ASN) for Border Gateway Protocol
(BGP) to be configured on the Amazon side of the connection. The ASN
must be in the private range of 64,512 to 65,534 or 4,200,000,000 to
4,294,967,294. The default is 64512.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      directConnectGateway = list(
        directConnectGatewayId = "string",
        directConnectGatewayName = "string",
        amazonSideAsn = 123,
        ownerAccount = "string",
        directConnectGatewayState = "pending"|"available"|"deleting"|"deleted",
        stateChangeError = "string"
      )
    )

### Request syntax

    svc$create_direct_connect_gateway(
      directConnectGatewayName = "string",
      amazonSideAsn = 123
    )
