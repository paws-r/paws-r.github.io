<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>networkmanager_delete_link</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes an existing link

### Description

Deletes an existing link. You must first disassociate the link from any
devices and customer gateways.

### Usage

    networkmanager_delete_link(GlobalNetworkId, LinkId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="networkmanager_delete_link_:_GlobalNetworkId">GlobalNetworkId</code></td>
<td><p>[required] The ID of the global network.</p></td>
</tr>
<tr class="even">
<td><code id="networkmanager_delete_link_:_LinkId">LinkId</code></td>
<td><p>[required] The ID of the link.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Link = list(
        LinkId = "string",
        LinkArn = "string",
        GlobalNetworkId = "string",
        SiteId = "string",
        Description = "string",
        Type = "string",
        Bandwidth = list(
          UploadSpeed = 123,
          DownloadSpeed = 123
        ),
        Provider = "string",
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

    svc$delete_link(
      GlobalNetworkId = "string",
      LinkId = "string"
    )
