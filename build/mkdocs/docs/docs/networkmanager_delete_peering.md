<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>networkmanager_delete_peering</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes an existing peering connection

### Description

Deletes an existing peering connection.

### Usage

    networkmanager_delete_peering(PeeringId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="networkmanager_delete_peering_:_PeeringId">PeeringId</code></td>
<td><p>[required] The ID of the peering connection to delete.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Peering = list(
        CoreNetworkId = "string",
        CoreNetworkArn = "string",
        PeeringId = "string",
        OwnerAccountId = "string",
        PeeringType = "TRANSIT_GATEWAY",
        State = "CREATING"|"FAILED"|"AVAILABLE"|"DELETING",
        EdgeLocation = "string",
        ResourceArn = "string",
        Tags = list(
          list(
            Key = "string",
            Value = "string"
          )
        ),
        CreatedAt = as.POSIXct(
          "2015-01-01"
        )
      )
    )

### Request syntax

    svc$delete_peering(
      PeeringId = "string"
    )
