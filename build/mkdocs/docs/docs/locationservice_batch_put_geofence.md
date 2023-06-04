<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>locationservice_batch_put_geofence</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## A batch request for storing geofence geometries into a given geofence collection, or updates the geometry of an existing geofence if a geofence ID is included in the request

### Description

A batch request for storing geofence geometries into a given geofence
collection, or updates the geometry of an existing geofence if a
geofence ID is included in the request.

### Usage

    locationservice_batch_put_geofence(CollectionName, Entries)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="locationservice_batch_put_geofence_:_CollectionName">CollectionName</code></td>
<td><p>[required] The geofence collection storing the
geofences.</p></td>
</tr>
<tr class="even">
<td><code
id="locationservice_batch_put_geofence_:_Entries">Entries</code></td>
<td><p>[required] The batch of geofences to be stored in a geofence
collection.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Errors = list(
        list(
          Error = list(
            Code = "AccessDeniedError"|"ConflictError"|"InternalServerError"|"ResourceNotFoundError"|"ThrottlingError"|"ValidationError",
            Message = "string"
          ),
          GeofenceId = "string"
        )
      ),
      Successes = list(
        list(
          CreateTime = as.POSIXct(
            "2015-01-01"
          ),
          GeofenceId = "string",
          UpdateTime = as.POSIXct(
            "2015-01-01"
          )
        )
      )
    )

### Request syntax

    svc$batch_put_geofence(
      CollectionName = "string",
      Entries = list(
        list(
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
      )
    )
