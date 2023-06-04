<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sagemaker_get_device_fleet_report</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes a fleet

### Description

Describes a fleet.

### Usage

    sagemaker_get_device_fleet_report(DeviceFleetName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="sagemaker_get_device_fleet_report_:_DeviceFleetName">DeviceFleetName</code></td>
<td><p>[required] The name of the fleet.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      DeviceFleetArn = "string",
      DeviceFleetName = "string",
      OutputConfig = list(
        S3OutputLocation = "string",
        KmsKeyId = "string",
        PresetDeploymentType = "GreengrassV2Component",
        PresetDeploymentConfig = "string"
      ),
      Description = "string",
      ReportGenerated = as.POSIXct(
        "2015-01-01"
      ),
      DeviceStats = list(
        ConnectedDeviceCount = 123,
        RegisteredDeviceCount = 123
      ),
      AgentVersions = list(
        list(
          Version = "string",
          AgentCount = 123
        )
      ),
      ModelStats = list(
        list(
          ModelName = "string",
          ModelVersion = "string",
          OfflineDeviceCount = 123,
          ConnectedDeviceCount = 123,
          ActiveDeviceCount = 123,
          SamplingDeviceCount = 123
        )
      )
    )

### Request syntax

    svc$get_device_fleet_report(
      DeviceFleetName = "string"
    )
