<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_cancel_import_task</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Cancels an in-process import virtual machine or import snapshot task

### Description

Cancels an in-process import virtual machine or import snapshot task.

### Usage

    ec2_cancel_import_task(CancelReason, DryRun, ImportTaskId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ec2_cancel_import_task_:_CancelReason">CancelReason</code></td>
<td><p>The reason for canceling the task.</p></td>
</tr>
<tr class="even">
<td><code id="ec2_cancel_import_task_:_DryRun">DryRun</code></td>
<td><p>Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
<code>DryRunOperation</code>. Otherwise, it is
<code>UnauthorizedOperation</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_cancel_import_task_:_ImportTaskId">ImportTaskId</code></td>
<td><p>The ID of the import image or import snapshot task to be
canceled.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ImportTaskId = "string",
      PreviousState = "string",
      State = "string"
    )

### Request syntax

    svc$cancel_import_task(
      CancelReason = "string",
      DryRun = TRUE|FALSE,
      ImportTaskId = "string"
    )
