<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>codepipeline_get_third_party_job_details</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Requests the details of a job for a third party action

### Description

Requests the details of a job for a third party action. Used for partner
actions only.

When this API is called, CodePipeline returns temporary credentials for
the S3 bucket used to store artifacts for the pipeline, if the action
requires access to that S3 bucket for input or output artifacts. This
API also returns any secret values defined for the action.

### Usage

    codepipeline_get_third_party_job_details(jobId, clientToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="codepipeline_get_third_party_job_details_:_jobId">jobId</code></td>
<td><p>[required] The unique system-generated ID used for identifying
the job.</p></td>
</tr>
<tr class="even">
<td><code
id="codepipeline_get_third_party_job_details_:_clientToken">clientToken</code></td>
<td><p>[required] The clientToken portion of the clientId and
clientToken pair used to verify that the calling entity is allowed
access to the job and its details.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      jobDetails = list(
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
        nonce = "string"
      )
    )

### Request syntax

    svc$get_third_party_job_details(
      jobId = "string",
      clientToken = "string"
    )
