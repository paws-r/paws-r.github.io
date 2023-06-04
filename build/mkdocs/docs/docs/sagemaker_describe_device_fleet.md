<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sagemaker_describe_device_fleet</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## A description of the fleet the device belongs to

### Description

A description of the fleet the device belongs to.

### Usage

    sagemaker_describe_device_fleet(DeviceFleetName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="sagemaker_describe_device_fleet_:_DeviceFleetName">DeviceFleetName</code></td>
<td><p>[required] The name of the fleet.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      DeviceFleetName = "string",
      DeviceFleetArn = "string",
      OutputConfig = list(
        S3OutputLocation = "string",
        KmsKeyId = "string",
        PresetDeploymentType = "GreengrassV2Component",
        PresetDeploymentConfig = "string"
      ),
      Description = "string",
      CreationTime = as.POSIXct(
        "2015-01-01"
      ),
      LastModifiedTime = as.POSIXct(
        "2015-01-01"
      ),
      RoleArn = "string",
      IotRoleAlias = "string"
    )

### Request syntax

    svc$describe_device_fleet(
      DeviceFleetName = "string"
    )
