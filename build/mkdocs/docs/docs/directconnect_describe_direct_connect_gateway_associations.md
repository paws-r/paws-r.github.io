<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>directconnect_describe_direct_connect_gateway_associations</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists the associations between your Direct Connect gateways and virtual private gateways and transit gateways

### Description

Lists the associations between your Direct Connect gateways and virtual
private gateways and transit gateways. You must specify one of the
following:

-   A Direct Connect gateway

    The response contains all virtual private gateways and transit
    gateways associated with the Direct Connect gateway.

-   A virtual private gateway

    The response contains the Direct Connect gateway.

-   A transit gateway

    The response contains the Direct Connect gateway.

-   A Direct Connect gateway and a virtual private gateway

    The response contains the association between the Direct Connect
    gateway and virtual private gateway.

-   A Direct Connect gateway and a transit gateway

    The response contains the association between the Direct Connect
    gateway and transit gateway.

### Usage

    directconnect_describe_direct_connect_gateway_associations(
      associationId, associatedGatewayId, directConnectGatewayId, maxResults,
      nextToken, virtualGatewayId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="directconnect_describe_direct_connect_gateway_associations_:_associationId">associationId</code></td>
<td><p>The ID of the Direct Connect gateway association.</p></td>
</tr>
<tr class="even">
<td><code
id="directconnect_describe_direct_connect_gateway_associations_:_associatedGatewayId">associatedGatewayId</code></td>
<td><p>The ID of the associated gateway.</p></td>
</tr>
<tr class="odd">
<td><code
id="directconnect_describe_direct_connect_gateway_associations_:_directConnectGatewayId">directConnectGatewayId</code></td>
<td><p>The ID of the Direct Connect gateway.</p></td>
</tr>
<tr class="even">
<td><code
id="directconnect_describe_direct_connect_gateway_associations_:_maxResults">maxResults</code></td>
<td><p>The maximum number of results to return with a single call. To
retrieve the remaining results, make another call with the returned
<code>nextToken</code> value.</p>
<p>If <code>MaxResults</code> is given a value larger than 100, only 100
results are returned.</p></td>
</tr>
<tr class="odd">
<td><code
id="directconnect_describe_direct_connect_gateway_associations_:_nextToken">nextToken</code></td>
<td><p>The token provided in the previous call to retrieve the next
page.</p></td>
</tr>
<tr class="even">
<td><code
id="directconnect_describe_direct_connect_gateway_associations_:_virtualGatewayId">virtualGatewayId</code></td>
<td><p>The ID of the virtual private gateway or transit
gateway.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      directConnectGatewayAssociations = list(
        list(
          directConnectGatewayId = "string",
          directConnectGatewayOwnerAccount = "string",
          associationState = "associating"|"associated"|"disassociating"|"disassociated"|"updating",
          stateChangeError = "string",
          associatedGateway = list(
            id = "string",
            type = "virtualPrivateGateway"|"transitGateway",
            ownerAccount = "string",
            region = "string"
          ),
          associationId = "string",
          allowedPrefixesToDirectConnectGateway = list(
            list(
              cidr = "string"
            )
          ),
          virtualGatewayId = "string",
          virtualGatewayRegion = "string",
          virtualGatewayOwnerAccount = "string"
        )
      ),
      nextToken = "string"
    )

### Request syntax

    svc$describe_direct_connect_gateway_associations(
      associationId = "string",
      associatedGatewayId = "string",
      directConnectGatewayId = "string",
      maxResults = 123,
      nextToken = "string",
      virtualGatewayId = "string"
    )
