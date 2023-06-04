<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>backup_delete_backup_selection</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes the resource selection associated with a backup plan that is specified by the SelectionId

### Description

Deletes the resource selection associated with a backup plan that is
specified by the `SelectionId`.

### Usage

    backup_delete_backup_selection(BackupPlanId, SelectionId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="backup_delete_backup_selection_:_BackupPlanId">BackupPlanId</code></td>
<td><p>[required] Uniquely identifies a backup plan.</p></td>
</tr>
<tr class="even">
<td><code
id="backup_delete_backup_selection_:_SelectionId">SelectionId</code></td>
<td><p>[required] Uniquely identifies the body of a request to assign a
set of resources to a backup plan.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_backup_selection(
      BackupPlanId = "string",
      SelectionId = "string"
    )
