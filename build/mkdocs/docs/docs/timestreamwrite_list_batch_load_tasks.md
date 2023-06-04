<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>timestreamwrite_list_batch_load_tasks</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Provides a list of batch load tasks, along with the name, status, when the task is resumable until, and other details

### Description

Provides a list of batch load tasks, along with the name, status, when
the task is resumable until, and other details. See [code
sample](https://docs.aws.amazon.com/timestream/latest/developerguide/code-samples.list-batch-load-tasks.html)
for details.

### Usage

    timestreamwrite_list_batch_load_tasks(NextToken, MaxResults, TaskStatus)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="timestreamwrite_list_batch_load_tasks_:_NextToken">NextToken</code></td>
<td><p>A token to specify where to start paginating. This is the
NextToken from a previously truncated response.</p></td>
</tr>
<tr class="even">
<td><code
id="timestreamwrite_list_batch_load_tasks_:_MaxResults">MaxResults</code></td>
<td><p>The total number of items to return in the output. If the total
number of items available is more than the value specified, a NextToken
is provided in the output. To resume pagination, provide the NextToken
value as argument of a subsequent API invocation.</p></td>
</tr>
<tr class="odd">
<td><code
id="timestreamwrite_list_batch_load_tasks_:_TaskStatus">TaskStatus</code></td>
<td><p>Status of the batch load task.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      NextToken = "string",
      BatchLoadTasks = list(
        list(
          TaskId = "string",
          TaskStatus = "CREATED"|"IN_PROGRESS"|"FAILED"|"SUCCEEDED"|"PROGRESS_STOPPED"|"PENDING_RESUME",
          DatabaseName = "string",
          TableName = "string",
          CreationTime = as.POSIXct(
            "2015-01-01"
          ),
          LastUpdatedTime = as.POSIXct(
            "2015-01-01"
          ),
          ResumableUntil = as.POSIXct(
            "2015-01-01"
          )
        )
      )
    )

### Request syntax

    svc$list_batch_load_tasks(
      NextToken = "string",
      MaxResults = 123,
      TaskStatus = "CREATED"|"IN_PROGRESS"|"FAILED"|"SUCCEEDED"|"PROGRESS_STOPPED"|"PENDING_RESUME"
    )
