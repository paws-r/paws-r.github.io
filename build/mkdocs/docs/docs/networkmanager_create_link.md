<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>networkmanager_create_link</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a new link for a specified site

### Description

Creates a new link for a specified site.

### Usage

    networkmanager_create_link(GlobalNetworkId, Description, Type,
      Bandwidth, Provider, SiteId, Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="networkmanager_create_link_:_GlobalNetworkId">GlobalNetworkId</code></td>
<td><p>[required] The ID of the global network.</p></td>
</tr>
<tr class="even">
<td><code
id="networkmanager_create_link_:_Description">Description</code></td>
<td><p>A description of the link.</p>
<p>Constraints: Maximum length of 256 characters.</p></td>
</tr>
<tr class="odd">
<td><code id="networkmanager_create_link_:_Type">Type</code></td>
<td><p>The type of the link.</p>
<p>Constraints: Maximum length of 128 characters. Cannot include the
following characters: | \ ^</p></td>
</tr>
<tr class="even">
<td><code
id="networkmanager_create_link_:_Bandwidth">Bandwidth</code></td>
<td><p>[required] The upload speed and download speed in Mbps.</p></td>
</tr>
<tr class="odd">
<td><code
id="networkmanager_create_link_:_Provider">Provider</code></td>
<td><p>The provider of the link.</p>
<p>Constraints: Maximum length of 128 characters. Cannot include the
following characters: | \ ^</p></td>
</tr>
<tr class="even">
<td><code id="networkmanager_create_link_:_SiteId">SiteId</code></td>
<td><p>[required] The ID of the site.</p></td>
</tr>
<tr class="odd">
<td><code id="networkmanager_create_link_:_Tags">Tags</code></td>
<td><p>The tags to apply to the resource during creation.</p></td>
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

    svc$create_link(
      GlobalNetworkId = "string",
      Description = "string",
      Type = "string",
      Bandwidth = list(
        UploadSpeed = 123,
        DownloadSpeed = 123
      ),
      Provider = "string",
      SiteId = "string",
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      )
    )
