<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>backup_update_backup_plan</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates an existing backup plan identified by its backupPlanId with the input document in JSON format

### Description

Updates an existing backup plan identified by its `backupPlanId` with
the input document in JSON format. The new version is uniquely
identified by a `VersionId`.

### Usage

    backup_update_backup_plan(BackupPlanId, BackupPlan)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="backup_update_backup_plan_:_BackupPlanId">BackupPlanId</code></td>
<td><p>[required] Uniquely identifies a backup plan.</p></td>
</tr>
<tr class="even">
<td><code
id="backup_update_backup_plan_:_BackupPlan">BackupPlan</code></td>
<td><p>[required] Specifies the body of a backup plan. Includes a
<code>BackupPlanName</code> and one or more sets of
<code>Rules</code>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      BackupPlanId = "string",
      BackupPlanArn = "string",
      CreationDate = as.POSIXct(
        "2015-01-01"
      ),
      VersionId = "string",
      AdvancedBackupSettings = list(
        list(
          ResourceType = "string",
          BackupOptions = list(
            "string"
          )
        )
      )
    )

### Request syntax

    svc$update_backup_plan(
      BackupPlanId = "string",
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
