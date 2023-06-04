<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sagemaker_create_device_fleet</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a device fleet

### Description

Creates a device fleet.

### Usage

    sagemaker_create_device_fleet(DeviceFleetName, RoleArn, Description,
      OutputConfig, Tags, EnableIotRoleAlias)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="sagemaker_create_device_fleet_:_DeviceFleetName">DeviceFleetName</code></td>
<td><p>[required] The name of the fleet that the device belongs
to.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_create_device_fleet_:_RoleArn">RoleArn</code></td>
<td><p>The Amazon Resource Name (ARN) that has access to Amazon Web
Services Internet of Things (IoT).</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_create_device_fleet_:_Description">Description</code></td>
<td><p>A description of the fleet.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_create_device_fleet_:_OutputConfig">OutputConfig</code></td>
<td><p>[required] The output configuration for storing sample data
collected by the fleet.</p></td>
</tr>
<tr class="odd">
<td><code id="sagemaker_create_device_fleet_:_Tags">Tags</code></td>
<td><p>Creates tags for the specified fleet.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_create_device_fleet_:_EnableIotRoleAlias">EnableIotRoleAlias</code></td>
<td><p>Whether to create an Amazon Web Services IoT Role Alias during
device fleet creation. The name of the role alias generated will match
this pattern: "SageMakerEdge-{DeviceFleetName}".</p>
<p>For example, if your device fleet is called "demo-fleet", the name of
the role alias will be "SageMakerEdge-demo-fleet".</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$create_device_fleet(
      DeviceFleetName = "string",
      RoleArn = "string",
      Description = "string",
      OutputConfig = list(
        S3OutputLocation = "string",
        KmsKeyId = "string",
        PresetDeploymentType = "GreengrassV2Component",
        PresetDeploymentConfig = "string"
      ),
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      ),
      EnableIotRoleAlias = TRUE|FALSE
    )
