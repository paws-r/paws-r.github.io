<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sagemaker_create_app_image_config</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a configuration for running a SageMaker image as a KernelGateway app

### Description

Creates a configuration for running a SageMaker image as a KernelGateway
app. The configuration specifies the Amazon Elastic File System (EFS)
storage volume on the image, and a list of the kernels in the image.

### Usage

    sagemaker_create_app_image_config(AppImageConfigName, Tags,
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
id="sagemaker_create_app_image_config_:_AppImageConfigName">AppImageConfigName</code></td>
<td><p>[required] The name of the AppImageConfig. Must be unique to your
account.</p></td>
</tr>
<tr class="even">
<td><code id="sagemaker_create_app_image_config_:_Tags">Tags</code></td>
<td><p>A list of tags to apply to the AppImageConfig.</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_create_app_image_config_:_KernelGatewayImageConfig">KernelGatewayImageConfig</code></td>
<td><p>The KernelGatewayImageConfig. You can only specify one image
kernel in the AppImageConfig API. This kernel will be shown to users
before the image starts. Once the image runs, all kernels are visible in
JupyterLab.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      AppImageConfigArn = "string"
    )

### Request syntax

    svc$create_app_image_config(
      AppImageConfigName = "string",
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
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
