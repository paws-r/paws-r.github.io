<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ssm_deregister_target_from_maintenance_window</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Removes a target from a maintenance window

### Description

Removes a target from a maintenance window.

### Usage

    ssm_deregister_target_from_maintenance_window(WindowId, WindowTargetId,
      Safe)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ssm_deregister_target_from_maintenance_window_:_WindowId">WindowId</code></td>
<td><p>[required] The ID of the maintenance window the target should be
removed from.</p></td>
</tr>
<tr class="even">
<td><code
id="ssm_deregister_target_from_maintenance_window_:_WindowTargetId">WindowTargetId</code></td>
<td><p>[required] The ID of the target definition to remove.</p></td>
</tr>
<tr class="odd">
<td><code
id="ssm_deregister_target_from_maintenance_window_:_Safe">Safe</code></td>
<td><p>The system checks if the target is being referenced by a task. If
the target is being referenced, the system returns an error and doesn't
deregister the target from the maintenance window.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      WindowId = "string",
      WindowTargetId = "string"
    )

### Request syntax

    svc$deregister_target_from_maintenance_window(
      WindowId = "string",
      WindowTargetId = "string",
      Safe = TRUE|FALSE
    )
