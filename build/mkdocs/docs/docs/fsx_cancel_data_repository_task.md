<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>fsx_cancel_data_repository_task</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Cancels an existing Amazon FSx for Lustre data repository task if that task is in either the PENDING or EXECUTING state

### Description

Cancels an existing Amazon FSx for Lustre data repository task if that
task is in either the `PENDING` or `EXECUTING` state. When you cancel a
task, Amazon FSx does the following.

-   Any files that FSx has already exported are not reverted.

-   FSx continues to export any files that are "in-flight" when the
    cancel operation is received.

-   FSx does not export any files that have not yet been exported.

### Usage

    fsx_cancel_data_repository_task(TaskId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="fsx_cancel_data_repository_task_:_TaskId">TaskId</code></td>
<td><p>[required] Specifies the data repository task to cancel.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Lifecycle = "PENDING"|"EXECUTING"|"FAILED"|"SUCCEEDED"|"CANCELED"|"CANCELING",
      TaskId = "string"
    )

### Request syntax

    svc$cancel_data_repository_task(
      TaskId = "string"
    )
