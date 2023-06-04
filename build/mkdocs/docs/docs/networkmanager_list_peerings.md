<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>networkmanager_list_peerings</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists the peerings for a core network

### Description

Lists the peerings for a core network.

### Usage

    networkmanager_list_peerings(CoreNetworkId, PeeringType, EdgeLocation,
      State, MaxResults, NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="networkmanager_list_peerings_:_CoreNetworkId">CoreNetworkId</code></td>
<td><p>The ID of a core network.</p></td>
</tr>
<tr class="even">
<td><code
id="networkmanager_list_peerings_:_PeeringType">PeeringType</code></td>
<td><p>Returns a list of a peering requests.</p></td>
</tr>
<tr class="odd">
<td><code
id="networkmanager_list_peerings_:_EdgeLocation">EdgeLocation</code></td>
<td><p>Returns a list edge locations for the</p></td>
</tr>
<tr class="even">
<td><code id="networkmanager_list_peerings_:_State">State</code></td>
<td><p>Returns a list of the peering request states.</p></td>
</tr>
<tr class="odd">
<td><code
id="networkmanager_list_peerings_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of results to return.</p></td>
</tr>
<tr class="even">
<td><code
id="networkmanager_list_peerings_:_NextToken">NextToken</code></td>
<td><p>The token for the next page of results.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Peerings = list(
        list(
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
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_peerings(
      CoreNetworkId = "string",
      PeeringType = "TRANSIT_GATEWAY",
      EdgeLocation = "string",
      State = "CREATING"|"FAILED"|"AVAILABLE"|"DELETING",
      MaxResults = 123,
      NextToken = "string"
    )
