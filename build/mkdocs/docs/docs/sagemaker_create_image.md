<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sagemaker_create_image</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a custom SageMaker image

### Description

Creates a custom SageMaker image. A SageMaker image is a set of image
versions. Each image version represents a container image stored in
Amazon Elastic Container Registry (ECR). For more information, see
[Bring your own SageMaker
image](https://docs.aws.amazon.com/sagemaker/latest/dg/studio-byoi.html).

### Usage

    sagemaker_create_image(Description, DisplayName, ImageName, RoleArn,
      Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="sagemaker_create_image_:_Description">Description</code></td>
<td><p>The description of the image.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_create_image_:_DisplayName">DisplayName</code></td>
<td><p>The display name of the image. If not provided,
<code>ImageName</code> is displayed.</p></td>
</tr>
<tr class="odd">
<td><code id="sagemaker_create_image_:_ImageName">ImageName</code></td>
<td><p>[required] The name of the image. Must be unique to your
account.</p></td>
</tr>
<tr class="even">
<td><code id="sagemaker_create_image_:_RoleArn">RoleArn</code></td>
<td><p>[required] The ARN of an IAM role that enables Amazon SageMaker
to perform tasks on your behalf.</p></td>
</tr>
<tr class="odd">
<td><code id="sagemaker_create_image_:_Tags">Tags</code></td>
<td><p>A list of tags to apply to the image.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ImageArn = "string"
    )

### Request syntax

    svc$create_image(
      Description = "string",
      DisplayName = "string",
      ImageName = "string",
      RoleArn = "string",
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      )
    )
