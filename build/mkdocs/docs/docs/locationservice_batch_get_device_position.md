<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>locationservice_batch_get_device_position</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists the latest device positions for requested devices

### Description

Lists the latest device positions for requested devices.

### Usage

    locationservice_batch_get_device_position(DeviceIds, TrackerName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="locationservice_batch_get_device_position_:_DeviceIds">DeviceIds</code></td>
<td><p>[required] Devices whose position you want to retrieve.</p>
<ul>
<li><p>For example, for two devices:
<code>device-ids=DeviceId1&amp;device-ids=DeviceId2</code></p></li>
</ul></td>
</tr>
<tr class="even">
<td><code
id="locationservice_batch_get_device_position_:_TrackerName">TrackerName</code></td>
<td><p>[required] The tracker resource retrieving the device
position.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      DevicePositions = list(
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
      ),
      Errors = list(
        list(
          DeviceId = "string",
          Error = list(
            Code = "AccessDeniedError"|"ConflictError"|"InternalServerError"|"ResourceNotFoundError"|"ThrottlingError"|"ValidationError",
            Message = "string"
          )
        )
      )
    )

### Request syntax

    svc$batch_get_device_position(
      DeviceIds = list(
        "string"
      ),
      TrackerName = "string"
    )
