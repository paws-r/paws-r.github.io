<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>codepipeline_create_pipeline</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a pipeline

### Description

Creates a pipeline.

In the pipeline structure, you must include either `artifactStore` or
`artifactStores` in your pipeline, but you cannot use both. If you
create a cross-region action in your pipeline, you must use
`artifactStores`.

### Usage

    codepipeline_create_pipeline(pipeline, tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="codepipeline_create_pipeline_:_pipeline">pipeline</code></td>
<td><p>[required] Represents the structure of actions and stages to be
performed in the pipeline.</p></td>
</tr>
<tr class="even">
<td><code id="codepipeline_create_pipeline_:_tags">tags</code></td>
<td><p>The tags for the pipeline.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      pipeline = list(
        name = "string",
        roleArn = "string",
        artifactStore = list(
          type = "S3",
          location = "string",
          encryptionKey = list(
            id = "string",
            type = "KMS"
          )
        ),
        artifactStores = list(
          list(
            type = "S3",
            location = "string",
            encryptionKey = list(
              id = "string",
              type = "KMS"
            )
          )
        ),
        stages = list(
          list(
            name = "string",
            blockers = list(
              list(
                name = "string",
                type = "Schedule"
              )
            ),
            actions = list(
              list(
                name = "string",
                actionTypeId = list(
                  category = "Source"|"Build"|"Deploy"|"Test"|"Invoke"|"Approval",
                  owner = "AWS"|"ThirdParty"|"Custom",
                  provider = "string",
                  version = "string"
                ),
                runOrder = 123,
                configuration = list(
                  "string"
                ),
                outputArtifacts = list(
                  list(
                    name = "string"
                  )
                ),
                inputArtifacts = list(
                  list(
                    name = "string"
                  )
                ),
                roleArn = "string",
                region = "string",
                namespace = "string"
              )
            )
          )
        ),
        version = 123
      ),
      tags = list(
        list(
          key = "string",
          value = "string"
        )
      )
    )

### Request syntax

    svc$create_pipeline(
      pipeline = list(
        name = "string",
        roleArn = "string",
        artifactStore = list(
          type = "S3",
          location = "string",
          encryptionKey = list(
            id = "string",
            type = "KMS"
          )
        ),
        artifactStores = list(
          list(
            type = "S3",
            location = "string",
            encryptionKey = list(
              id = "string",
              type = "KMS"
            )
          )
        ),
        stages = list(
          list(
            name = "string",
            blockers = list(
              list(
                name = "string",
                type = "Schedule"
              )
            ),
            actions = list(
              list(
                name = "string",
                actionTypeId = list(
                  category = "Source"|"Build"|"Deploy"|"Test"|"Invoke"|"Approval",
                  owner = "AWS"|"ThirdParty"|"Custom",
                  provider = "string",
                  version = "string"
                ),
                runOrder = 123,
                configuration = list(
                  "string"
                ),
                outputArtifacts = list(
                  list(
                    name = "string"
                  )
                ),
                inputArtifacts = list(
                  list(
                    name = "string"
                  )
                ),
                roleArn = "string",
                region = "string",
                namespace = "string"
              )
            )
          )
        ),
        version = 123
      ),
      tags = list(
        list(
          key = "string",
          value = "string"
        )
      )
    )
