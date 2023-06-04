<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>worklink_describe_device</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Provides information about a user's device

### Description

Provides information about a user's device.

### Usage

    worklink_describe_device(FleetArn, DeviceId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="worklink_describe_device_:_FleetArn">FleetArn</code></td>
<td><p>[required] The ARN of the fleet.</p></td>
</tr>
<tr class="even">
<td><code id="worklink_describe_device_:_DeviceId">DeviceId</code></td>
<td><p>[required] A unique identifier for a registered user's
device.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Status = "ACTIVE"|"SIGNED_OUT",
      Model = "string",
      Manufacturer = "string",
      OperatingSystem = "string",
      OperatingSystemVersion = "string",
      PatchLevel = "string",
      FirstAccessedTime = as.POSIXct(
        "2015-01-01"
      ),
      LastAccessedTime = as.POSIXct(
        "2015-01-01"
      ),
      Username = "string"
    )

### Request syntax

    svc$describe_device(
      FleetArn = "string",
      DeviceId = "string"
    )
