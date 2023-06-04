<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sesv2_get_import_job</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Provides information about an import job

### Description

Provides information about an import job.

### Usage

    sesv2_get_import_job(JobId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="sesv2_get_import_job_:_JobId">JobId</code></td>
<td><p>[required] The ID of the import job.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      JobId = "string",
      ImportDestination = list(
        SuppressionListDestination = list(
          SuppressionListImportAction = "DELETE"|"PUT"
        ),
        ContactListDestination = list(
          ContactListName = "string",
          ContactListImportAction = "DELETE"|"PUT"
        )
      ),
      ImportDataSource = list(
        S3Url = "string",
        DataFormat = "CSV"|"JSON"
      ),
      FailureInfo = list(
        FailedRecordsS3Url = "string",
        ErrorMessage = "string"
      ),
      JobStatus = "CREATED"|"PROCESSING"|"COMPLETED"|"FAILED",
      CreatedTimestamp = as.POSIXct(
        "2015-01-01"
      ),
      CompletedTimestamp = as.POSIXct(
        "2015-01-01"
      ),
      ProcessedRecordsCount = 123,
      FailedRecordsCount = 123
    )

### Request syntax

    svc$get_import_job(
      JobId = "string"
    )
