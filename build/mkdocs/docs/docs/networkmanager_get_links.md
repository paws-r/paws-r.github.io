<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>networkmanager_get_links</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets information about one or more links in a specified global network

### Description

Gets information about one or more links in a specified global network.

If you specify the site ID, you cannot specify the type or provider in
the same request. You can specify the type and provider in the same
request.

### Usage

    networkmanager_get_links(GlobalNetworkId, LinkIds, SiteId, Type,
      Provider, MaxResults, NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="networkmanager_get_links_:_GlobalNetworkId">GlobalNetworkId</code></td>
<td><p>[required] The ID of the global network.</p></td>
</tr>
<tr class="even">
<td><code id="networkmanager_get_links_:_LinkIds">LinkIds</code></td>
<td><p>One or more link IDs. The maximum is 10.</p></td>
</tr>
<tr class="odd">
<td><code id="networkmanager_get_links_:_SiteId">SiteId</code></td>
<td><p>The ID of the site.</p></td>
</tr>
<tr class="even">
<td><code id="networkmanager_get_links_:_Type">Type</code></td>
<td><p>The link type.</p></td>
</tr>
<tr class="odd">
<td><code id="networkmanager_get_links_:_Provider">Provider</code></td>
<td><p>The link provider.</p></td>
</tr>
<tr class="even">
<td><code
id="networkmanager_get_links_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of results to return.</p></td>
</tr>
<tr class="odd">
<td><code
id="networkmanager_get_links_:_NextToken">NextToken</code></td>
<td><p>The token for the next page of results.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Links = list(
        list(
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
      ),
      NextToken = "string"
    )

### Request syntax

    svc$get_links(
      GlobalNetworkId = "string",
      LinkIds = list(
        "string"
      ),
      SiteId = "string",
      Type = "string",
      Provider = "string",
      MaxResults = 123,
      NextToken = "string"
    )
