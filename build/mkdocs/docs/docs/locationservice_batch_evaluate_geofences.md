<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>locationservice_batch_evaluate_geofences</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Evaluates device positions against the geofence geometries from a given geofence collection

### Description

Evaluates device positions against the geofence geometries from a given
geofence collection.

This operation always returns an empty response because geofences are
asynchronously evaluated. The evaluation determines if the device has
entered or exited a geofenced area, and then publishes one of the
following events to Amazon EventBridge:

-   `ENTER` if Amazon Location determines that the tracked device has
    entered a geofenced area.

-   `EXIT` if Amazon Location determines that the tracked device has
    exited a geofenced area.

The last geofence that a device was observed within is tracked for 30
days after the most recent device position update.

Geofence evaluation uses the given device position. It does not account
for the optional `Accuracy` of a `DevicePositionUpdate`.

The `DeviceID` is used as a string to represent the device. You do not
need to have a `Tracker` associated with the `DeviceID`.

### Usage

    locationservice_batch_evaluate_geofences(CollectionName,
      DevicePositionUpdates)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="locationservice_batch_evaluate_geofences_:_CollectionName">CollectionName</code></td>
<td><p>[required] The geofence collection used in evaluating the
position of devices against its geofences.</p></td>
</tr>
<tr class="even">
<td><code
id="locationservice_batch_evaluate_geofences_:_DevicePositionUpdates">DevicePositionUpdates</code></td>
<td><p>[required] Contains device details for each device to be
evaluated against the given geofence collection.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Errors = list(
        list(
          DeviceId = "string",
          Error = list(
            Code = "AccessDeniedError"|"ConflictError"|"InternalServerError"|"ResourceNotFoundError"|"ThrottlingError"|"ValidationError",
            Message = "string"
          ),
          SampleTime = as.POSIXct(
            "2015-01-01"
          )
        )
      )
    )

### Request syntax

    svc$batch_evaluate_geofences(
      CollectionName = "string",
      DevicePositionUpdates = list(
        list(
          Accuracy = list(
            Horizontal = 123.0
          ),
          DeviceId = "string",
          Position = list(
            123.0
          ),
          PositionProperties = list(
            "string"
          ),
          SampleTime = as.POSIXct(
            "2015-01-01"
          )
        )
      )
    )
