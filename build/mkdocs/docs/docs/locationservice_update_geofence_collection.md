<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>locationservice_update_geofence_collection</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates the specified properties of a given geofence collection

### Description

Updates the specified properties of a given geofence collection.

### Usage

    locationservice_update_geofence_collection(CollectionName, Description,
      PricingPlan, PricingPlanDataSource)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="locationservice_update_geofence_collection_:_CollectionName">CollectionName</code></td>
<td><p>[required] The name of the geofence collection to
update.</p></td>
</tr>
<tr class="even">
<td><code
id="locationservice_update_geofence_collection_:_Description">Description</code></td>
<td><p>Updates the description for the geofence collection.</p></td>
</tr>
<tr class="odd">
<td><code
id="locationservice_update_geofence_collection_:_PricingPlan">PricingPlan</code></td>
<td><p>No longer used. If included, the only allowed value is
<code>RequestBasedUsage</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="locationservice_update_geofence_collection_:_PricingPlanDataSource">PricingPlanDataSource</code></td>
<td><p>This parameter is no longer used.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      CollectionArn = "string",
      CollectionName = "string",
      UpdateTime = as.POSIXct(
        "2015-01-01"
      )
    )

### Request syntax

    svc$update_geofence_collection(
      CollectionName = "string",
      Description = "string",
      PricingPlan = "RequestBasedUsage"|"MobileAssetTracking"|"MobileAssetManagement",
      PricingPlanDataSource = "string"
    )
