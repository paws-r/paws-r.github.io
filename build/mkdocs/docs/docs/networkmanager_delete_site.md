<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>networkmanager_delete_site</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes an existing site

### Description

Deletes an existing site. The site cannot be associated with any device
or link.

### Usage

    networkmanager_delete_site(GlobalNetworkId, SiteId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="networkmanager_delete_site_:_GlobalNetworkId">GlobalNetworkId</code></td>
<td><p>[required] The ID of the global network.</p></td>
</tr>
<tr class="even">
<td><code id="networkmanager_delete_site_:_SiteId">SiteId</code></td>
<td><p>[required] The ID of the site.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Site = list(
        SiteId = "string",
        SiteArn = "string",
        GlobalNetworkId = "string",
        Description = "string",
        Location = list(
          Address = "string",
          Latitude = "string",
          Longitude = "string"
        ),
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

    svc$delete_site(
      GlobalNetworkId = "string",
      SiteId = "string"
    )
