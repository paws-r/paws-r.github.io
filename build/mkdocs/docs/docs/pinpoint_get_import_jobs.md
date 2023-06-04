<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>pinpoint_get_import_jobs</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves information about the status and settings of all the import jobs for an application

### Description

Retrieves information about the status and settings of all the import
jobs for an application.

### Usage

    pinpoint_get_import_jobs(ApplicationId, PageSize, Token)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="pinpoint_get_import_jobs_:_ApplicationId">ApplicationId</code></td>
<td><p>[required] The unique identifier for the application. This
identifier is displayed as the <strong>Project ID</strong> on the Amazon
Pinpoint console.</p></td>
</tr>
<tr class="even">
<td><code id="pinpoint_get_import_jobs_:_PageSize">PageSize</code></td>
<td><p>The maximum number of items to include in each page of a
paginated response. This parameter is not supported for application,
campaign, and journey metrics.</p></td>
</tr>
<tr class="odd">
<td><code id="pinpoint_get_import_jobs_:_Token">Token</code></td>
<td><p>The NextToken string that specifies which page of results to
return in a paginated response.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ImportJobsResponse = list(
        Item = list(
          list(
            ApplicationId = "string",
            CompletedPieces = 123,
            CompletionDate = "string",
            CreationDate = "string",
            Definition = list(
              DefineSegment = TRUE|FALSE,
              ExternalId = "string",
              Format = "CSV"|"JSON",
              RegisterEndpoints = TRUE|FALSE,
              RoleArn = "string",
              S3Url = "string",
              SegmentId = "string",
              SegmentName = "string"
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
        ),
        NextToken = "string"
      )
    )

### Request syntax

    svc$get_import_jobs(
      ApplicationId = "string",
      PageSize = "string",
      Token = "string"
    )
