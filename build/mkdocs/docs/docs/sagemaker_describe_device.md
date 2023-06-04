<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sagemaker_describe_device</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes the device

### Description

Describes the device.

### Usage

    sagemaker_describe_device(NextToken, DeviceName, DeviceFleetName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="sagemaker_describe_device_:_NextToken">NextToken</code></td>
<td><p>Next token of device description.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_describe_device_:_DeviceName">DeviceName</code></td>
<td><p>[required] The unique ID of the device.</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_describe_device_:_DeviceFleetName">DeviceFleetName</code></td>
<td><p>[required] The name of the fleet the devices belong to.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      DeviceArn = "string",
      DeviceName = "string",
      Description = "string",
      DeviceFleetName = "string",
      IotThingName = "string",
      RegistrationTime = as.POSIXct(
        "2015-01-01"
      ),
      LatestHeartbeat = as.POSIXct(
        "2015-01-01"
      ),
      Models = list(
        list(
          ModelName = "string",
          ModelVersion = "string",
          LatestSampleTime = as.POSIXct(
            "2015-01-01"
          ),
          LatestInference = as.POSIXct(
            "2015-01-01"
          )
        )
      ),
      MaxModels = 123,
      NextToken = "string",
      AgentVersion = "string"
    )

### Request syntax

    svc$describe_device(
      NextToken = "string",
      DeviceName = "string",
      DeviceFleetName = "string"
    )
