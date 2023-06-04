<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>pinpoint_get_export_job</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves information about the status and settings of a specific export job for an application

### Description

Retrieves information about the status and settings of a specific export
job for an application.

### Usage

    pinpoint_get_export_job(ApplicationId, JobId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="pinpoint_get_export_job_:_ApplicationId">ApplicationId</code></td>
<td><p>[required] The unique identifier for the application. This
identifier is displayed as the <strong>Project ID</strong> on the Amazon
Pinpoint console.</p></td>
</tr>
<tr class="even">
<td><code id="pinpoint_get_export_job_:_JobId">JobId</code></td>
<td><p>[required] The unique identifier for the job.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ExportJobResponse = list(
        ApplicationId = "string",
        CompletedPieces = 123,
        CompletionDate = "string",
        CreationDate = "string",
        Definition = list(
          RoleArn = "string",
          S3UrlPrefix = "string",
          SegmentId = "string",
          SegmentVersion = 123
        ),
        FailedPieces = 123,
        Failures = list(
          "string"
        ),
        Id = "string",
        JobStatus = "CREATED"|"PREPARING_FOR_INITIALIZATION"|"INITIALIZING"|"PROCESSING"|"PENDING_JOB"|"COMPLETING"|"COMPLETED"|"FAILING"|"FAILED",
        TotalFailures = 123,
        TotalPieces = 123,
        TotalProcessed = 123,
        Type = "string"
      )
    )

### Request syntax

    svc$get_export_job(
      ApplicationId = "string",
      JobId = "string"
    )
