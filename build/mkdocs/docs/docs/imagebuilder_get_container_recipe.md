<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>imagebuilder_get_container_recipe</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves a container recipe

### Description

Retrieves a container recipe.

### Usage

    imagebuilder_get_container_recipe(containerRecipeArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="imagebuilder_get_container_recipe_:_containerRecipeArn">containerRecipeArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the container recipe
to retrieve.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      requestId = "string",
      containerRecipe = list(
        arn = "string",
        containerType = "DOCKER",
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
        kmsKeyId = "string",
        encrypted = TRUE|FALSE,
        parentImage = "string",
        dateCreated = "string",
        tags = list(
          "string"
        ),
        workingDirectory = "string",
        targetRepository = list(
          service = "ECR",
          repositoryName = "string"
        )
      )
    )

### Request syntax

    svc$get_container_recipe(
      containerRecipeArn = "string"
    )
