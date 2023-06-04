<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>locationservice_get_device_position</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves a device's most recent position according to its sample time

### Description

Retrieves a device's most recent position according to its sample time.

Device positions are deleted after 30 days.

### Usage

    locationservice_get_device_position(DeviceId, TrackerName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="locationservice_get_device_position_:_DeviceId">DeviceId</code></td>
<td><p>[required] The device whose position you want to
retrieve.</p></td>
</tr>
<tr class="even">
<td><code
id="locationservice_get_device_position_:_TrackerName">TrackerName</code></td>
<td><p>[required] The tracker resource receiving the position
update.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

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
      ReceivedTime = as.POSIXct(
        "2015-01-01"
      ),
      SampleTime = as.POSIXct(
        "2015-01-01"
      )
    )

### Request syntax

    svc$get_device_position(
      DeviceId = "string",
      TrackerName = "string"
    )
