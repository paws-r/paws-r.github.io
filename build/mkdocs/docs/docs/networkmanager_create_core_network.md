<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>networkmanager_create_core_network</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a core network as part of your global network, and optionally, with a core network policy

### Description

Creates a core network as part of your global network, and optionally,
with a core network policy.

### Usage

    networkmanager_create_core_network(GlobalNetworkId, Description, Tags,
      PolicyDocument, ClientToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="networkmanager_create_core_network_:_GlobalNetworkId">GlobalNetworkId</code></td>
<td><p>[required] The ID of the global network that a core network will
be a part of.</p></td>
</tr>
<tr class="even">
<td><code
id="networkmanager_create_core_network_:_Description">Description</code></td>
<td><p>The description of a core network.</p></td>
</tr>
<tr class="odd">
<td><code
id="networkmanager_create_core_network_:_Tags">Tags</code></td>
<td><p>Key-value tags associated with a core network request.</p></td>
</tr>
<tr class="even">
<td><code
id="networkmanager_create_core_network_:_PolicyDocument">PolicyDocument</code></td>
<td><p>The policy document for creating a core network.</p></td>
</tr>
<tr class="odd">
<td><code
id="networkmanager_create_core_network_:_ClientToken">ClientToken</code></td>
<td><p>The client token associated with a core network request.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      CoreNetwork = list(
        GlobalNetworkId = "string",
        CoreNetworkId = "string",
        CoreNetworkArn = "string",
        Description = "string",
        CreatedAt = as.POSIXct(
          "2015-01-01"
        ),
        State = "CREATING"|"UPDATING"|"AVAILABLE"|"DELETING",
        Segments = list(
          list(
            Name = "string",
            EdgeLocations = list(
              "string"
            ),
            SharedSegments = list(
              "string"
            )
          )
        ),
        Edges = list(
          list(
            EdgeLocation = "string",
            Asn = 123,
            InsideCidrBlocks = list(
              "string"
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

    svc$create_core_network(
      GlobalNetworkId = "string",
      Description = "string",
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      ),
      PolicyDocument = "string",
      ClientToken = "string"
    )
