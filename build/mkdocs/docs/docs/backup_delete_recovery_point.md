<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>backup_delete_recovery_point</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes the recovery point specified by a recovery point ID

### Description

Deletes the recovery point specified by a recovery point ID.

If the recovery point ID belongs to a continuous backup, calling this
endpoint deletes the existing continuous backup and stops future
continuous backup.

When an IAM role's permissions are insufficient to call this API, the
service sends back an HTTP 200 response with an empty HTTP body, but the
recovery point is not deleted. Instead, it enters an `EXPIRED` state.

`EXPIRED` recovery points can be deleted with this API once the IAM role
has the `iam:CreateServiceLinkedRole` action. To learn more about adding
this role, see [Troubleshooting manual
deletions](https://docs.aws.amazon.com/aws-backup/latest/devguide/deleting-backups.html#deleting-backups-troubleshooting).

If the user or role is deleted or the permission within the role is
removed, the deletion will not be successful and will enter an `EXPIRED`
state.

### Usage

    backup_delete_recovery_point(BackupVaultName, RecoveryPointArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="backup_delete_recovery_point_:_BackupVaultName">BackupVaultName</code></td>
<td><p>[required] The name of a logical container where backups are
stored. Backup vaults are identified by names that are unique to the
account used to create them and the Amazon Web Services Region where
they are created. They consist of lowercase letters, numbers, and
hyphens.</p></td>
</tr>
<tr class="even">
<td><code
id="backup_delete_recovery_point_:_RecoveryPointArn">RecoveryPointArn</code></td>
<td><p>[required] An Amazon Resource Name (ARN) that uniquely identifies
a recovery point; for example, <code
style="white-space: pre;">⁠arn:aws:backup:us-east-1:123456789012:recovery-point:1EB3B5E7-9EB0-435A-A80B-108B488B0D45⁠</code>.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_recovery_point(
      BackupVaultName = "string",
      RecoveryPointArn = "string"
    )
