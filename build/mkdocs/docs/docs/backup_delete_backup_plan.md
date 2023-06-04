<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>backup_delete_backup_plan</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes a backup plan

### Description

Deletes a backup plan. A backup plan can only be deleted after all
associated selections of resources have been deleted. Deleting a backup
plan deletes the current version of a backup plan. Previous versions, if
any, will still exist.

### Usage

    backup_delete_backup_plan(BackupPlanId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="backup_delete_backup_plan_:_BackupPlanId">BackupPlanId</code></td>
<td><p>[required] Uniquely identifies a backup plan.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      BackupPlanId = "string",
      BackupPlanArn = "string",
      DeletionDate = as.POSIXct(
        "2015-01-01"
      ),
      VersionId = "string"
    )

### Request syntax

    svc$delete_backup_plan(
      BackupPlanId = "string"
    )
