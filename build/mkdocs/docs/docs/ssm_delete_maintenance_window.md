<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ssm_delete_maintenance_window</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes a maintenance window

### Description

Deletes a maintenance window.

### Usage

    ssm_delete_maintenance_window(WindowId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ssm_delete_maintenance_window_:_WindowId">WindowId</code></td>
<td><p>[required] The ID of the maintenance window to delete.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      WindowId = "string"
    )

### Request syntax

    svc$delete_maintenance_window(
      WindowId = "string"
    )
