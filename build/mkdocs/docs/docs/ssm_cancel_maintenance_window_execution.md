<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ssm_cancel_maintenance_window_execution</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Stops a maintenance window execution that is already in progress and cancels any tasks in the window that haven't already starting running

### Description

Stops a maintenance window execution that is already in progress and
cancels any tasks in the window that haven't already starting running.
Tasks already in progress will continue to completion.

### Usage

    ssm_cancel_maintenance_window_execution(WindowExecutionId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ssm_cancel_maintenance_window_execution_:_WindowExecutionId">WindowExecutionId</code></td>
<td><p>[required] The ID of the maintenance window execution to
stop.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      WindowExecutionId = "string"
    )

### Request syntax

    svc$cancel_maintenance_window_execution(
      WindowExecutionId = "string"
    )
