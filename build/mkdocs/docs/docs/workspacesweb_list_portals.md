<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>workspacesweb_list_portals</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves a list or web portals

### Description

Retrieves a list or web portals.

### Usage

    workspacesweb_list_portals(maxResults, nextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="workspacesweb_list_portals_:_maxResults">maxResults</code></td>
<td><p>The maximum number of results to be included in the next
page.</p></td>
</tr>
<tr class="even">
<td><code
id="workspacesweb_list_portals_:_nextToken">nextToken</code></td>
<td><p>The pagination token used to retrieve the next page of results
for this operation.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      nextToken = "string",
      portals = list(
        list(
          authenticationType = "Standard"|"IAM_Identity_Center",
          browserSettingsArn = "string",
          browserType = "Chrome",
          creationDate = as.POSIXct(
            "2015-01-01"
          ),
          displayName = "string",
          networkSettingsArn = "string",
          portalArn = "string",
          portalEndpoint = "string",
          portalStatus = "Incomplete"|"Pending"|"Active",
          rendererType = "AppStream",
          trustStoreArn = "string",
          userAccessLoggingSettingsArn = "string",
          userSettingsArn = "string"
        )
      )
    )

### Request syntax

    svc$list_portals(
      maxResults = 123,
      nextToken = "string"
    )
