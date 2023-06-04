<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>backup_put_backup_vault_notifications</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Turns on notifications on a backup vault for the specified topic and events

### Description

Turns on notifications on a backup vault for the specified topic and
events.

### Usage

    backup_put_backup_vault_notifications(BackupVaultName, SNSTopicArn,
      BackupVaultEvents)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="backup_put_backup_vault_notifications_:_BackupVaultName">BackupVaultName</code></td>
<td><p>[required] The name of a logical container where backups are
stored. Backup vaults are identified by names that are unique to the
account used to create them and the Amazon Web Services Region where
they are created. They consist of lowercase letters, numbers, and
hyphens.</p></td>
</tr>
<tr class="even">
<td><code
id="backup_put_backup_vault_notifications_:_SNSTopicArn">SNSTopicArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) that specifies the
topic for a backup vault’s events; for example,
<code>arn:aws:sns:us-west-2:111122223333:MyVaultTopic</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="backup_put_backup_vault_notifications_:_BackupVaultEvents">BackupVaultEvents</code></td>
<td><p>[required] An array of events that indicate the status of jobs to
back up resources to the backup vault.</p>
<p>For common use cases and code samples, see <a
href="https://docs.aws.amazon.com/aws-backup/latest/devguide/">Using
Amazon SNS to track Backup events</a>.</p>
<p>The following events are supported:</p>
<ul>
<li><p><code>BACKUP_JOB_STARTED</code> |
<code>BACKUP_JOB_COMPLETED</code></p></li>
<li><p><code>COPY_JOB_STARTED</code> | <code>COPY_JOB_SUCCESSFUL</code>
| <code>COPY_JOB_FAILED</code></p></li>
<li><p><code>RESTORE_JOB_STARTED</code> |
<code>RESTORE_JOB_COMPLETED</code> |
<code>RECOVERY_POINT_MODIFIED</code></p></li>
<li><p><code>S3_BACKUP_OBJECT_FAILED</code> |
<code>S3_RESTORE_OBJECT_FAILED</code></p></li>
</ul>
<p>The list below shows items that are deprecated events (for reference)
and are no longer in use. They are no longer supported and will not
return statuses or notifications. Refer to the list above for current
supported events.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$put_backup_vault_notifications(
      BackupVaultName = "string",
      SNSTopicArn = "string",
      BackupVaultEvents = list(
        "BACKUP_JOB_STARTED"|"BACKUP_JOB_COMPLETED"|"BACKUP_JOB_SUCCESSFUL"|"BACKUP_JOB_FAILED"|"BACKUP_JOB_EXPIRED"|"RESTORE_JOB_STARTED"|"RESTORE_JOB_COMPLETED"|"RESTORE_JOB_SUCCESSFUL"|"RESTORE_JOB_FAILED"|"COPY_JOB_STARTED"|"COPY_JOB_SUCCESSFUL"|"COPY_JOB_FAILED"|"RECOVERY_POINT_MODIFIED"|"BACKUP_PLAN_CREATED"|"BACKUP_PLAN_MODIFIED"|"S3_BACKUP_OBJECT_FAILED"|"S3_RESTORE_OBJECT_FAILED"
      )
    )
