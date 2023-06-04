<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>networkmanager_get_connect_peer_associations</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns information about a core network Connect peer associations

### Description

Returns information about a core network Connect peer associations.

### Usage

    networkmanager_get_connect_peer_associations(GlobalNetworkId,
      ConnectPeerIds, MaxResults, NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="networkmanager_get_connect_peer_associations_:_GlobalNetworkId">GlobalNetworkId</code></td>
<td><p>[required] The ID of the global network.</p></td>
</tr>
<tr class="even">
<td><code
id="networkmanager_get_connect_peer_associations_:_ConnectPeerIds">ConnectPeerIds</code></td>
<td><p>The IDs of the Connect peers.</p></td>
</tr>
<tr class="odd">
<td><code
id="networkmanager_get_connect_peer_associations_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of results to return.</p></td>
</tr>
<tr class="even">
<td><code
id="networkmanager_get_connect_peer_associations_:_NextToken">NextToken</code></td>
<td><p>The token for the next page of results.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ConnectPeerAssociations = list(
        list(
          ConnectPeerId = "string",
          GlobalNetworkId = "string",
          DeviceId = "string",
          LinkId = "string",
          State = "PENDING"|"AVAILABLE"|"DELETING"|"DELETED"
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$get_connect_peer_associations(
      GlobalNetworkId = "string",
      ConnectPeerIds = list(
        "string"
      ),
      MaxResults = 123,
      NextToken = "string"
    )
