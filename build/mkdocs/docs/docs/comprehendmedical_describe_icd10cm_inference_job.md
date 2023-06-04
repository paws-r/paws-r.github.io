<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>comprehendmedical_describe_icd10cm_inference_job</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets the properties associated with an InferICD10CM job

### Description

Gets the properties associated with an InferICD10CM job. Use this
operation to get the status of an inference job.

### Usage

    comprehendmedical_describe_icd10cm_inference_job(JobId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="comprehendmedical_describe_icd10cm_inference_job_:_JobId">JobId</code></td>
<td><p>[required] The identifier that Amazon Comprehend Medical
generated for the job. <code
style="white-space: pre;">⁠The StartICD10CMInferenceJob⁠</code> operation
returns this identifier in its response.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ComprehendMedicalAsyncJobProperties = list(
        JobId = "string",
        JobName = "string",
        JobStatus = "SUBMITTED"|"IN_PROGRESS"|"COMPLETED"|"PARTIAL_SUCCESS"|"FAILED"|"STOP_REQUESTED"|"STOPPED",
        Message = "string",
        SubmitTime = as.POSIXct(
          "2015-01-01"
        ),
        EndTime = as.POSIXct(
          "2015-01-01"
        ),
        ExpirationTime = as.POSIXct(
          "2015-01-01"
        ),
        InputDataConfig = list(
          S3Bucket = "string",
          S3Key = "string"
        ),
        OutputDataConfig = list(
          S3Bucket = "string",
          S3Key = "string"
        ),
        LanguageCode = "en",
        DataAccessRoleArn = "string",
        ManifestFilePath = "string",
        KMSKey = "string",
        ModelVersion = "string"
      )
    )

### Request syntax

    svc$describe_icd10cm_inference_job(
      JobId = "string"
    )
