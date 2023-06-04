<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>backup_get_backup_plan_from_json</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns a valid JSON document specifying a backup plan or an error

### Description

Returns a valid JSON document specifying a backup plan or an error.

### Usage

    backup_get_backup_plan_from_json(BackupPlanTemplateJson)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="backup_get_backup_plan_from_json_:_BackupPlanTemplateJson">BackupPlanTemplateJson</code></td>
<td><p>[required] A customer-supplied backup plan document in JSON
format.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      BackupPlan = list(
        BackupPlanName = "string",
        Rules = list(
          list(
            RuleName = "string",
            TargetBackupVaultName = "string",
            ScheduleExpression = "string",
            StartWindowMinutes = 123,
            CompletionWindowMinutes = 123,
            Lifecycle = list(
              MoveToColdStorageAfterDays = 123,
              DeleteAfterDays = 123
            ),
            RecoveryPointTags = list(
              "string"
            ),
            RuleId = "string",
            CopyActions = list(
              list(
                Lifecycle = list(
                  MoveToColdStorageAfterDays = 123,
                  DeleteAfterDays = 123
                ),
                DestinationBackupVaultArn = "string"
              )
            ),
            EnableContinuousBackup = TRUE|FALSE
          )
        ),
        AdvancedBackupSettings = list(
          list(
            ResourceType = "string",
            BackupOptions = list(
              "string"
            )
          )
        )
      )
    )

### Request syntax

    svc$get_backup_plan_from_json(
      BackupPlanTemplateJson = "string"
    )
