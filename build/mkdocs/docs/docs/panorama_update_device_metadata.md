<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>panorama_update_device_metadata</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates a device's metadata

### Description

Updates a device's metadata.

### Usage

    panorama_update_device_metadata(Description, DeviceId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="panorama_update_device_metadata_:_Description">Description</code></td>
<td><p>A description for the device.</p></td>
</tr>
<tr class="even">
<td><code
id="panorama_update_device_metadata_:_DeviceId">DeviceId</code></td>
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

    svc$update_device_metadata(
      Description = "string",
      DeviceId = "string"
    )
