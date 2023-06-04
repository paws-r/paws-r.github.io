<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>backup_describe_recovery_point</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns metadata associated with a recovery point, including ID, status, encryption, and lifecycle

### Description

Returns metadata associated with a recovery point, including ID, status,
encryption, and lifecycle.

### Usage

    backup_describe_recovery_point(BackupVaultName, RecoveryPointArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="backup_describe_recovery_point_:_BackupVaultName">BackupVaultName</code></td>
<td><p>[required] The name of a logical container where backups are
stored. Backup vaults are identified by names that are unique to the
account used to create them and the Amazon Web Services Region where
they are created. They consist of lowercase letters, numbers, and
hyphens.</p></td>
</tr>
<tr class="even">
<td><code
id="backup_describe_recovery_point_:_RecoveryPointArn">RecoveryPointArn</code></td>
<td><p>[required] An Amazon Resource Name (ARN) that uniquely identifies
a recovery point; for example, <code
style="white-space: pre;">⁠arn:aws:backup:us-east-1:123456789012:recovery-point:1EB3B5E7-9EB0-435A-A80B-108B488B0D45⁠</code>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      RecoveryPointArn = "string",
      BackupVaultName = "string",
      BackupVaultArn = "string",
      SourceBackupVaultArn = "string",
      ResourceArn = "string",
      ResourceType = "string",
      CreatedBy = list(
        BackupPlanId = "string",
        BackupPlanArn = "string",
        BackupPlanVersion = "string",
        BackupRuleId = "string"
      ),
      IamRoleArn = "string",
      Status = "COMPLETED"|"PARTIAL"|"DELETING"|"EXPIRED",
      StatusMessage = "string",
      CreationDate = as.POSIXct(
        "2015-01-01"
      ),
      CompletionDate = as.POSIXct(
        "2015-01-01"
      ),
      BackupSizeInBytes = 123,
      CalculatedLifecycle = list(
        MoveToColdStorageAt = as.POSIXct(
          "2015-01-01"
        ),
        DeleteAt = as.POSIXct(
          "2015-01-01"
        )
      ),
      Lifecycle = list(
        MoveToColdStorageAfterDays = 123,
        DeleteAfterDays = 123
      ),
      EncryptionKeyArn = "string",
      IsEncrypted = TRUE|FALSE,
      StorageClass = "WARM"|"COLD"|"DELETED",
      LastRestoreTime = as.POSIXct(
        "2015-01-01"
      ),
      ParentRecoveryPointArn = "string",
      CompositeMemberIdentifier = "string",
      IsParent = TRUE|FALSE,
      ResourceName = "string"
    )

### Request syntax

    svc$describe_recovery_point(
      BackupVaultName = "string",
      RecoveryPointArn = "string"
    )
