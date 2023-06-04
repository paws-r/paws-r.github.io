<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>frauddetector_get_batch_import_jobs</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets all batch import jobs or a specific job of the specified ID

### Description

Gets all batch import jobs or a specific job of the specified ID. This
is a paginated API. If you provide a null `maxResults`, this action
retrieves a maximum of 50 records per page. If you provide a
`maxResults`, the value must be between 1 and 50. To get the next page
results, provide the pagination token from the
`GetBatchImportJobsResponse` as part of your request. A null pagination
token fetches the records from the beginning.

### Usage

    frauddetector_get_batch_import_jobs(jobId, maxResults, nextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="frauddetector_get_batch_import_jobs_:_jobId">jobId</code></td>
<td><p>The ID of the batch import job to get.</p></td>
</tr>
<tr class="even">
<td><code
id="frauddetector_get_batch_import_jobs_:_maxResults">maxResults</code></td>
<td><p>The maximum number of objects to return for request.</p></td>
</tr>
<tr class="odd">
<td><code
id="frauddetector_get_batch_import_jobs_:_nextToken">nextToken</code></td>
<td><p>The next token from the previous request.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      batchImports = list(
        list(
          jobId = "string",
          status = "IN_PROGRESS_INITIALIZING"|"IN_PROGRESS"|"CANCEL_IN_PROGRESS"|"CANCELED"|"COMPLETE"|"FAILED",
          failureReason = "string",
          startTime = "string",
          completionTime = "string",
          inputPath = "string",
          outputPath = "string",
          eventTypeName = "string",
          iamRoleArn = "string",
          arn = "string",
          processedRecordsCount = 123,
          failedRecordsCount = 123,
          totalRecordsCount = 123
        )
      ),
      nextToken = "string"
    )

### Request syntax

    svc$get_batch_import_jobs(
      jobId = "string",
      maxResults = 123,
      nextToken = "string"
    )
