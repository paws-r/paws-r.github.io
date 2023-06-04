<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>imagebuilder_list_image_pipeline_images</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns a list of images created by the specified pipeline

### Description

Returns a list of images created by the specified pipeline.

### Usage

    imagebuilder_list_image_pipeline_images(imagePipelineArn, filters,
      maxResults, nextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="imagebuilder_list_image_pipeline_images_:_imagePipelineArn">imagePipelineArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the image pipeline
whose images you want to view.</p></td>
</tr>
<tr class="even">
<td><code
id="imagebuilder_list_image_pipeline_images_:_filters">filters</code></td>
<td><p>Use the following filters to streamline results:</p>
<ul>
<li><p><code>name</code></p></li>
<li><p><code>version</code></p></li>
</ul></td>
</tr>
<tr class="odd">
<td><code
id="imagebuilder_list_image_pipeline_images_:_maxResults">maxResults</code></td>
<td><p>The maximum items to return in a request.</p></td>
</tr>
<tr class="even">
<td><code
id="imagebuilder_list_image_pipeline_images_:_nextToken">nextToken</code></td>
<td><p>A token to specify where to start paginating. This is the
NextToken from a previously truncated response.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      requestId = "string",
      imageSummaryList = list(
        list(
          arn = "string",
          name = "string",
          type = "AMI"|"DOCKER",
          version = "string",
          platform = "Windows"|"Linux",
          osVersion = "string",
          state = list(
            status = "PENDING"|"CREATING"|"BUILDING"|"TESTING"|"DISTRIBUTING"|"INTEGRATING"|"AVAILABLE"|"CANCELLED"|"FAILED"|"DEPRECATED"|"DELETED",
            reason = "string"
          ),
          owner = "string",
          dateCreated = "string",
          outputResources = list(
            amis = list(
              list(
                region = "string",
                image = "string",
                name = "string",
                description = "string",
                state = list(
                  status = "PENDING"|"CREATING"|"BUILDING"|"TESTING"|"DISTRIBUTING"|"INTEGRATING"|"AVAILABLE"|"CANCELLED"|"FAILED"|"DEPRECATED"|"DELETED",
                  reason = "string"
                ),
                accountId = "string"
              )
            ),
            containers = list(
              list(
                region = "string",
                imageUris = list(
                  "string"
                )
              )
            )
          ),
          tags = list(
            "string"
          ),
          buildType = "USER_INITIATED"|"SCHEDULED"|"IMPORT",
          imageSource = "AMAZON_MANAGED"|"AWS_MARKETPLACE"|"IMPORTED"|"CUSTOM"
        )
      ),
      nextToken = "string"
    )

### Request syntax

    svc$list_image_pipeline_images(
      imagePipelineArn = "string",
      filters = list(
        list(
          name = "string",
          values = list(
            "string"
          )
        )
      ),
      maxResults = 123,
      nextToken = "string"
    )
