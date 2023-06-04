<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>backup_export_backup_plan_template</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns the backup plan that is specified by the plan ID as a backup template

### Description

Returns the backup plan that is specified by the plan ID as a backup
template.

### Usage

    backup_export_backup_plan_template(BackupPlanId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="backup_export_backup_plan_template_:_BackupPlanId">BackupPlanId</code></td>
<td><p>[required] Uniquely identifies a backup plan.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      BackupPlanTemplateJson = "string"
    )

### Request syntax

    svc$export_backup_plan_template(
      BackupPlanId = "string"
    )
