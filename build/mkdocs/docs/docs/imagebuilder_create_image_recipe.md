<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>imagebuilder_create_image_recipe</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a new image recipe

### Description

Creates a new image recipe. Image recipes define how images are
configured, tested, and assessed.

### Usage

    imagebuilder_create_image_recipe(name, description, semanticVersion,
      components, parentImage, blockDeviceMappings, tags, workingDirectory,
      additionalInstanceConfiguration, clientToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="imagebuilder_create_image_recipe_:_name">name</code></td>
<td><p>[required] The name of the image recipe.</p></td>
</tr>
<tr class="even">
<td><code
id="imagebuilder_create_image_recipe_:_description">description</code></td>
<td><p>The description of the image recipe.</p></td>
</tr>
<tr class="odd">
<td><code
id="imagebuilder_create_image_recipe_:_semanticVersion">semanticVersion</code></td>
<td><p>[required] The semantic version of the image recipe. This version
follows the semantic version syntax.</p>
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
<tr class="even">
<td><code
id="imagebuilder_create_image_recipe_:_components">components</code></td>
<td><p>[required] The components included in the image recipe.</p></td>
</tr>
<tr class="odd">
<td><code
id="imagebuilder_create_image_recipe_:_parentImage">parentImage</code></td>
<td><p>[required] The base image of the image recipe. The value of the
string can be the ARN of the base image or an AMI ID. The format for the
ARN follows this example:
<code>arn:aws:imagebuilder:us-west-2:aws:image/windows-server-2016-english-full-base-x86/x.x.x</code>.
You can provide the specific version that you want to use, or you can
use a wildcard in all of the fields. If you enter an AMI ID for the
string value, you must have access to the AMI, and the AMI must be in
the same Region in which you are using Image Builder.</p></td>
</tr>
<tr class="even">
<td><code
id="imagebuilder_create_image_recipe_:_blockDeviceMappings">blockDeviceMappings</code></td>
<td><p>The block device mappings of the image recipe.</p></td>
</tr>
<tr class="odd">
<td><code id="imagebuilder_create_image_recipe_:_tags">tags</code></td>
<td><p>The tags of the image recipe.</p></td>
</tr>
<tr class="even">
<td><code
id="imagebuilder_create_image_recipe_:_workingDirectory">workingDirectory</code></td>
<td><p>The working directory used during build and test
workflows.</p></td>
</tr>
<tr class="odd">
<td><code
id="imagebuilder_create_image_recipe_:_additionalInstanceConfiguration">additionalInstanceConfiguration</code></td>
<td><p>Specify additional settings and launch scripts for your build
instances.</p></td>
</tr>
<tr class="even">
<td><code
id="imagebuilder_create_image_recipe_:_clientToken">clientToken</code></td>
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
      imageRecipeArn = "string"
    )

### Request syntax

    svc$create_image_recipe(
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
      parentImage = "string",
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
      ),
      tags = list(
        "string"
      ),
      workingDirectory = "string",
      additionalInstanceConfiguration = list(
        systemsManagerAgent = list(
          uninstallAfterBuild = TRUE|FALSE
        ),
        userDataOverride = "string"
      ),
      clientToken = "string"
    )
