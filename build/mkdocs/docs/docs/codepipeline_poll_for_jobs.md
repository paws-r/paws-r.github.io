<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>codepipeline_poll_for_jobs</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns information about any jobs for CodePipeline to act on

### Description

Returns information about any jobs for CodePipeline to act on.
`poll_for_jobs` is valid only for action types with "Custom" in the
owner field. If the action type contains `AWS` or `ThirdParty` in the
owner field, the `poll_for_jobs` action returns an error.

When this API is called, CodePipeline returns temporary credentials for
the S3 bucket used to store artifacts for the pipeline, if the action
requires access to that S3 bucket for input or output artifacts. This
API also returns any secret values defined for the action.

### Usage

    codepipeline_poll_for_jobs(actionTypeId, maxBatchSize, queryParam)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="codepipeline_poll_for_jobs_:_actionTypeId">actionTypeId</code></td>
<td><p>[required] Represents information about an action type.</p></td>
</tr>
<tr class="even">
<td><code
id="codepipeline_poll_for_jobs_:_maxBatchSize">maxBatchSize</code></td>
<td><p>The maximum number of jobs to return in a poll for jobs
call.</p></td>
</tr>
<tr class="odd">
<td><code
id="codepipeline_poll_for_jobs_:_queryParam">queryParam</code></td>
<td><p>A map of property names and values. For an action type with no
queryable properties, this value must be null or an empty map. For an
action type with a queryable property, you must supply that property as
a key in the map. Only jobs whose action configuration matches the
mapped value are returned.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      jobs = list(
        list(
          id = "string",
          data = list(
            actionTypeId = list(
              category = "Source"|"Build"|"Deploy"|"Test"|"Invoke"|"Approval",
              owner = "AWS"|"ThirdParty"|"Custom",
              provider = "string",
              version = "string"
            ),
            actionConfiguration = list(
              configuration = list(
                "string"
              )
            ),
            pipelineContext = list(
              pipelineName = "string",
              stage = list(
                name = "string"
              ),
              action = list(
                name = "string",
                actionExecutionId = "string"
              ),
              pipelineArn = "string",
              pipelineExecutionId = "string"
            ),
            inputArtifacts = list(
              list(
                name = "string",
                revision = "string",
                location = list(
                  type = "S3",
                  s3Location = list(
                    bucketName = "string",
                    objectKey = "string"
                  )
                )
              )
            ),
            outputArtifacts = list(
              list(
                name = "string",
                revision = "string",
                location = list(
                  type = "S3",
                  s3Location = list(
                    bucketName = "string",
                    objectKey = "string"
                  )
                )
              )
            ),
            artifactCredentials = list(
              accessKeyId = "string",
              secretAccessKey = "string",
              sessionToken = "string"
            ),
            continuationToken = "string",
            encryptionKey = list(
              id = "string",
              type = "KMS"
            )
          ),
          nonce = "string",
          accountId = "string"
        )
      )
    )

### Request syntax

    svc$poll_for_jobs(
      actionTypeId = list(
        category = "Source"|"Build"|"Deploy"|"Test"|"Invoke"|"Approval",
        owner = "AWS"|"ThirdParty"|"Custom",
        provider = "string",
        version = "string"
      ),
      maxBatchSize = 123,
      queryParam = list(
        "string"
      )
    )
