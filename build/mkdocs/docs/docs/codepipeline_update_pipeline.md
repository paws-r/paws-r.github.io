<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>codepipeline_update_pipeline</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates a specified pipeline with edits or changes to its structure

### Description

Updates a specified pipeline with edits or changes to its structure. Use
a JSON file with the pipeline structure and `update_pipeline` to provide
the full structure of the pipeline. Updating the pipeline increases the
version number of the pipeline by 1.

### Usage

    codepipeline_update_pipeline(pipeline)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="codepipeline_update_pipeline_:_pipeline">pipeline</code></td>
<td><p>[required] The name of the pipeline to be updated.</p></td>
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
      )
    )

### Request syntax

    svc$update_pipeline(
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
      )
    )
