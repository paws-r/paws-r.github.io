<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudwatchlogs_describe_export_tasks</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists the specified export tasks

### Description

Lists the specified export tasks. You can list all your export tasks or
filter the results based on task ID or task status.

### Usage

    cloudwatchlogs_describe_export_tasks(taskId, statusCode, nextToken,
      limit)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cloudwatchlogs_describe_export_tasks_:_taskId">taskId</code></td>
<td><p>The ID of the export task. Specifying a task ID filters the
results to one or zero export tasks.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudwatchlogs_describe_export_tasks_:_statusCode">statusCode</code></td>
<td><p>The status code of the export task. Specifying a status code
filters the results to zero or more export tasks.</p></td>
</tr>
<tr class="odd">
<td><code
id="cloudwatchlogs_describe_export_tasks_:_nextToken">nextToken</code></td>
<td><p>The token for the next set of items to return. (You received this
token from a previous call.)</p></td>
</tr>
<tr class="even">
<td><code
id="cloudwatchlogs_describe_export_tasks_:_limit">limit</code></td>
<td><p>The maximum number of items returned. If you don't specify a
value, the default is up to 50 items.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      exportTasks = list(
        list(
          taskId = "string",
          taskName = "string",
          logGroupName = "string",
          from = 123,
          to = 123,
          destination = "string",
          destinationPrefix = "string",
          status = list(
            code = "CANCELLED"|"COMPLETED"|"FAILED"|"PENDING"|"PENDING_CANCEL"|"RUNNING",
            message = "string"
          ),
          executionInfo = list(
            creationTime = 123,
            completionTime = 123
          )
        )
      ),
      nextToken = "string"
    )

### Request syntax

    svc$describe_export_tasks(
      taskId = "string",
      statusCode = "CANCELLED"|"COMPLETED"|"FAILED"|"PENDING"|"PENDING_CANCEL"|"RUNNING",
      nextToken = "string",
      limit = 123
    )
