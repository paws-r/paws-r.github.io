<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>nimblestudio_list_streaming_images</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## List the streaming image resources available to this studio

### Description

List the streaming image resources available to this studio.

This list will contain both images provided by Amazon Web Services, as
well as streaming images that you have created in your studio.

### Usage

    nimblestudio_list_streaming_images(nextToken, owner, studioId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="nimblestudio_list_streaming_images_:_nextToken">nextToken</code></td>
<td><p>The token for the next set of results, or null if there are no
more results.</p></td>
</tr>
<tr class="even">
<td><code
id="nimblestudio_list_streaming_images_:_owner">owner</code></td>
<td><p>Filter this request to streaming images with the given
owner</p></td>
</tr>
<tr class="odd">
<td><code
id="nimblestudio_list_streaming_images_:_studioId">studioId</code></td>
<td><p>[required] The studio ID.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      nextToken = "string",
      streamingImages = list(
        list(
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
    )

### Request syntax

    svc$list_streaming_images(
      nextToken = "string",
      owner = "string",
      studioId = "string"
    )
