<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>networkmanager_update_core_network</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates the description of a core network

### Description

Updates the description of a core network.

### Usage

    networkmanager_update_core_network(CoreNetworkId, Description)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="networkmanager_update_core_network_:_CoreNetworkId">CoreNetworkId</code></td>
<td><p>[required] The ID of a core network.</p></td>
</tr>
<tr class="even">
<td><code
id="networkmanager_update_core_network_:_Description">Description</code></td>
<td><p>The description of the update.</p></td>
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

    svc$update_core_network(
      CoreNetworkId = "string",
      Description = "string"
    )
