<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>nimblestudio_create_streaming_image</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a streaming image resource in a studio

### Description

Creates a streaming image resource in a studio.

### Usage

    nimblestudio_create_streaming_image(clientToken, description,
      ec2ImageId, name, studioId, tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="nimblestudio_create_streaming_image_:_clientToken">clientToken</code></td>
<td><p>Unique, case-sensitive identifier that you provide to ensure the
idempotency of the request. If you don’t specify a client token, the
Amazon Web Services SDK automatically generates a client token and uses
it for the request to ensure idempotency.</p></td>
</tr>
<tr class="even">
<td><code
id="nimblestudio_create_streaming_image_:_description">description</code></td>
<td><p>A human-readable description of the streaming image.</p></td>
</tr>
<tr class="odd">
<td><code
id="nimblestudio_create_streaming_image_:_ec2ImageId">ec2ImageId</code></td>
<td><p>[required] The ID of an EC2 machine image with which to create
this streaming image.</p></td>
</tr>
<tr class="even">
<td><code
id="nimblestudio_create_streaming_image_:_name">name</code></td>
<td><p>[required] A friendly name for a streaming image
resource.</p></td>
</tr>
<tr class="odd">
<td><code
id="nimblestudio_create_streaming_image_:_studioId">studioId</code></td>
<td><p>[required] The studio ID.</p></td>
</tr>
<tr class="even">
<td><code
id="nimblestudio_create_streaming_image_:_tags">tags</code></td>
<td><p>A collection of labels, in the form of key-value pairs, that
apply to this resource.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      streamingImage = list(
        arn = "string",
        description = "string",
        ec2ImageId = "string",
        encryptionConfiguration = list(
          keyArn = "string",
          keyType = "CUSTOMER_MANAGED_KEY"
        ),
        eulaIds = list(
          "string"
        ),
        name = "string",
        owner = "string",
        platform = "string",
        state = "CREATE_IN_PROGRESS"|"READY"|"DELETE_IN_PROGRESS"|"DELETED"|"UPDATE_IN_PROGRESS"|"UPDATE_FAILED"|"CREATE_FAILED"|"DELETE_FAILED",
        statusCode = "STREAMING_IMAGE_CREATE_IN_PROGRESS"|"STREAMING_IMAGE_READY"|"STREAMING_IMAGE_DELETE_IN_PROGRESS"|"STREAMING_IMAGE_DELETED"|"STREAMING_IMAGE_UPDATE_IN_PROGRESS"|"INTERNAL_ERROR"|"ACCESS_DENIED",
        statusMessage = "string",
        streamingImageId = "string",
        tags = list(
          "string"
        )
      )
    )

### Request syntax

    svc$create_streaming_image(
      clientToken = "string",
      description = "string",
      ec2ImageId = "string",
      name = "string",
      studioId = "string",
      tags = list(
        "string"
      )
    )
