<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>locationservice_describe_geofence_collection</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves the geofence collection details

### Description

Retrieves the geofence collection details.

### Usage

    locationservice_describe_geofence_collection(CollectionName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="locationservice_describe_geofence_collection_:_CollectionName">CollectionName</code></td>
<td><p>[required] The name of the geofence collection.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      CollectionArn = "string",
      CollectionName = "string",
      CreateTime = as.POSIXct(
        "2015-01-01"
      ),
      Description = "string",
      KmsKeyId = "string",
      PricingPlan = "RequestBasedUsage"|"MobileAssetTracking"|"MobileAssetManagement",
      PricingPlanDataSource = "string",
      Tags = list(
        "string"
      ),
      UpdateTime = as.POSIXct(
        "2015-01-01"
      )
    )

### Request syntax

    svc$describe_geofence_collection(
      CollectionName = "string"
    )
