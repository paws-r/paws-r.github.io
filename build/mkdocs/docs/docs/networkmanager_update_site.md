<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>networkmanager_update_site</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates the information for an existing site

### Description

Updates the information for an existing site. To remove information for
any of the parameters, specify an empty string.

### Usage

    networkmanager_update_site(GlobalNetworkId, SiteId, Description,
      Location)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="networkmanager_update_site_:_GlobalNetworkId">GlobalNetworkId</code></td>
<td><p>[required] The ID of the global network.</p></td>
</tr>
<tr class="even">
<td><code id="networkmanager_update_site_:_SiteId">SiteId</code></td>
<td><p>[required] The ID of your site.</p></td>
</tr>
<tr class="odd">
<td><code
id="networkmanager_update_site_:_Description">Description</code></td>
<td><p>A description of your site.</p>
<p>Constraints: Maximum length of 256 characters.</p></td>
</tr>
<tr class="even">
<td><code
id="networkmanager_update_site_:_Location">Location</code></td>
<td><p>The site location:</p>
<ul>
<li><p><code>Address</code>: The physical address of the site.</p></li>
<li><p><code>Latitude</code>: The latitude of the site.</p></li>
<li><p><code>Longitude</code>: The longitude of the site.</p></li>
</ul></td>
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

    svc$update_site(
      GlobalNetworkId = "string",
      SiteId = "string",
      Description = "string",
      Location = list(
        Address = "string",
        Latitude = "string",
        Longitude = "string"
      )
    )
