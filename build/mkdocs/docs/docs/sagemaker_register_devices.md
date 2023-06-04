<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sagemaker_register_devices</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Register devices

### Description

Register devices.

### Usage

    sagemaker_register_devices(DeviceFleetName, Devices, Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="sagemaker_register_devices_:_DeviceFleetName">DeviceFleetName</code></td>
<td><p>[required] The name of the fleet.</p></td>
</tr>
<tr class="even">
<td><code id="sagemaker_register_devices_:_Devices">Devices</code></td>
<td><p>[required] A list of devices to register with SageMaker Edge
Manager.</p></td>
</tr>
<tr class="odd">
<td><code id="sagemaker_register_devices_:_Tags">Tags</code></td>
<td><p>The tags associated with devices.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$register_devices(
      DeviceFleetName = "string",
      Devices = list(
        list(
          DeviceName = "string",
          Description = "string",
          IotThingName = "string"
        )
      ),
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      )
    )
