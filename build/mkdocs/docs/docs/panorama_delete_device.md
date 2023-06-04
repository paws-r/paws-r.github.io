<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>panorama_delete_device</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes a device

### Description

Deletes a device.

### Usage

    panorama_delete_device(DeviceId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="panorama_delete_device_:_DeviceId">DeviceId</code></td>
<td><p>[required] The device's ID.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      DeviceId = "string"
    )

### Request syntax

    svc$delete_device(
      DeviceId = "string"
    )
