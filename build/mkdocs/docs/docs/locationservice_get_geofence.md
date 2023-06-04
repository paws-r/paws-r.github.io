<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>locationservice_get_geofence</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves the geofence details from a geofence collection

### Description

Retrieves the geofence details from a geofence collection.

### Usage

    locationservice_get_geofence(CollectionName, GeofenceId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="locationservice_get_geofence_:_CollectionName">CollectionName</code></td>
<td><p>[required] The geofence collection storing the target
geofence.</p></td>
</tr>
<tr class="even">
<td><code
id="locationservice_get_geofence_:_GeofenceId">GeofenceId</code></td>
<td><p>[required] The geofence you're retrieving details for.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      CreateTime = as.POSIXct(
        "2015-01-01"
      ),
      GeofenceId = "string",
      Geometry = list(
        Circle = list(
          Center = list(
            123.0
          ),
          Radius = 123.0
        ),
        Polygon = list(
          list(
            list(
              123.0
            )
          )
        )
      ),
      Status = "string",
      UpdateTime = as.POSIXct(
        "2015-01-01"
      )
    )

### Request syntax

    svc$get_geofence(
      CollectionName = "string",
      GeofenceId = "string"
    )
