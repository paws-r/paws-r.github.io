<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ssm_deregister_task_from_maintenance_window</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Removes a task from a maintenance window

### Description

Removes a task from a maintenance window.

### Usage

    ssm_deregister_task_from_maintenance_window(WindowId, WindowTaskId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ssm_deregister_task_from_maintenance_window_:_WindowId">WindowId</code></td>
<td><p>[required] The ID of the maintenance window the task should be
removed from.</p></td>
</tr>
<tr class="even">
<td><code
id="ssm_deregister_task_from_maintenance_window_:_WindowTaskId">WindowTaskId</code></td>
<td><p>[required] The ID of the task to remove from the maintenance
window.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      WindowId = "string",
      WindowTaskId = "string"
    )

### Request syntax

    svc$deregister_task_from_maintenance_window(
      WindowId = "string",
      WindowTaskId = "string"
    )
