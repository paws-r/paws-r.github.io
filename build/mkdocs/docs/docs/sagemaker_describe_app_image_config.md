<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sagemaker_describe_app_image_config</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes an AppImageConfig

### Description

Describes an AppImageConfig.

### Usage

    sagemaker_describe_app_image_config(AppImageConfigName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="sagemaker_describe_app_image_config_:_AppImageConfigName">AppImageConfigName</code></td>
<td><p>[required] The name of the AppImageConfig to describe.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      AppImageConfigArn = "string",
      AppImageConfigName = "string",
      CreationTime = as.POSIXct(
        "2015-01-01"
      ),
      LastModifiedTime = as.POSIXct(
        "2015-01-01"
      ),
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

### Request syntax

    svc$describe_app_image_config(
      AppImageConfigName = "string"
    )
