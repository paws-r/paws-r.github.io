<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>locationservice_batch_delete_geofence</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes a batch of geofences from a geofence collection

### Description

Deletes a batch of geofences from a geofence collection.

This operation deletes the resource permanently.

### Usage

    locationservice_batch_delete_geofence(CollectionName, GeofenceIds)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="locationservice_batch_delete_geofence_:_CollectionName">CollectionName</code></td>
<td><p>[required] The geofence collection storing the geofences to be
deleted.</p></td>
</tr>
<tr class="even">
<td><code
id="locationservice_batch_delete_geofence_:_GeofenceIds">GeofenceIds</code></td>
<td><p>[required] The batch of geofences to be deleted.</p></td>
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
      )
    )

### Request syntax

    svc$batch_delete_geofence(
      CollectionName = "string",
      GeofenceIds = list(
        "string"
      )
    )
