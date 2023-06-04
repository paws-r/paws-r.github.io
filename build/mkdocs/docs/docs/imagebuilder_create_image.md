<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>imagebuilder_create_image</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a new image

### Description

Creates a new image. This request will create a new image along with all
of the configured output resources defined in the distribution
configuration. You must specify exactly one recipe for your image, using
either a ContainerRecipeArn or an ImageRecipeArn.

### Usage

    imagebuilder_create_image(imageRecipeArn, containerRecipeArn,
      distributionConfigurationArn, infrastructureConfigurationArn,
      imageTestsConfiguration, enhancedImageMetadataEnabled, tags,
      clientToken, imageScanningConfiguration)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="imagebuilder_create_image_:_imageRecipeArn">imageRecipeArn</code></td>
<td><p>The Amazon Resource Name (ARN) of the image recipe that defines
how images are configured, tested, and assessed.</p></td>
</tr>
<tr class="even">
<td><code
id="imagebuilder_create_image_:_containerRecipeArn">containerRecipeArn</code></td>
<td><p>The Amazon Resource Name (ARN) of the container recipe that
defines how images are configured and tested.</p></td>
</tr>
<tr class="odd">
<td><code
id="imagebuilder_create_image_:_distributionConfigurationArn">distributionConfigurationArn</code></td>
<td><p>The Amazon Resource Name (ARN) of the distribution configuration
that defines and configures the outputs of your pipeline.</p></td>
</tr>
<tr class="even">
<td><code
id="imagebuilder_create_image_:_infrastructureConfigurationArn">infrastructureConfigurationArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the infrastructure
configuration that defines the environment in which your image will be
built and tested.</p></td>
</tr>
<tr class="odd">
<td><code
id="imagebuilder_create_image_:_imageTestsConfiguration">imageTestsConfiguration</code></td>
<td><p>The image tests configuration of the image.</p></td>
</tr>
<tr class="even">
<td><code
id="imagebuilder_create_image_:_enhancedImageMetadataEnabled">enhancedImageMetadataEnabled</code></td>
<td><p>Collects additional information about the image being created,
including the operating system (OS) version and package list. This
information is used to enhance the overall experience of using EC2 Image
Builder. Enabled by default.</p></td>
</tr>
<tr class="odd">
<td><code id="imagebuilder_create_image_:_tags">tags</code></td>
<td><p>The tags of the image.</p></td>
</tr>
<tr class="even">
<td><code
id="imagebuilder_create_image_:_clientToken">clientToken</code></td>
<td><p>[required] The idempotency token used to make this request
idempotent.</p></td>
</tr>
<tr class="odd">
<td><code
id="imagebuilder_create_image_:_imageScanningConfiguration">imageScanningConfiguration</code></td>
<td><p>Contains settings for vulnerability scans.</p></td>
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

    svc$create_image(
      imageRecipeArn = "string",
      containerRecipeArn = "string",
      distributionConfigurationArn = "string",
      infrastructureConfigurationArn = "string",
      imageTestsConfiguration = list(
        imageTestsEnabled = TRUE|FALSE,
        timeoutMinutes = 123
      ),
      enhancedImageMetadataEnabled = TRUE|FALSE,
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
