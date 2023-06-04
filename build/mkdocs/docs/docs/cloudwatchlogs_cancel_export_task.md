<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudwatchlogs_cancel_export_task</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Cancels the specified export task

### Description

Cancels the specified export task.

The task must be in the `PENDING` or `RUNNING` state.

### Usage

    cloudwatchlogs_cancel_export_task(taskId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cloudwatchlogs_cancel_export_task_:_taskId">taskId</code></td>
<td><p>[required] The ID of the export task.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$cancel_export_task(
      taskId = "string"
    )
