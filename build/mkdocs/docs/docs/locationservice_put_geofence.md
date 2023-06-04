<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>locationservice_put_geofence</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Stores a geofence geometry in a given geofence collection, or updates the geometry of an existing geofence if a geofence ID is included in the request

### Description

Stores a geofence geometry in a given geofence collection, or updates
the geometry of an existing geofence if a geofence ID is included in the
request.

### Usage

    locationservice_put_geofence(CollectionName, GeofenceId, Geometry)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="locationservice_put_geofence_:_CollectionName">CollectionName</code></td>
<td><p>[required] The geofence collection to store the geofence
in.</p></td>
</tr>
<tr class="even">
<td><code
id="locationservice_put_geofence_:_GeofenceId">GeofenceId</code></td>
<td><p>[required] An identifier for the geofence. For example,
<code>ExampleGeofence-1</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="locationservice_put_geofence_:_Geometry">Geometry</code></td>
<td><p>[required] Contains the details to specify the position of the
geofence. Can be either a polygon or a circle. Including both will
return a validation error.</p>
<p>Each <a
href="https://docs.aws.amazon.com/location/latest/APIReference/API_GeofenceGeometry.html">geofence
polygon</a> can have a maximum of 1,000 vertices.</p></td>
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
      UpdateTime = as.POSIXct(
        "2015-01-01"
      )
    )

### Request syntax

    svc$put_geofence(
      CollectionName = "string",
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
      )
    )
