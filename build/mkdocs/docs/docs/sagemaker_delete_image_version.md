<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sagemaker_delete_image_version</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes a version of a SageMaker image

### Description

Deletes a version of a SageMaker image. The container image the version
represents isn't deleted.

### Usage

    sagemaker_delete_image_version(ImageName, Version, Alias)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="sagemaker_delete_image_version_:_ImageName">ImageName</code></td>
<td><p>[required] The name of the image to delete.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_delete_image_version_:_Version">Version</code></td>
<td><p>The version to delete.</p></td>
</tr>
<tr class="odd">
<td><code id="sagemaker_delete_image_version_:_Alias">Alias</code></td>
<td><p>The alias of the image to delete.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_image_version(
      ImageName = "string",
      Version = 123,
      Alias = "string"
    )
