<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>imagebuilder_update_image_pipeline</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates an image pipeline

### Description

Updates an image pipeline. Image pipelines enable you to automate the
creation and distribution of images.

UpdateImagePipeline does not support selective updates for the pipeline.
You must specify all of the required properties in the update request,
not just the properties that have changed.

### Usage

    imagebuilder_update_image_pipeline(imagePipelineArn, description,
      imageRecipeArn, containerRecipeArn, infrastructureConfigurationArn,
      distributionConfigurationArn, imageTestsConfiguration,
      enhancedImageMetadataEnabled, schedule, status, clientToken,
      imageScanningConfiguration)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="imagebuilder_update_image_pipeline_:_imagePipelineArn">imagePipelineArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the image pipeline
that you want to update.</p></td>
</tr>
<tr class="even">
<td><code
id="imagebuilder_update_image_pipeline_:_description">description</code></td>
<td><p>The description of the image pipeline.</p></td>
</tr>
<tr class="odd">
<td><code
id="imagebuilder_update_image_pipeline_:_imageRecipeArn">imageRecipeArn</code></td>
<td><p>The Amazon Resource Name (ARN) of the image recipe that will be
used to configure images updated by this image pipeline.</p></td>
</tr>
<tr class="even">
<td><code
id="imagebuilder_update_image_pipeline_:_containerRecipeArn">containerRecipeArn</code></td>
<td><p>The Amazon Resource Name (ARN) of the container pipeline to
update.</p></td>
</tr>
<tr class="odd">
<td><code
id="imagebuilder_update_image_pipeline_:_infrastructureConfigurationArn">infrastructureConfigurationArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the infrastructure
configuration that Image Builder uses to build images that this image
pipeline has updated.</p></td>
</tr>
<tr class="even">
<td><code
id="imagebuilder_update_image_pipeline_:_distributionConfigurationArn">distributionConfigurationArn</code></td>
<td><p>The Amazon Resource Name (ARN) of the distribution configuration
that Image Builder uses to configure and distribute images that this
image pipeline has updated.</p></td>
</tr>
<tr class="odd">
<td><code
id="imagebuilder_update_image_pipeline_:_imageTestsConfiguration">imageTestsConfiguration</code></td>
<td><p>The image test configuration of the image pipeline.</p></td>
</tr>
<tr class="even">
<td><code
id="imagebuilder_update_image_pipeline_:_enhancedImageMetadataEnabled">enhancedImageMetadataEnabled</code></td>
<td><p>Collects additional information about the image being created,
including the operating system (OS) version and package list. This
information is used to enhance the overall experience of using EC2 Image
Builder. Enabled by default.</p></td>
</tr>
<tr class="odd">
<td><code
id="imagebuilder_update_image_pipeline_:_schedule">schedule</code></td>
<td><p>The schedule of the image pipeline.</p></td>
</tr>
<tr class="even">
<td><code
id="imagebuilder_update_image_pipeline_:_status">status</code></td>
<td><p>The status of the image pipeline.</p></td>
</tr>
<tr class="odd">
<td><code
id="imagebuilder_update_image_pipeline_:_clientToken">clientToken</code></td>
<td><p>[required] The idempotency token used to make this request
idempotent.</p></td>
</tr>
<tr class="even">
<td><code
id="imagebuilder_update_image_pipeline_:_imageScanningConfiguration">imageScanningConfiguration</code></td>
<td><p>Contains settings for vulnerability scans.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      requestId = "string",
      clientToken = "string",
      imagePipelineArn = "string"
    )

### Request syntax

    svc$update_image_pipeline(
      imagePipelineArn = "string",
      description = "string",
      imageRecipeArn = "string",
      containerRecipeArn = "string",
      infrastructureConfigurationArn = "string",
      distributionConfigurationArn = "string",
      imageTestsConfiguration = list(
        imageTestsEnabled = TRUE|FALSE,
        timeoutMinutes = 123
      ),
      enhancedImageMetadataEnabled = TRUE|FALSE,
      schedule = list(
        scheduleExpression = "string",
        timezone = "string",
        pipelineExecutionStartCondition = "EXPRESSION_MATCH_ONLY"|"EXPRESSION_MATCH_AND_DEPENDENCY_UPDATES_AVAILABLE"
      ),
      status = "DISABLED"|"ENABLED",
      clientToken = "string",
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
