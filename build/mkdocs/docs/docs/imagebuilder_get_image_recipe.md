<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>imagebuilder_get_image_recipe</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets an image recipe

### Description

Gets an image recipe.

### Usage

    imagebuilder_get_image_recipe(imageRecipeArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="imagebuilder_get_image_recipe_:_imageRecipeArn">imageRecipeArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the image recipe
that you want to retrieve.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      requestId = "string",
      imageRecipe = list(
        arn = "string",
        type = "AMI"|"DOCKER",
        name = "string",
        description = "string",
        platform = "Windows"|"Linux",
        owner = "string",
        version = "string",
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
        dateCreated = "string",
        tags = list(
          "string"
        ),
        workingDirectory = "string",
        additionalInstanceConfiguration = list(
          systemsManagerAgent = list(
            uninstallAfterBuild = TRUE|FALSE
          ),
          userDataOverride = "string"
        )
      )
    )

### Request syntax

    svc$get_image_recipe(
      imageRecipeArn = "string"
    )
