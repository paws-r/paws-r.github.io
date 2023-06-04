<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>directconnect_describe_direct_connect_gateway_association_proposals</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes one or more association proposals for connection between a virtual private gateway or transit gateway and a Direct Connect gateway

### Description

Describes one or more association proposals for connection between a
virtual private gateway or transit gateway and a Direct Connect gateway.

### Usage

    directconnect_describe_direct_connect_gateway_association_proposals(
      directConnectGatewayId, proposalId, associatedGatewayId, maxResults,
      nextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="directconnect_describe_direct_connect_gateway_association_proposals_:_directConnectGatewayId">directConnectGatewayId</code></td>
<td><p>The ID of the Direct Connect gateway.</p></td>
</tr>
<tr class="even">
<td><code
id="directconnect_describe_direct_connect_gateway_association_proposals_:_proposalId">proposalId</code></td>
<td><p>The ID of the proposal.</p></td>
</tr>
<tr class="odd">
<td><code
id="directconnect_describe_direct_connect_gateway_association_proposals_:_associatedGatewayId">associatedGatewayId</code></td>
<td><p>The ID of the associated gateway.</p></td>
</tr>
<tr class="even">
<td><code
id="directconnect_describe_direct_connect_gateway_association_proposals_:_maxResults">maxResults</code></td>
<td><p>The maximum number of results to return with a single call. To
retrieve the remaining results, make another call with the returned
<code>nextToken</code> value.</p>
<p>If <code>MaxResults</code> is given a value larger than 100, only 100
results are returned.</p></td>
</tr>
<tr class="odd">
<td><code
id="directconnect_describe_direct_connect_gateway_association_proposals_:_nextToken">nextToken</code></td>
<td><p>The token for the next page of results.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      directConnectGatewayAssociationProposals = list(
        list(
          proposalId = "string",
          directConnectGatewayId = "string",
          directConnectGatewayOwnerAccount = "string",
          proposalState = "requested"|"accepted"|"deleted",
          associatedGateway = list(
            id = "string",
            type = "virtualPrivateGateway"|"transitGateway",
            ownerAccount = "string",
            region = "string"
          ),
          existingAllowedPrefixesToDirectConnectGateway = list(
            list(
              cidr = "string"
            )
          ),
          requestedAllowedPrefixesToDirectConnectGateway = list(
            list(
              cidr = "string"
            )
          )
        )
      ),
      nextToken = "string"
    )

### Request syntax

    svc$describe_direct_connect_gateway_association_proposals(
      directConnectGatewayId = "string",
      proposalId = "string",
      associatedGatewayId = "string",
      maxResults = 123,
      nextToken = "string"
    )
