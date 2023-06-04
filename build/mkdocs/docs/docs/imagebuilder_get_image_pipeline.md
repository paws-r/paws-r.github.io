<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>imagebuilder_get_image_pipeline</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets an image pipeline

### Description

Gets an image pipeline.

### Usage

    imagebuilder_get_image_pipeline(imagePipelineArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="imagebuilder_get_image_pipeline_:_imagePipelineArn">imagePipelineArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the image pipeline
that you want to retrieve.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      requestId = "string",
      imagePipeline = list(
        arn = "string",
        name = "string",
        description = "string",
        platform = "Windows"|"Linux",
        enhancedImageMetadataEnabled = TRUE|FALSE,
        imageRecipeArn = "string",
        containerRecipeArn = "string",
        infrastructureConfigurationArn = "string",
        distributionConfigurationArn = "string",
        imageTestsConfiguration = list(
          imageTestsEnabled = TRUE|FALSE,
          timeoutMinutes = 123
        ),
        schedule = list(
          scheduleExpression = "string",
          timezone = "string",
          pipelineExecutionStartCondition = "EXPRESSION_MATCH_ONLY"|"EXPRESSION_MATCH_AND_DEPENDENCY_UPDATES_AVAILABLE"
        ),
        status = "DISABLED"|"ENABLED",
        dateCreated = "string",
        dateUpdated = "string",
        dateLastRun = "string",
        dateNextRun = "string",
        tags = list(
          "string"
        ),
        imageScanningConfiguration = list(
          imageScanningEnabled = TRUE|FALSE,
          ecrConfiguration = list(
            repositoryName = "string",
            containerTags = list(
              "string"
            )
          )
        )
      )
    )

### Request syntax

    svc$get_image_pipeline(
      imagePipelineArn = "string"
    )
