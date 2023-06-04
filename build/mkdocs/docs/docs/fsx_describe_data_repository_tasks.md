<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>fsx_describe_data_repository_tasks</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns the description of specific Amazon FSx for Lustre or Amazon File Cache data repository tasks, if one or more TaskIds values are provided in the request, or if filters are used in the request

### Description

Returns the description of specific Amazon FSx for Lustre or Amazon File
Cache data repository tasks, if one or more `TaskIds` values are
provided in the request, or if filters are used in the request. You can
use filters to narrow the response to include just tasks for specific
file systems or caches, or tasks in a specific lifecycle state.
Otherwise, it returns all data repository tasks owned by your Amazon Web
Services account in the Amazon Web Services Region of the endpoint that
you're calling.

When retrieving all tasks, you can paginate the response by using the
optional `MaxResults` parameter to limit the number of tasks returned in
a response. If more tasks remain, a `NextToken` value is returned in the
response. In this case, send a later request with the `NextToken`
request parameter set to the value of `NextToken` from the last
response.

### Usage

    fsx_describe_data_repository_tasks(TaskIds, Filters, MaxResults,
      NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="fsx_describe_data_repository_tasks_:_TaskIds">TaskIds</code></td>
<td><p>(Optional) IDs of the tasks whose descriptions you want to
retrieve (String).</p></td>
</tr>
<tr class="even">
<td><code
id="fsx_describe_data_repository_tasks_:_Filters">Filters</code></td>
<td><p>(Optional) You can use filters to narrow the
<code>describe_data_repository_tasks</code> response to include just
tasks for specific file systems, or tasks in a specific lifecycle
state.</p></td>
</tr>
<tr class="odd">
<td><code
id="fsx_describe_data_repository_tasks_:_MaxResults">MaxResults</code></td>
<td></td>
</tr>
<tr class="even">
<td><code
id="fsx_describe_data_repository_tasks_:_NextToken">NextToken</code></td>
<td></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      DataRepositoryTasks = list(
        list(
          TaskId = "string",
          Lifecycle = "PENDING"|"EXECUTING"|"FAILED"|"SUCCEEDED"|"CANCELED"|"CANCELING",
          Type = "EXPORT_TO_REPOSITORY"|"IMPORT_METADATA_FROM_REPOSITORY"|"RELEASE_DATA_FROM_FILESYSTEM"|"AUTO_RELEASE_DATA",
          CreationTime = as.POSIXct(
            "2015-01-01"
          ),
          StartTime = as.POSIXct(
            "2015-01-01"
          ),
          EndTime = as.POSIXct(
            "2015-01-01"
          ),
          ResourceARN = "string",
          Tags = list(
            list(
              Key = "string",
              Value = "string"
            )
          ),
          FileSystemId = "string",
          Paths = list(
            "string"
          ),
          FailureDetails = list(
            Message = "string"
          ),
          Status = list(
            TotalCount = 123,
            SucceededCount = 123,
            FailedCount = 123,
            LastUpdatedTime = as.POSIXct(
              "2015-01-01"
            ),
            ReleasedCapacity = 123
          ),
          Report = list(
            Enabled = TRUE|FALSE,
            Path = "string",
            Format = "REPORT_CSV_20191124",
            Scope = "FAILED_FILES_ONLY"
          ),
          CapacityToRelease = 123,
          FileCacheId = "string"
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$describe_data_repository_tasks(
      TaskIds = list(
        "string"
      ),
      Filters = list(
        list(
          Name = "file-system-id"|"task-lifecycle"|"data-repository-association-id"|"file-cache-id",
          Values = list(
            "string"
          )
        )
      ),
      MaxResults = 123,
      NextToken = "string"
    )
