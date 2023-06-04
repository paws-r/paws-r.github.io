<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>locationservice_batch_delete_device_position_history</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes the position history of one or more devices from a tracker resource

### Description

Deletes the position history of one or more devices from a tracker
resource.

### Usage

    locationservice_batch_delete_device_position_history(DeviceIds,
      TrackerName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="locationservice_batch_delete_device_position_history_:_DeviceIds">DeviceIds</code></td>
<td><p>[required] Devices whose position history you want to delete.</p>
<ul>
<li><p>For example, for two devices: <code
style="white-space: pre;">⁠“DeviceIds” : [DeviceId1,DeviceId2]⁠</code></p></li>
</ul></td>
</tr>
<tr class="even">
<td><code
id="locationservice_batch_delete_device_position_history_:_TrackerName">TrackerName</code></td>
<td><p>[required] The name of the tracker resource to delete the device
position history from.</p></td>
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
          )
        )
      )
    )

### Request syntax

    svc$batch_delete_device_position_history(
      DeviceIds = list(
        "string"
      ),
      TrackerName = "string"
    )
