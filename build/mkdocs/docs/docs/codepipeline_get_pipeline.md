<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>codepipeline_get_pipeline</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns the metadata, structure, stages, and actions of a pipeline

### Description

Returns the metadata, structure, stages, and actions of a pipeline. Can
be used to return the entire structure of a pipeline in JSON format,
which can then be modified and used to update the pipeline structure
with `update_pipeline`.

### Usage

    codepipeline_get_pipeline(name, version)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="codepipeline_get_pipeline_:_name">name</code></td>
<td><p>[required] The name of the pipeline for which you want to get
information. Pipeline names must be unique in an Amazon Web Services
account.</p></td>
</tr>
<tr class="even">
<td><code id="codepipeline_get_pipeline_:_version">version</code></td>
<td><p>The version number of the pipeline. If you do not specify a
version, defaults to the current version.</p></td>
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
      metadata = list(
        pipelineArn = "string",
        created = as.POSIXct(
          "2015-01-01"
        ),
        updated = as.POSIXct(
          "2015-01-01"
        ),
        pollingDisabledAt = as.POSIXct(
          "2015-01-01"
        )
      )
    )

### Request syntax

    svc$get_pipeline(
      name = "string",
      version = 123
    )
