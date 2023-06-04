<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>datapipeline_set_task_status</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Task runners call SetTaskStatus to notify AWS Data Pipeline that a task is completed and provide information about the final status

### Description

Task runners call `set_task_status` to notify AWS Data Pipeline that a
task is completed and provide information about the final status. A task
runner makes this call regardless of whether the task was sucessful. A
task runner does not need to call `set_task_status` for tasks that are
canceled by the web service during a call to `report_task_progress`.

### Usage

    datapipeline_set_task_status(taskId, taskStatus, errorId, errorMessage,
      errorStackTrace)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="datapipeline_set_task_status_:_taskId">taskId</code></td>
<td><p>[required] The ID of the task assigned to the task runner. This
value is provided in the response for
<code>poll_for_task</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="datapipeline_set_task_status_:_taskStatus">taskStatus</code></td>
<td><p>[required] If <code>FINISHED</code>, the task successfully
completed. If <code>FAILED</code>, the task ended unsuccessfully.
Preconditions use false.</p></td>
</tr>
<tr class="odd">
<td><code
id="datapipeline_set_task_status_:_errorId">errorId</code></td>
<td><p>If an error occurred during the task, this value specifies the
error code. This value is set on the physical attempt object. It is used
to display error information to the user. It should not start with
string "Service_" which is reserved by the system.</p></td>
</tr>
<tr class="even">
<td><code
id="datapipeline_set_task_status_:_errorMessage">errorMessage</code></td>
<td><p>If an error occurred during the task, this value specifies a text
description of the error. This value is set on the physical attempt
object. It is used to display error information to the user. The web
service does not parse this value.</p></td>
</tr>
<tr class="odd">
<td><code
id="datapipeline_set_task_status_:_errorStackTrace">errorStackTrace</code></td>
<td><p>If an error occurred during the task, this value specifies the
stack trace associated with the error. This value is set on the physical
attempt object. It is used to display error information to the user. The
web service does not parse this value.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$set_task_status(
      taskId = "string",
      taskStatus = "FINISHED"|"FAILED"|"FALSE",
      errorId = "string",
      errorMessage = "string",
      errorStackTrace = "string"
    )
