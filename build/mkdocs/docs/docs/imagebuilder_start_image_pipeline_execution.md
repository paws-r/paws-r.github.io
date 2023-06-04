<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>imagebuilder_start_image_pipeline_execution</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Manually triggers a pipeline to create an image

### Description

Manually triggers a pipeline to create an image.

### Usage

    imagebuilder_start_image_pipeline_execution(imagePipelineArn,
      clientToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="imagebuilder_start_image_pipeline_execution_:_imagePipelineArn">imagePipelineArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the image pipeline
that you want to manually invoke.</p></td>
</tr>
<tr class="even">
<td><code
id="imagebuilder_start_image_pipeline_execution_:_clientToken">clientToken</code></td>
<td><p>[required] The idempotency token used to make this request
idempotent.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      requestId = "string",
      clientToken = "string",
      imageBuildVersionArn = "string"
    )

### Request syntax

    svc$start_image_pipeline_execution(
      imagePipelineArn = "string",
      clientToken = "string"
    )
