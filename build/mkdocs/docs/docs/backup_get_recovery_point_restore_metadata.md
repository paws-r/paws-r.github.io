<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>backup_get_recovery_point_restore_metadata</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns a set of metadata key-value pairs that were used to create the backup

### Description

Returns a set of metadata key-value pairs that were used to create the
backup.

### Usage

    backup_get_recovery_point_restore_metadata(BackupVaultName,
      RecoveryPointArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="backup_get_recovery_point_restore_metadata_:_BackupVaultName">BackupVaultName</code></td>
<td><p>[required] The name of a logical container where backups are
stored. Backup vaults are identified by names that are unique to the
account used to create them and the Amazon Web Services Region where
they are created. They consist of lowercase letters, numbers, and
hyphens.</p></td>
</tr>
<tr class="even">
<td><code
id="backup_get_recovery_point_restore_metadata_:_RecoveryPointArn">RecoveryPointArn</code></td>
<td><p>[required] An Amazon Resource Name (ARN) that uniquely identifies
a recovery point; for example, <code
style="white-space: pre;">⁠arn:aws:backup:us-east-1:123456789012:recovery-point:1EB3B5E7-9EB0-435A-A80B-108B488B0D45⁠</code>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      BackupVaultArn = "string",
      RecoveryPointArn = "string",
      RestoreMetadata = list(
        "string"
      )
    )

### Request syntax

    svc$get_recovery_point_restore_metadata(
      BackupVaultName = "string",
      RecoveryPointArn = "string"
    )
