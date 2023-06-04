<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>locationservice_update_map</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates the specified properties of a given map resource

### Description

Updates the specified properties of a given map resource.

### Usage

    locationservice_update_map(Description, MapName, PricingPlan)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="locationservice_update_map_:_Description">Description</code></td>
<td><p>Updates the description for the map resource.</p></td>
</tr>
<tr class="even">
<td><code id="locationservice_update_map_:_MapName">MapName</code></td>
<td><p>[required] The name of the map resource to update.</p></td>
</tr>
<tr class="odd">
<td><code
id="locationservice_update_map_:_PricingPlan">PricingPlan</code></td>
<td><p>No longer used. If included, the only allowed value is
<code>RequestBasedUsage</code>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      MapArn = "string",
      MapName = "string",
      UpdateTime = as.POSIXct(
        "2015-01-01"
      )
    )

### Request syntax

    svc$update_map(
      Description = "string",
      MapName = "string",
      PricingPlan = "RequestBasedUsage"|"MobileAssetTracking"|"MobileAssetManagement"
    )
