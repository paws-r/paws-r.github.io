<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>backup_get_backup_vault_notifications</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns event notifications for the specified backup vault

### Description

Returns event notifications for the specified backup vault.

### Usage

    backup_get_backup_vault_notifications(BackupVaultName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="backup_get_backup_vault_notifications_:_BackupVaultName">BackupVaultName</code></td>
<td><p>[required] The name of a logical container where backups are
stored. Backup vaults are identified by names that are unique to the
account used to create them and the Amazon Web Services Region where
they are created. They consist of lowercase letters, numbers, and
hyphens.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      BackupVaultName = "string",
      BackupVaultArn = "string",
      SNSTopicArn = "string",
      BackupVaultEvents = list(
        "BACKUP_JOB_STARTED"|"BACKUP_JOB_COMPLETED"|"BACKUP_JOB_SUCCESSFUL"|"BACKUP_JOB_FAILED"|"BACKUP_JOB_EXPIRED"|"RESTORE_JOB_STARTED"|"RESTORE_JOB_COMPLETED"|"RESTORE_JOB_SUCCESSFUL"|"RESTORE_JOB_FAILED"|"COPY_JOB_STARTED"|"COPY_JOB_SUCCESSFUL"|"COPY_JOB_FAILED"|"RECOVERY_POINT_MODIFIED"|"BACKUP_PLAN_CREATED"|"BACKUP_PLAN_MODIFIED"|"S3_BACKUP_OBJECT_FAILED"|"S3_RESTORE_OBJECT_FAILED"
      )
    )

### Request syntax

    svc$get_backup_vault_notifications(
      BackupVaultName = "string"
    )
