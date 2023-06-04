<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>imagebuilder_cancel_image_creation</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## CancelImageCreation cancels the creation of Image

### Description

CancelImageCreation cancels the creation of Image. This operation can
only be used on images in a non-terminal state.

### Usage

    imagebuilder_cancel_image_creation(imageBuildVersionArn, clientToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="imagebuilder_cancel_image_creation_:_imageBuildVersionArn">imageBuildVersionArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the image that you
want to cancel creation for.</p></td>
</tr>
<tr class="even">
<td><code
id="imagebuilder_cancel_image_creation_:_clientToken">clientToken</code></td>
<td><p>[required] Unique, case-sensitive identifier you provide to
ensure idempotency of the request. For more information, see <a
href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html">Ensuring
idempotency</a> in the <em>Amazon EC2 API Reference</em>.</p></td>
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

    svc$cancel_image_creation(
      imageBuildVersionArn = "string",
      clientToken = "string"
    )
