<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>networkmanager_create_connect_peer</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a core network Connect peer for a specified core network connect attachment between a core network and an appliance

### Description

Creates a core network Connect peer for a specified core network connect
attachment between a core network and an appliance. The peer address and
transit gateway address must be the same IP address family (IPv4 or
IPv6).

### Usage

    networkmanager_create_connect_peer(ConnectAttachmentId,
      CoreNetworkAddress, PeerAddress, BgpOptions, InsideCidrBlocks, Tags,
      ClientToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="networkmanager_create_connect_peer_:_ConnectAttachmentId">ConnectAttachmentId</code></td>
<td><p>[required] The ID of the connection attachment.</p></td>
</tr>
<tr class="even">
<td><code
id="networkmanager_create_connect_peer_:_CoreNetworkAddress">CoreNetworkAddress</code></td>
<td><p>A Connect peer core network address.</p></td>
</tr>
<tr class="odd">
<td><code
id="networkmanager_create_connect_peer_:_PeerAddress">PeerAddress</code></td>
<td><p>[required] The Connect peer address.</p></td>
</tr>
<tr class="even">
<td><code
id="networkmanager_create_connect_peer_:_BgpOptions">BgpOptions</code></td>
<td><p>The Connect peer BGP options.</p></td>
</tr>
<tr class="odd">
<td><code
id="networkmanager_create_connect_peer_:_InsideCidrBlocks">InsideCidrBlocks</code></td>
<td><p>[required] The inside IP addresses used for BGP peering.</p></td>
</tr>
<tr class="even">
<td><code
id="networkmanager_create_connect_peer_:_Tags">Tags</code></td>
<td><p>The tags associated with the peer request.</p></td>
</tr>
<tr class="odd">
<td><code
id="networkmanager_create_connect_peer_:_ClientToken">ClientToken</code></td>
<td><p>The client token associated with the request.</p></td>
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

    svc$create_connect_peer(
      ConnectAttachmentId = "string",
      CoreNetworkAddress = "string",
      PeerAddress = "string",
      BgpOptions = list(
        PeerAsn = 123
      ),
      InsideCidrBlocks = list(
        "string"
      ),
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      ),
      ClientToken = "string"
    )
