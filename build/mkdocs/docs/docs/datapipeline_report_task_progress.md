<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>datapipeline_report_task_progress</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Task runners call ReportTaskProgress when assigned a task to acknowledge that it has the task

### Description

Task runners call `report_task_progress` when assigned a task to
acknowledge that it has the task. If the web service does not receive
this acknowledgement within 2 minutes, it assigns the task in a
subsequent `poll_for_task` call. After this initial acknowledgement, the
task runner only needs to report progress every 15 minutes to maintain
its ownership of the task. You can change this reporting time from 15
minutes by specifying a `reportProgressTimeout` field in your pipeline.

If a task runner does not report its status after 5 minutes, AWS Data
Pipeline assumes that the task runner is unable to process the task and
reassigns the task in a subsequent response to `poll_for_task`. Task
runners should call `report_task_progress` every 60 seconds.

### Usage

    datapipeline_report_task_progress(taskId, fields)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="datapipeline_report_task_progress_:_taskId">taskId</code></td>
<td><p>[required] The ID of the task assigned to the task runner. This
value is provided in the response for
<code>poll_for_task</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="datapipeline_report_task_progress_:_fields">fields</code></td>
<td><p>Key-value pairs that define the properties of the
ReportTaskProgressInput object.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      canceled = TRUE|FALSE
    )

### Request syntax

    svc$report_task_progress(
      taskId = "string",
      fields = list(
        list(
          key = "string",
          stringValue = "string",
          refValue = "string"
        )
      )
    )
