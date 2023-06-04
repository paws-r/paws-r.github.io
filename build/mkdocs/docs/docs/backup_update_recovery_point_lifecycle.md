<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>backup_update_recovery_point_lifecycle</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Sets the transition lifecycle of a recovery point

### Description

Sets the transition lifecycle of a recovery point.

The lifecycle defines when a protected resource is transitioned to cold
storage and when it expires. Backup transitions and expires backups
automatically according to the lifecycle that you define.

Backups transitioned to cold storage must be stored in cold storage for
a minimum of 90 days. Therefore, the “retention” setting must be 90 days
greater than the “transition to cold after days” setting. The
“transition to cold after days” setting cannot be changed after a backup
has been transitioned to cold.

Resource types that are able to be transitioned to cold storage are
listed in the "Lifecycle to cold storage" section of the [Feature
availability by
resource](https://docs.aws.amazon.com/aws-backup/latest/devguide/whatisbackup.html#features-by-resource)
table. Backup ignores this expression for other resource types.

This operation does not support continuous backups.

### Usage

    backup_update_recovery_point_lifecycle(BackupVaultName,
      RecoveryPointArn, Lifecycle)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="backup_update_recovery_point_lifecycle_:_BackupVaultName">BackupVaultName</code></td>
<td><p>[required] The name of a logical container where backups are
stored. Backup vaults are identified by names that are unique to the
account used to create them and the Amazon Web Services Region where
they are created. They consist of lowercase letters, numbers, and
hyphens.</p></td>
</tr>
<tr class="even">
<td><code
id="backup_update_recovery_point_lifecycle_:_RecoveryPointArn">RecoveryPointArn</code></td>
<td><p>[required] An Amazon Resource Name (ARN) that uniquely identifies
a recovery point; for example, <code
style="white-space: pre;">⁠arn:aws:backup:us-east-1:123456789012:recovery-point:1EB3B5E7-9EB0-435A-A80B-108B488B0D45⁠</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="backup_update_recovery_point_lifecycle_:_Lifecycle">Lifecycle</code></td>
<td><p>The lifecycle defines when a protected resource is transitioned
to cold storage and when it expires. Backup transitions and expires
backups automatically according to the lifecycle that you define.</p>
<p>Backups transitioned to cold storage must be stored in cold storage
for a minimum of 90 days. Therefore, the “retention” setting must be 90
days greater than the “transition to cold after days” setting. The
“transition to cold after days” setting cannot be changed after a backup
has been transitioned to cold.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      BackupVaultArn = "string",
      RecoveryPointArn = "string",
      Lifecycle = list(
        MoveToColdStorageAfterDays = 123,
        DeleteAfterDays = 123
      ),
      CalculatedLifecycle = list(
        MoveToColdStorageAt = as.POSIXct(
          "2015-01-01"
        ),
        DeleteAt = as.POSIXct(
          "2015-01-01"
        )
      )
    )

### Request syntax

    svc$update_recovery_point_lifecycle(
      BackupVaultName = "string",
      RecoveryPointArn = "string",
      Lifecycle = list(
        MoveToColdStorageAfterDays = 123,
        DeleteAfterDays = 123
      )
    )
