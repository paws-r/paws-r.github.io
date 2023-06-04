<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>networkmanager_update_link</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates the details for an existing link

### Description

Updates the details for an existing link. To remove information for any
of the parameters, specify an empty string.

### Usage

    networkmanager_update_link(GlobalNetworkId, LinkId, Description, Type,
      Bandwidth, Provider)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="networkmanager_update_link_:_GlobalNetworkId">GlobalNetworkId</code></td>
<td><p>[required] The ID of the global network.</p></td>
</tr>
<tr class="even">
<td><code id="networkmanager_update_link_:_LinkId">LinkId</code></td>
<td><p>[required] The ID of the link.</p></td>
</tr>
<tr class="odd">
<td><code
id="networkmanager_update_link_:_Description">Description</code></td>
<td><p>A description of the link.</p>
<p>Constraints: Maximum length of 256 characters.</p></td>
</tr>
<tr class="even">
<td><code id="networkmanager_update_link_:_Type">Type</code></td>
<td><p>The type of the link.</p>
<p>Constraints: Maximum length of 128 characters.</p></td>
</tr>
<tr class="odd">
<td><code
id="networkmanager_update_link_:_Bandwidth">Bandwidth</code></td>
<td><p>The upload and download speed in Mbps.</p></td>
</tr>
<tr class="even">
<td><code
id="networkmanager_update_link_:_Provider">Provider</code></td>
<td><p>The provider of the link.</p>
<p>Constraints: Maximum length of 128 characters.</p></td>
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

    svc$update_link(
      GlobalNetworkId = "string",
      LinkId = "string",
      Description = "string",
      Type = "string",
      Bandwidth = list(
        UploadSpeed = 123,
        DownloadSpeed = 123
      ),
      Provider = "string"
    )
