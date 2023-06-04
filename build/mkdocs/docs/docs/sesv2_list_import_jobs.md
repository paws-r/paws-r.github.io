<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sesv2_list_import_jobs</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists all of the import jobs

### Description

Lists all of the import jobs.

### Usage

    sesv2_list_import_jobs(ImportDestinationType, NextToken, PageSize)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="sesv2_list_import_jobs_:_ImportDestinationType">ImportDestinationType</code></td>
<td><p>The destination of the import job, which can be used to list
import jobs that have a certain
<code>ImportDestinationType</code>.</p></td>
</tr>
<tr class="even">
<td><code id="sesv2_list_import_jobs_:_NextToken">NextToken</code></td>
<td><p>A string token indicating that there might be additional import
jobs available to be listed. Copy this token to a subsequent call to
<code>list_import_jobs</code> with the same parameters to retrieve the
next page of import jobs.</p></td>
</tr>
<tr class="odd">
<td><code id="sesv2_list_import_jobs_:_PageSize">PageSize</code></td>
<td><p>Maximum number of import jobs to return at once. Use this
parameter to paginate results. If additional import jobs exist beyond
the specified limit, the <code>NextToken</code> element is sent in the
response. Use the <code>NextToken</code> value in subsequent requests to
retrieve additional addresses.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ImportJobs = list(
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
          JobStatus = "CREATED"|"PROCESSING"|"COMPLETED"|"FAILED",
          CreatedTimestamp = as.POSIXct(
            "2015-01-01"
          ),
          ProcessedRecordsCount = 123,
          FailedRecordsCount = 123
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_import_jobs(
      ImportDestinationType = "SUPPRESSION_LIST"|"CONTACT_LIST",
      NextToken = "string",
      PageSize = 123
    )
