<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sagemaker_update_app_image_config</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates the properties of an AppImageConfig

### Description

Updates the properties of an AppImageConfig.

### Usage

    sagemaker_update_app_image_config(AppImageConfigName,
      KernelGatewayImageConfig)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="sagemaker_update_app_image_config_:_AppImageConfigName">AppImageConfigName</code></td>
<td><p>[required] The name of the AppImageConfig to update.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_update_app_image_config_:_KernelGatewayImageConfig">KernelGatewayImageConfig</code></td>
<td><p>The new KernelGateway app to run on the image.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      AppImageConfigArn = "string"
    )

### Request syntax

    svc$update_app_image_config(
      AppImageConfigName = "string",
      KernelGatewayImageConfig = list(
        KernelSpecs = list(
          list(
            Name = "string",
            DisplayName = "string"
          )
        ),
        FileSystemConfig = list(
          MountPath = "string",
          DefaultUid = 123,
          DefaultGid = 123
        )
      )
    )
