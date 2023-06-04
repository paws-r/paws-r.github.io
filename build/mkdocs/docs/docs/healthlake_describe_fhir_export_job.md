<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>healthlake_describe_fhir_export_job</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Displays the properties of a FHIR export job, including the ID, ARN, name, and the status of the job

### Description

Displays the properties of a FHIR export job, including the ID, ARN,
name, and the status of the job.

### Usage

    healthlake_describe_fhir_export_job(DatastoreId, JobId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="healthlake_describe_fhir_export_job_:_DatastoreId">DatastoreId</code></td>
<td><p>[required] The AWS generated ID for the Data Store from which
files are being exported from for an export job.</p></td>
</tr>
<tr class="even">
<td><code
id="healthlake_describe_fhir_export_job_:_JobId">JobId</code></td>
<td><p>[required] The AWS generated ID for an export job.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ExportJobProperties = list(
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
        OutputDataConfig = list(
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

    svc$describe_fhir_export_job(
      DatastoreId = "string",
      JobId = "string"
    )
