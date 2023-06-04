<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>networkmanager_update_global_network</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates an existing global network

### Description

Updates an existing global network. To remove information for any of the
parameters, specify an empty string.

### Usage

    networkmanager_update_global_network(GlobalNetworkId, Description)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="networkmanager_update_global_network_:_GlobalNetworkId">GlobalNetworkId</code></td>
<td><p>[required] The ID of your global network.</p></td>
</tr>
<tr class="even">
<td><code
id="networkmanager_update_global_network_:_Description">Description</code></td>
<td><p>A description of the global network.</p>
<p>Constraints: Maximum length of 256 characters.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      GlobalNetwork = list(
        GlobalNetworkId = "string",
        GlobalNetworkArn = "string",
        Description = "string",
        CreatedAt = as.POSIXct(
          "2015-01-01"
        ),
        State = "PENDING"|"AVAILABLE"|"DELETING"|"UPDATING",
        Tags = list(
          list(
            Key = "string",
            Value = "string"
          )
        )
      )
    )

### Request syntax

    svc$update_global_network(
      GlobalNetworkId = "string",
      Description = "string"
    )
