<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>networkmanager_list_core_networks</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns a list of owned and shared core networks

### Description

Returns a list of owned and shared core networks.

### Usage

    networkmanager_list_core_networks(MaxResults, NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="networkmanager_list_core_networks_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of results to return.</p></td>
</tr>
<tr class="even">
<td><code
id="networkmanager_list_core_networks_:_NextToken">NextToken</code></td>
<td><p>The token for the next page of results.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      CoreNetworks = list(
        list(
          CoreNetworkId = "string",
          CoreNetworkArn = "string",
          GlobalNetworkId = "string",
          OwnerAccountId = "string",
          State = "CREATING"|"UPDATING"|"AVAILABLE"|"DELETING",
          Description = "string",
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

    svc$list_core_networks(
      MaxResults = 123,
      NextToken = "string"
    )
