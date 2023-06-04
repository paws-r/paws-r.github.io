<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>kendra_list_data_source_sync_jobs</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets statistics about synchronizing a data source connector

### Description

Gets statistics about synchronizing a data source connector.

### Usage

    kendra_list_data_source_sync_jobs(Id, IndexId, NextToken, MaxResults,
      StartTimeFilter, StatusFilter)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="kendra_list_data_source_sync_jobs_:_Id">Id</code></td>
<td><p>[required] The identifier of the data source connector.</p></td>
</tr>
<tr class="even">
<td><code
id="kendra_list_data_source_sync_jobs_:_IndexId">IndexId</code></td>
<td><p>[required] The identifier of the index used with the data source
connector.</p></td>
</tr>
<tr class="odd">
<td><code
id="kendra_list_data_source_sync_jobs_:_NextToken">NextToken</code></td>
<td><p>If the previous response was incomplete (because there is more
data to retrieve), Amazon Kendra returns a pagination token in the
response. You can use this pagination token to retrieve the next set of
jobs.</p></td>
</tr>
<tr class="even">
<td><code
id="kendra_list_data_source_sync_jobs_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of synchronization jobs to return in the
response. If there are fewer results in the list, this response contains
only the actual results.</p></td>
</tr>
<tr class="odd">
<td><code
id="kendra_list_data_source_sync_jobs_:_StartTimeFilter">StartTimeFilter</code></td>
<td><p>When specified, the synchronization jobs returned in the list are
limited to jobs between the specified dates.</p></td>
</tr>
<tr class="even">
<td><code
id="kendra_list_data_source_sync_jobs_:_StatusFilter">StatusFilter</code></td>
<td><p>Only returns synchronization jobs with the <code>Status</code>
field equal to the specified status.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      History = list(
        list(
          ExecutionId = "string",
          StartTime = as.POSIXct(
            "2015-01-01"
          ),
          EndTime = as.POSIXct(
            "2015-01-01"
          ),
          Status = "FAILED"|"SUCCEEDED"|"SYNCING"|"INCOMPLETE"|"STOPPING"|"ABORTED"|"SYNCING_INDEXING",
          ErrorMessage = "string",
          ErrorCode = "InternalError"|"InvalidRequest",
          DataSourceErrorCode = "string",
          Metrics = list(
            DocumentsAdded = "string",
            DocumentsModified = "string",
            DocumentsDeleted = "string",
            DocumentsFailed = "string",
            DocumentsScanned = "string"
          )
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_data_source_sync_jobs(
      Id = "string",
      IndexId = "string",
      NextToken = "string",
      MaxResults = 123,
      StartTimeFilter = list(
        StartTime = as.POSIXct(
          "2015-01-01"
        ),
        EndTime = as.POSIXct(
          "2015-01-01"
        )
      ),
      StatusFilter = "FAILED"|"SUCCEEDED"|"SYNCING"|"INCOMPLETE"|"STOPPING"|"ABORTED"|"SYNCING_INDEXING"
    )
