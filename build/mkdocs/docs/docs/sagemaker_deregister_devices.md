<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sagemaker_deregister_devices</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deregisters the specified devices

### Description

Deregisters the specified devices. After you deregister a device, you
will need to re-register the devices.

### Usage

    sagemaker_deregister_devices(DeviceFleetName, DeviceNames)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="sagemaker_deregister_devices_:_DeviceFleetName">DeviceFleetName</code></td>
<td><p>[required] The name of the fleet the devices belong to.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_deregister_devices_:_DeviceNames">DeviceNames</code></td>
<td><p>[required] The unique IDs of the devices.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$deregister_devices(
      DeviceFleetName = "string",
      DeviceNames = list(
        "string"
      )
    )
