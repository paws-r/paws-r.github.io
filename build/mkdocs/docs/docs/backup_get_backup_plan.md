<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>backup_get_backup_plan</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns BackupPlan details for the specified BackupPlanId

### Description

Returns `BackupPlan` details for the specified `BackupPlanId`. The
details are the body of a backup plan in JSON format, in addition to
plan metadata.

### Usage

    backup_get_backup_plan(BackupPlanId, VersionId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="backup_get_backup_plan_:_BackupPlanId">BackupPlanId</code></td>
<td><p>[required] Uniquely identifies a backup plan.</p></td>
</tr>
<tr class="even">
<td><code id="backup_get_backup_plan_:_VersionId">VersionId</code></td>
<td><p>Unique, randomly generated, Unicode, UTF-8 encoded strings that
are at most 1,024 bytes long. Version IDs cannot be edited.</p></td>
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
      ),
      BackupPlanId = "string",
      BackupPlanArn = "string",
      VersionId = "string",
      CreatorRequestId = "string",
      CreationDate = as.POSIXct(
        "2015-01-01"
      ),
      DeletionDate = as.POSIXct(
        "2015-01-01"
      ),
      LastExecutionDate = as.POSIXct(
        "2015-01-01"
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

### Request syntax

    svc$get_backup_plan(
      BackupPlanId = "string",
      VersionId = "string"
    )
