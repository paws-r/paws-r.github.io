<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>auditmanager_delete_control</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes a custom control in Audit Manager

### Description

Deletes a custom control in Audit Manager.

### Usage

    auditmanager_delete_control(controlId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="auditmanager_delete_control_:_controlId">controlId</code></td>
<td><p>[required] The unique identifier for the control.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_control(
      controlId = "string"
    )
