<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sagemaker_update_image</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates the properties of a SageMaker image

### Description

Updates the properties of a SageMaker image. To change the image's tags,
use the `add_tags` and `delete_tags` APIs.

### Usage

    sagemaker_update_image(DeleteProperties, Description, DisplayName,
      ImageName, RoleArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="sagemaker_update_image_:_DeleteProperties">DeleteProperties</code></td>
<td><p>A list of properties to delete. Only the <code>Description</code>
and <code>DisplayName</code> properties can be deleted.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_update_image_:_Description">Description</code></td>
<td><p>The new description for the image.</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_update_image_:_DisplayName">DisplayName</code></td>
<td><p>The new display name for the image.</p></td>
</tr>
<tr class="even">
<td><code id="sagemaker_update_image_:_ImageName">ImageName</code></td>
<td><p>[required] The name of the image to update.</p></td>
</tr>
<tr class="odd">
<td><code id="sagemaker_update_image_:_RoleArn">RoleArn</code></td>
<td><p>The new ARN for the IAM role that enables Amazon SageMaker to
perform tasks on your behalf.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ImageArn = "string"
    )

### Request syntax

    svc$update_image(
      DeleteProperties = list(
        "string"
      ),
      Description = "string",
      DisplayName = "string",
      ImageName = "string",
      RoleArn = "string"
    )
