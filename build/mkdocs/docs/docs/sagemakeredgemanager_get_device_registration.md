<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sagemakeredgemanager_get_device_registration</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Use to check if a device is registered with SageMaker Edge Manager

### Description

Use to check if a device is registered with SageMaker Edge Manager.

### Usage

    sagemakeredgemanager_get_device_registration(DeviceName,
      DeviceFleetName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="sagemakeredgemanager_get_device_registration_:_DeviceName">DeviceName</code></td>
<td><p>[required] The unique name of the device you want to get the
registration status from.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemakeredgemanager_get_device_registration_:_DeviceFleetName">DeviceFleetName</code></td>
<td><p>[required] The name of the fleet that the device belongs
to.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      DeviceRegistration = "string",
      CacheTTL = "string"
    )

### Request syntax

    svc$get_device_registration(
      DeviceName = "string",
      DeviceFleetName = "string"
    )
