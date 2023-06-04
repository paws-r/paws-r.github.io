<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>backup_start_copy_job</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Starts a job to create a one-time copy of the specified resource

### Description

Starts a job to create a one-time copy of the specified resource.

Does not support continuous backups.

### Usage

    backup_start_copy_job(RecoveryPointArn, SourceBackupVaultName,
      DestinationBackupVaultArn, IamRoleArn, IdempotencyToken, Lifecycle)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="backup_start_copy_job_:_RecoveryPointArn">RecoveryPointArn</code></td>
<td><p>[required] An ARN that uniquely identifies a recovery point to
use for the copy job; for example,
arn:aws:backup:us-east-1:123456789012:recovery-point:1EB3B5E7-9EB0-435A-A80B-108B488B0D45.</p></td>
</tr>
<tr class="even">
<td><code
id="backup_start_copy_job_:_SourceBackupVaultName">SourceBackupVaultName</code></td>
<td><p>[required] The name of a logical source container where backups
are stored. Backup vaults are identified by names that are unique to the
account used to create them and the Amazon Web Services Region where
they are created. They consist of lowercase letters, numbers, and
hyphens.</p></td>
</tr>
<tr class="odd">
<td><code
id="backup_start_copy_job_:_DestinationBackupVaultArn">DestinationBackupVaultArn</code></td>
<td><p>[required] An Amazon Resource Name (ARN) that uniquely identifies
a destination backup vault to copy to; for example,
<code>arn:aws:backup:us-east-1:123456789012:vault:aBackupVault</code>.</p></td>
</tr>
<tr class="even">
<td><code id="backup_start_copy_job_:_IamRoleArn">IamRoleArn</code></td>
<td><p>[required] Specifies the IAM role ARN used to copy the target
recovery point; for example, <code
style="white-space: pre;">⁠arn:aws:iam::123456789012:role/S3Access⁠</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="backup_start_copy_job_:_IdempotencyToken">IdempotencyToken</code></td>
<td><p>A customer-chosen string that you can use to distinguish between
otherwise identical calls to <code>start_copy_job</code>. Retrying a
successful request with the same idempotency token results in a success
message with no action taken.</p></td>
</tr>
<tr class="even">
<td><code id="backup_start_copy_job_:_Lifecycle">Lifecycle</code></td>
<td></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      CopyJobId = "string",
      CreationDate = as.POSIXct(
        "2015-01-01"
      ),
      IsParent = TRUE|FALSE
    )

### Request syntax

    svc$start_copy_job(
      RecoveryPointArn = "string",
      SourceBackupVaultName = "string",
      DestinationBackupVaultArn = "string",
      IamRoleArn = "string",
      IdempotencyToken = "string",
      Lifecycle = list(
        MoveToColdStorageAfterDays = 123,
        DeleteAfterDays = 123
      )
    )
