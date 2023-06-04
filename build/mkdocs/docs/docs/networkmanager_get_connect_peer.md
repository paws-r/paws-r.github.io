<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>networkmanager_get_connect_peer</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns information about a core network Connect peer

### Description

Returns information about a core network Connect peer.

### Usage

    networkmanager_get_connect_peer(ConnectPeerId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="networkmanager_get_connect_peer_:_ConnectPeerId">ConnectPeerId</code></td>
<td><p>[required] The ID of the Connect peer.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ConnectPeer = list(
        CoreNetworkId = "string",
        ConnectAttachmentId = "string",
        ConnectPeerId = "string",
        EdgeLocation = "string",
        State = "CREATING"|"FAILED"|"AVAILABLE"|"DELETING",
        CreatedAt = as.POSIXct(
          "2015-01-01"
        ),
        Configuration = list(
          CoreNetworkAddress = "string",
          PeerAddress = "string",
          InsideCidrBlocks = list(
            "string"
          ),
          Protocol = "GRE",
          BgpConfigurations = list(
            list(
              CoreNetworkAsn = 123,
              PeerAsn = 123,
              CoreNetworkAddress = "string",
              PeerAddress = "string"
            )
          )
        ),
        Tags = list(
          list(
            Key = "string",
            Value = "string"
          )
        )
      )
    )

### Request syntax

    svc$get_connect_peer(
      ConnectPeerId = "string"
    )
