<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>healthlake_describe_fhir_import_job</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Displays the properties of a FHIR import job, including the ID, ARN, name, and the status of the job

### Description

Displays the properties of a FHIR import job, including the ID, ARN,
name, and the status of the job.

### Usage

    healthlake_describe_fhir_import_job(DatastoreId, JobId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="healthlake_describe_fhir_import_job_:_DatastoreId">DatastoreId</code></td>
<td><p>[required] The AWS-generated ID of the Data Store.</p></td>
</tr>
<tr class="even">
<td><code
id="healthlake_describe_fhir_import_job_:_JobId">JobId</code></td>
<td><p>[required] The AWS-generated job ID.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ImportJobProperties = list(
        JobId = "string",
        JobName = "string",
        JobStatus = "SUBMITTED"|"IN_PROGRESS"|"COMPLETED_WITH_ERRORS"|"COMPLETED"|"FAILED",
        SubmitTime = as.POSIXct(
          "2015-01-01"
        ),
        EndTime = as.POSIXct(
          "2015-01-01"
        ),
        DatastoreId = "string",
        InputDataConfig = list(
          S3Uri = "string"
        ),
        JobOutputDataConfig = list(
          S3Configuration = list(
            S3Uri = "string",
            KmsKeyId = "string"
          )
        ),
        DataAccessRoleArn = "string",
        Message = "string"
      )
    )

### Request syntax

    svc$describe_fhir_import_job(
      DatastoreId = "string",
      JobId = "string"
    )
