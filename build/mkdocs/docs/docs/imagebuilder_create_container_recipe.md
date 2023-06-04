<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>imagebuilder_create_container_recipe</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a new container recipe

### Description

Creates a new container recipe. Container recipes define how images are
configured, tested, and assessed.

### Usage

    imagebuilder_create_container_recipe(containerType, name, description,
      semanticVersion, components, instanceConfiguration,
      dockerfileTemplateData, dockerfileTemplateUri, platformOverride,
      imageOsVersionOverride, parentImage, tags, workingDirectory,
      targetRepository, kmsKeyId, clientToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="imagebuilder_create_container_recipe_:_containerType">containerType</code></td>
<td><p>[required] The type of container to create.</p></td>
</tr>
<tr class="even">
<td><code
id="imagebuilder_create_container_recipe_:_name">name</code></td>
<td><p>[required] The name of the container recipe.</p></td>
</tr>
<tr class="odd">
<td><code
id="imagebuilder_create_container_recipe_:_description">description</code></td>
<td><p>The description of the container recipe.</p></td>
</tr>
<tr class="even">
<td><code
id="imagebuilder_create_container_recipe_:_semanticVersion">semanticVersion</code></td>
<td><p>[required] The semantic version of the container recipe. This
version follows the semantic version syntax.</p>
<p>The semantic version has four nodes:
\&lt;major\&gt;.\&lt;minor\&gt;.\&lt;patch\&gt;/\&lt;build\&gt;. You can
assign values for the first three, and can filter on all of them.</p>
<p><strong>Assignment:</strong> For the first three nodes you can assign
any positive integer value, including zero, with an upper limit of
2^30-1, or 1073741823 for each node. Image Builder automatically assigns
the build number to the fourth node.</p>
<p><strong>Patterns:</strong> You can use any numeric pattern that
adheres to the assignment requirements for the nodes that you can
assign. For example, you might choose a software version pattern, such
as 1.0.0, or a date, such as 2021.01.01.</p></td>
</tr>
<tr class="odd">
<td><code
id="imagebuilder_create_container_recipe_:_components">components</code></td>
<td><p>[required] Components for build and test that are included in the
container recipe. Recipes require a minimum of one build component, and
can have a maximum of 20 build and test components in any
combination.</p></td>
</tr>
<tr class="even">
<td><code
id="imagebuilder_create_container_recipe_:_instanceConfiguration">instanceConfiguration</code></td>
<td><p>A group of options that can be used to configure an instance for
building and testing container images.</p></td>
</tr>
<tr class="odd">
<td><code
id="imagebuilder_create_container_recipe_:_dockerfileTemplateData">dockerfileTemplateData</code></td>
<td><p>The Dockerfile template used to build your image as an inline
data blob.</p></td>
</tr>
<tr class="even">
<td><code
id="imagebuilder_create_container_recipe_:_dockerfileTemplateUri">dockerfileTemplateUri</code></td>
<td><p>The Amazon S3 URI for the Dockerfile that will be used to build
your container image.</p></td>
</tr>
<tr class="odd">
<td><code
id="imagebuilder_create_container_recipe_:_platformOverride">platformOverride</code></td>
<td><p>Specifies the operating system platform when you use a custom
base image.</p></td>
</tr>
<tr class="even">
<td><code
id="imagebuilder_create_container_recipe_:_imageOsVersionOverride">imageOsVersionOverride</code></td>
<td><p>Specifies the operating system version for the base
image.</p></td>
</tr>
<tr class="odd">
<td><code
id="imagebuilder_create_container_recipe_:_parentImage">parentImage</code></td>
<td><p>[required] The base image for the container recipe.</p></td>
</tr>
<tr class="even">
<td><code
id="imagebuilder_create_container_recipe_:_tags">tags</code></td>
<td><p>Tags that are attached to the container recipe.</p></td>
</tr>
<tr class="odd">
<td><code
id="imagebuilder_create_container_recipe_:_workingDirectory">workingDirectory</code></td>
<td><p>The working directory for use during build and test
workflows.</p></td>
</tr>
<tr class="even">
<td><code
id="imagebuilder_create_container_recipe_:_targetRepository">targetRepository</code></td>
<td><p>[required] The destination repository for the container
image.</p></td>
</tr>
<tr class="odd">
<td><code
id="imagebuilder_create_container_recipe_:_kmsKeyId">kmsKeyId</code></td>
<td><p>Identifies which KMS key is used to encrypt the container
image.</p></td>
</tr>
<tr class="even">
<td><code
id="imagebuilder_create_container_recipe_:_clientToken">clientToken</code></td>
<td><p>[required] The client token used to make this request
idempotent.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      requestId = "string",
      clientToken = "string",
      containerRecipeArn = "string"
    )

### Request syntax

    svc$create_container_recipe(
      containerType = "DOCKER",
      name = "string",
      description = "string",
      semanticVersion = "string",
      components = list(
        list(
          componentArn = "string",
          parameters = list(
            list(
              name = "string",
              value = list(
                "string"
              )
            )
          )
        )
      ),
      instanceConfiguration = list(
        image = "string",
        blockDeviceMappings = list(
          list(
            deviceName = "string",
            ebs = list(
              encrypted = TRUE|FALSE,
              deleteOnTermination = TRUE|FALSE,
              iops = 123,
              kmsKeyId = "string",
              snapshotId = "string",
              volumeSize = 123,
              volumeType = "standard"|"io1"|"io2"|"gp2"|"gp3"|"sc1"|"st1",
              throughput = 123
            ),
            virtualName = "string",
            noDevice = "string"
          )
        )
      ),
      dockerfileTemplateData = "string",
      dockerfileTemplateUri = "string",
      platformOverride = "Windows"|"Linux",
      imageOsVersionOverride = "string",
      parentImage = "string",
      tags = list(
        "string"
      ),
      workingDirectory = "string",
      targetRepository = list(
        service = "ECR",
        repositoryName = "string"
      ),
      kmsKeyId = "string",
      clientToken = "string"
    )
