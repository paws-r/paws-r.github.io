<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>locationservice_update_place_index</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates the specified properties of a given place index resource

### Description

Updates the specified properties of a given place index resource.

### Usage

    locationservice_update_place_index(DataSourceConfiguration, Description,
      IndexName, PricingPlan)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="locationservice_update_place_index_:_DataSourceConfiguration">DataSourceConfiguration</code></td>
<td><p>Updates the data storage option for the place index
resource.</p></td>
</tr>
<tr class="even">
<td><code
id="locationservice_update_place_index_:_Description">Description</code></td>
<td><p>Updates the description for the place index resource.</p></td>
</tr>
<tr class="odd">
<td><code
id="locationservice_update_place_index_:_IndexName">IndexName</code></td>
<td><p>[required] The name of the place index resource to
update.</p></td>
</tr>
<tr class="even">
<td><code
id="locationservice_update_place_index_:_PricingPlan">PricingPlan</code></td>
<td><p>No longer used. If included, the only allowed value is
<code>RequestBasedUsage</code>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      IndexArn = "string",
      IndexName = "string",
      UpdateTime = as.POSIXct(
        "2015-01-01"
      )
    )

### Request syntax

    svc$update_place_index(
      DataSourceConfiguration = list(
        IntendedUse = "SingleUse"|"Storage"
      ),
      Description = "string",
      IndexName = "string",
      PricingPlan = "RequestBasedUsage"|"MobileAssetTracking"|"MobileAssetManagement"
    )
