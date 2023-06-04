<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudwatchlogs_create_export_task</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates an export task so that you can efficiently export data from a log group to an Amazon S3 bucket

### Description

Creates an export task so that you can efficiently export data from a
log group to an Amazon S3 bucket. When you perform a
`create_export_task` operation, you must use credentials that have
permission to write to the S3 bucket that you specify as the
destination.

Exporting log data to S3 buckets that are encrypted by KMS is supported.
Exporting log data to Amazon S3 buckets that have S3 Object Lock enabled
with a retention period is also supported.

Exporting to S3 buckets that are encrypted with AES-256 is supported.

This is an asynchronous call. If all the required information is
provided, this operation initiates an export task and responds with the
ID of the task. After the task has started, you can use
`describe_export_tasks` to get the status of the export task. Each
account can only have one active (`RUNNING` or `PENDING`) export task at
a time. To cancel an export task, use `cancel_export_task`.

You can export logs from multiple log groups or multiple time ranges to
the same S3 bucket. To separate log data for each export task, specify a
prefix to be used as the Amazon S3 key prefix for all exported objects.

Time-based sorting on chunks of log data inside an exported file is not
guaranteed. You can sort the exported log field data by using Linux
utilities.

### Usage

    cloudwatchlogs_create_export_task(taskName, logGroupName,
      logStreamNamePrefix, from, to, destination, destinationPrefix)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cloudwatchlogs_create_export_task_:_taskName">taskName</code></td>
<td><p>The name of the export task.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudwatchlogs_create_export_task_:_logGroupName">logGroupName</code></td>
<td><p>[required] The name of the log group.</p></td>
</tr>
<tr class="odd">
<td><code
id="cloudwatchlogs_create_export_task_:_logStreamNamePrefix">logStreamNamePrefix</code></td>
<td><p>Export only log streams that match the provided prefix. If you
don't specify a value, no prefix filter is applied.</p></td>
</tr>
<tr class="even">
<td><code id="cloudwatchlogs_create_export_task_:_from">from</code></td>
<td><p>[required] The start time of the range for the request, expressed
as the number of milliseconds after <code
style="white-space: pre;">⁠Jan 1, 1970 00:00:00 UTC⁠</code>. Events with a
timestamp earlier than this time are not exported.</p></td>
</tr>
<tr class="odd">
<td><code id="cloudwatchlogs_create_export_task_:_to">to</code></td>
<td><p>[required] The end time of the range for the request, expressed
as the number of milliseconds after <code
style="white-space: pre;">⁠Jan 1, 1970 00:00:00 UTC⁠</code>. Events with a
timestamp later than this time are not exported.</p>
<p>You must specify a time that is not earlier than when this log group
was created.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudwatchlogs_create_export_task_:_destination">destination</code></td>
<td><p>[required] The name of S3 bucket for the exported log data. The
bucket must be in the same Amazon Web Services Region.</p></td>
</tr>
<tr class="odd">
<td><code
id="cloudwatchlogs_create_export_task_:_destinationPrefix">destinationPrefix</code></td>
<td><p>The prefix used as the start of the key for every object
exported. If you don't specify a value, the default is
<code>exportedlogs</code>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      taskId = "string"
    )

### Request syntax

    svc$create_export_task(
      taskName = "string",
      logGroupName = "string",
      logStreamNamePrefix = "string",
      from = 123,
      to = 123,
      destination = "string",
      destinationPrefix = "string"
    )
