<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>glue_cancel_ml_task_run</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Cancels (stops) a task run

### Description

Cancels (stops) a task run. Machine learning task runs are asynchronous
tasks that Glue runs on your behalf as part of various machine learning
workflows. You can cancel a machine learning task run at any time by
calling `cancel_ml_task_run` with a task run's parent transform's
`TransformID` and the task run's `TaskRunId`.

### Usage

    glue_cancel_ml_task_run(TransformId, TaskRunId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="glue_cancel_ml_task_run_:_TransformId">TransformId</code></td>
<td><p>[required] The unique identifier of the machine learning
transform.</p></td>
</tr>
<tr class="even">
<td><code id="glue_cancel_ml_task_run_:_TaskRunId">TaskRunId</code></td>
<td><p>[required] A unique identifier for the task run.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      TransformId = "string",
      TaskRunId = "string",
      Status = "STARTING"|"RUNNING"|"STOPPING"|"STOPPED"|"SUCCEEDED"|"FAILED"|"TIMEOUT"
    )

### Request syntax

    svc$cancel_ml_task_run(
      TransformId = "string",
      TaskRunId = "string"
    )
