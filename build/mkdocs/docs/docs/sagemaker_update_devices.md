<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sagemaker_update_devices</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates one or more devices in a fleet

### Description

Updates one or more devices in a fleet.

### Usage

    sagemaker_update_devices(DeviceFleetName, Devices)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="sagemaker_update_devices_:_DeviceFleetName">DeviceFleetName</code></td>
<td><p>[required] The name of the fleet the devices belong to.</p></td>
</tr>
<tr class="even">
<td><code id="sagemaker_update_devices_:_Devices">Devices</code></td>
<td><p>[required] List of devices to register with Edge Manager
agent.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$update_devices(
      DeviceFleetName = "string",
      Devices = list(
        list(
          DeviceName = "string",
          Description = "string",
          IotThingName = "string"
        )
      )
    )
