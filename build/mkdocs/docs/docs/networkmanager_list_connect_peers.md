<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>networkmanager_list_connect_peers</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns a list of core network Connect peers

### Description

Returns a list of core network Connect peers.

### Usage

    networkmanager_list_connect_peers(CoreNetworkId, ConnectAttachmentId,
      MaxResults, NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="networkmanager_list_connect_peers_:_CoreNetworkId">CoreNetworkId</code></td>
<td><p>The ID of a core network.</p></td>
</tr>
<tr class="even">
<td><code
id="networkmanager_list_connect_peers_:_ConnectAttachmentId">ConnectAttachmentId</code></td>
<td><p>The ID of the attachment.</p></td>
</tr>
<tr class="odd">
<td><code
id="networkmanager_list_connect_peers_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of results to return.</p></td>
</tr>
<tr class="even">
<td><code
id="networkmanager_list_connect_peers_:_NextToken">NextToken</code></td>
<td><p>The token for the next page of results.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ConnectPeers = list(
        list(
          CoreNetworkId = "string",
          ConnectAttachmentId = "string",
          ConnectPeerId = "string",
          EdgeLocation = "string",
          ConnectPeerState = "CREATING"|"FAILED"|"AVAILABLE"|"DELETING",
          CreatedAt = as.POSIXct(
            "2015-01-01"
          ),
          Tags = list(
            list(
              Key = "string",
              Value = "string"
            )
          )
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_connect_peers(
      CoreNetworkId = "string",
      ConnectAttachmentId = "string",
      MaxResults = 123,
      NextToken = "string"
    )
