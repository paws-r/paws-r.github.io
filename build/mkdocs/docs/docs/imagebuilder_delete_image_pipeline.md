<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>imagebuilder_delete_image_pipeline</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes an image pipeline

### Description

Deletes an image pipeline.

### Usage

    imagebuilder_delete_image_pipeline(imagePipelineArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="imagebuilder_delete_image_pipeline_:_imagePipelineArn">imagePipelineArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the image pipeline
to delete.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      requestId = "string",
      imagePipelineArn = "string"
    )

### Request syntax

    svc$delete_image_pipeline(
      imagePipelineArn = "string"
    )
