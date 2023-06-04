<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>backup_start_backup_job</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Starts an on-demand backup job for the specified resource

### Description

Starts an on-demand backup job for the specified resource.

### Usage

    backup_start_backup_job(BackupVaultName, ResourceArn, IamRoleArn,
      IdempotencyToken, StartWindowMinutes, CompleteWindowMinutes, Lifecycle,
      RecoveryPointTags, BackupOptions)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="backup_start_backup_job_:_BackupVaultName">BackupVaultName</code></td>
<td><p>[required] The name of a logical container where backups are
stored. Backup vaults are identified by names that are unique to the
account used to create them and the Amazon Web Services Region where
they are created. They consist of lowercase letters, numbers, and
hyphens.</p></td>
</tr>
<tr class="even">
<td><code
id="backup_start_backup_job_:_ResourceArn">ResourceArn</code></td>
<td><p>[required] An Amazon Resource Name (ARN) that uniquely identifies
a resource. The format of the ARN depends on the resource type.</p></td>
</tr>
<tr class="odd">
<td><code
id="backup_start_backup_job_:_IamRoleArn">IamRoleArn</code></td>
<td><p>[required] Specifies the IAM role ARN used to create the target
recovery point; for example, <code
style="white-space: pre;">⁠arn:aws:iam::123456789012:role/S3Access⁠</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="backup_start_backup_job_:_IdempotencyToken">IdempotencyToken</code></td>
<td><p>A customer-chosen string that you can use to distinguish between
otherwise identical calls to <code>start_backup_job</code>. Retrying a
successful request with the same idempotency token results in a success
message with no action taken.</p></td>
</tr>
<tr class="odd">
<td><code
id="backup_start_backup_job_:_StartWindowMinutes">StartWindowMinutes</code></td>
<td><p>A value in minutes after a backup is scheduled before a job will
be canceled if it doesn't start successfully. This value is optional,
and the default is 8 hours. If this value is included, it must be at
least 60 minutes to avoid errors.</p>
<p>During the start window, the backup job status remains in
<code>CREATED</code> status until it has successfully begun or until the
start window time has run out. If within the start window time Backup
receives an error that allows the job to be retried, Backup will
automatically retry to begin the job at least every 10 minutes until the
backup successfully begins (the job status changes to
<code>RUNNING</code>) or until the job status changes to
<code>EXPIRED</code> (which is expected to occur when the start window
time is over).</p></td>
</tr>
<tr class="even">
<td><code
id="backup_start_backup_job_:_CompleteWindowMinutes">CompleteWindowMinutes</code></td>
<td><p>A value in minutes during which a successfully started backup
must complete, or else Backup will cancel the job. This value is
optional. This value begins counting down from when the backup was
scheduled. It does not add additional time for
<code>StartWindowMinutes</code>, or if the backup started later than
scheduled.</p></td>
</tr>
<tr class="odd">
<td><code id="backup_start_backup_job_:_Lifecycle">Lifecycle</code></td>
<td><p>The lifecycle defines when a protected resource is transitioned
to cold storage and when it expires. Backup will transition and expire
backups automatically according to the lifecycle that you define.</p>
<p>Backups transitioned to cold storage must be stored in cold storage
for a minimum of 90 days. Therefore, the “retention” setting must be 90
days greater than the “transition to cold after days” setting. The
“transition to cold after days” setting cannot be changed after a backup
has been transitioned to cold.</p>
<p>Resource types that are able to be transitioned to cold storage are
listed in the "Lifecycle to cold storage" section of the <a
href="https://docs.aws.amazon.com/aws-backup/latest/devguide/whatisbackup.html#features-by-resource">Feature
availability by resource</a> table. Backup ignores this expression for
other resource types.</p></td>
</tr>
<tr class="even">
<td><code
id="backup_start_backup_job_:_RecoveryPointTags">RecoveryPointTags</code></td>
<td><p>To help organize your resources, you can assign your own metadata
to the resources that you create. Each tag is a key-value pair.</p></td>
</tr>
<tr class="odd">
<td><code
id="backup_start_backup_job_:_BackupOptions">BackupOptions</code></td>
<td><p>Specifies the backup option for a selected resource. This option
is only available for Windows Volume Shadow Copy Service (VSS) backup
jobs.</p>
<p>Valid values: Set to <code>"WindowsVSS":"enabled"</code> to enable
the <code>WindowsVSS</code> backup option and create a Windows VSS
backup. Set to <code
style="white-space: pre;">⁠"WindowsVSS""disabled"⁠</code> to create a
regular backup. The <code>WindowsVSS</code> option is not enabled by
default.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      BackupJobId = "string",
      RecoveryPointArn = "string",
      CreationDate = as.POSIXct(
        "2015-01-01"
      ),
      IsParent = TRUE|FALSE
    )

### Request syntax

    svc$start_backup_job(
      BackupVaultName = "string",
      ResourceArn = "string",
      IamRoleArn = "string",
      IdempotencyToken = "string",
      StartWindowMinutes = 123,
      CompleteWindowMinutes = 123,
      Lifecycle = list(
        MoveToColdStorageAfterDays = 123,
        DeleteAfterDays = 123
      ),
      RecoveryPointTags = list(
        "string"
      ),
      BackupOptions = list(
        "string"
      )
    )
