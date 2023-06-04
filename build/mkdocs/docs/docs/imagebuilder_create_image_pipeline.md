<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>imagebuilder_create_image_pipeline</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a new image pipeline

### Description

Creates a new image pipeline. Image pipelines enable you to automate the
creation and distribution of images.

### Usage

    imagebuilder_create_image_pipeline(name, description, imageRecipeArn,
      containerRecipeArn, infrastructureConfigurationArn,
      distributionConfigurationArn, imageTestsConfiguration,
      enhancedImageMetadataEnabled, schedule, status, tags, clientToken,
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
id="imagebuilder_create_image_pipeline_:_name">name</code></td>
<td><p>[required] The name of the image pipeline.</p></td>
</tr>
<tr class="even">
<td><code
id="imagebuilder_create_image_pipeline_:_description">description</code></td>
<td><p>The description of the image pipeline.</p></td>
</tr>
<tr class="odd">
<td><code
id="imagebuilder_create_image_pipeline_:_imageRecipeArn">imageRecipeArn</code></td>
<td><p>The Amazon Resource Name (ARN) of the image recipe that will be
used to configure images created by this image pipeline.</p></td>
</tr>
<tr class="even">
<td><code
id="imagebuilder_create_image_pipeline_:_containerRecipeArn">containerRecipeArn</code></td>
<td><p>The Amazon Resource Name (ARN) of the container recipe that is
used to configure images created by this container pipeline.</p></td>
</tr>
<tr class="odd">
<td><code
id="imagebuilder_create_image_pipeline_:_infrastructureConfigurationArn">infrastructureConfigurationArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the infrastructure
configuration that will be used to build images created by this image
pipeline.</p></td>
</tr>
<tr class="even">
<td><code
id="imagebuilder_create_image_pipeline_:_distributionConfigurationArn">distributionConfigurationArn</code></td>
<td><p>The Amazon Resource Name (ARN) of the distribution configuration
that will be used to configure and distribute images created by this
image pipeline.</p></td>
</tr>
<tr class="odd">
<td><code
id="imagebuilder_create_image_pipeline_:_imageTestsConfiguration">imageTestsConfiguration</code></td>
<td><p>The image test configuration of the image pipeline.</p></td>
</tr>
<tr class="even">
<td><code
id="imagebuilder_create_image_pipeline_:_enhancedImageMetadataEnabled">enhancedImageMetadataEnabled</code></td>
<td><p>Collects additional information about the image being created,
including the operating system (OS) version and package list. This
information is used to enhance the overall experience of using EC2 Image
Builder. Enabled by default.</p></td>
</tr>
<tr class="odd">
<td><code
id="imagebuilder_create_image_pipeline_:_schedule">schedule</code></td>
<td><p>The schedule of the image pipeline.</p></td>
</tr>
<tr class="even">
<td><code
id="imagebuilder_create_image_pipeline_:_status">status</code></td>
<td><p>The status of the image pipeline.</p></td>
</tr>
<tr class="odd">
<td><code
id="imagebuilder_create_image_pipeline_:_tags">tags</code></td>
<td><p>The tags of the image pipeline.</p></td>
</tr>
<tr class="even">
<td><code
id="imagebuilder_create_image_pipeline_:_clientToken">clientToken</code></td>
<td><p>[required] The idempotency token used to make this request
idempotent.</p></td>
</tr>
<tr class="odd">
<td><code
id="imagebuilder_create_image_pipeline_:_imageScanningConfiguration">imageScanningConfiguration</code></td>
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

    svc$create_image_pipeline(
      name = "string",
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
      tags = list(
        "string"
      ),
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
