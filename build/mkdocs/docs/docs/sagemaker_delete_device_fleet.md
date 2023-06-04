<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sagemaker_delete_device_fleet</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes a fleet

### Description

Deletes a fleet.

### Usage

    sagemaker_delete_device_fleet(DeviceFleetName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="sagemaker_delete_device_fleet_:_DeviceFleetName">DeviceFleetName</code></td>
<td><p>[required] The name of the fleet to delete.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_device_fleet(
      DeviceFleetName = "string"
    )
