<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>networkmanager_create_global_network</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a new, empty global network

### Description

Creates a new, empty global network.

### Usage

    networkmanager_create_global_network(Description, Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="networkmanager_create_global_network_:_Description">Description</code></td>
<td><p>A description of the global network.</p>
<p>Constraints: Maximum length of 256 characters.</p></td>
</tr>
<tr class="even">
<td><code
id="networkmanager_create_global_network_:_Tags">Tags</code></td>
<td><p>The tags to apply to the resource during creation.</p></td>
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

    svc$create_global_network(
      Description = "string",
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      )
    )
