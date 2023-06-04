<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sagemaker_delete_image</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes a SageMaker image and all versions of the image

### Description

Deletes a SageMaker image and all versions of the image. The container
images aren't deleted.

### Usage

    sagemaker_delete_image(ImageName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="sagemaker_delete_image_:_ImageName">ImageName</code></td>
<td><p>[required] The name of the image to delete.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_image(
      ImageName = "string"
    )
