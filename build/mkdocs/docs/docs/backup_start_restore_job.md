<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>backup_start_restore_job</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Recovers the saved resource identified by an Amazon Resource Name (ARN)

### Description

Recovers the saved resource identified by an Amazon Resource Name (ARN).

### Usage

    backup_start_restore_job(RecoveryPointArn, Metadata, IamRoleArn,
      IdempotencyToken, ResourceType, CopySourceTagsToRestoredResource)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="backup_start_restore_job_:_RecoveryPointArn">RecoveryPointArn</code></td>
<td><p>[required] An ARN that uniquely identifies a recovery point; for
example, <code
style="white-space: pre;">⁠arn:aws:backup:us-east-1:123456789012:recovery-point:1EB3B5E7-9EB0-435A-A80B-108B488B0D45⁠</code>.</p></td>
</tr>
<tr class="even">
<td><code id="backup_start_restore_job_:_Metadata">Metadata</code></td>
<td><p>[required] A set of metadata key-value pairs. Contains
information, such as a resource name, required to restore a recovery
point.</p>
<p>You can get configuration metadata about a resource at the time it
was backed up by calling
<code>get_recovery_point_restore_metadata</code>. However, values in
addition to those provided by
<code>get_recovery_point_restore_metadata</code> might be required to
restore a resource. For example, you might need to provide a new
resource name if the original already exists.</p>
<p>You need to specify specific metadata to restore an Amazon Elastic
File System (Amazon EFS) instance:</p>
<ul>
<li><p><code>file-system-id</code>: The ID of the Amazon EFS file system
that is backed up by Backup. Returned in
<code>get_recovery_point_restore_metadata</code>.</p></li>
<li><p><code>Encrypted</code>: A Boolean value that, if true, specifies
that the file system is encrypted. If <code>KmsKeyId</code> is
specified, <code>Encrypted</code> must be set to
<code>true</code>.</p></li>
<li><p><code>KmsKeyId</code>: Specifies the Amazon Web Services KMS key
that is used to encrypt the restored file system. You can specify a key
from another Amazon Web Services account provided that key it is
properly shared with your account via Amazon Web Services KMS.</p></li>
<li><p><code>PerformanceMode</code>: Specifies the throughput mode of
the file system.</p></li>
<li><p><code>CreationToken</code>: A user-supplied value that ensures
the uniqueness (idempotency) of the request.</p></li>
<li><p><code>newFileSystem</code>: A Boolean value that, if true,
specifies that the recovery point is restored to a new Amazon EFS file
system.</p></li>
<li><p><code>ItemsToRestore</code>: An array of one to five strings
where each string is a file path. Use <code>ItemsToRestore</code> to
restore specific files or directories rather than the entire file
system. This parameter is optional. For example, <code
style="white-space: pre;">⁠"itemsToRestore":"[\"/my.test\"]"⁠</code>.</p></li>
</ul></td>
</tr>
<tr class="odd">
<td><code
id="backup_start_restore_job_:_IamRoleArn">IamRoleArn</code></td>
<td><p>The Amazon Resource Name (ARN) of the IAM role that Backup uses
to create the target resource; for example: <code
style="white-space: pre;">⁠arn:aws:iam::123456789012:role/S3Access⁠</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="backup_start_restore_job_:_IdempotencyToken">IdempotencyToken</code></td>
<td><p>A customer-chosen string that you can use to distinguish between
otherwise identical calls to <code>start_restore_job</code>. Retrying a
successful request with the same idempotency token results in a success
message with no action taken.</p></td>
</tr>
<tr class="odd">
<td><code
id="backup_start_restore_job_:_ResourceType">ResourceType</code></td>
<td><p>Starts a job to restore a recovery point for one of the following
resources:</p>
<ul>
<li><p><code>Aurora</code> for Amazon Aurora</p></li>
<li><p><code>DocumentDB</code> for Amazon DocumentDB (with MongoDB
compatibility)</p></li>
<li><p><code>CloudFormation</code> for CloudFormation</p></li>
<li><p><code>DynamoDB</code> for Amazon DynamoDB</p></li>
<li><p><code>EBS</code> for Amazon Elastic Block Store</p></li>
<li><p><code>EC2</code> for Amazon Elastic Compute Cloud</p></li>
<li><p><code>EFS</code> for Amazon Elastic File System</p></li>
<li><p><code>FSx</code> for Amazon FSx</p></li>
<li><p><code>Neptune</code> for Amazon Neptune</p></li>
<li><p><code>RDS</code> for Amazon Relational Database Service</p></li>
<li><p><code>Redshift</code> for Amazon Redshift</p></li>
<li><p><code style="white-space: pre;">⁠Storage Gateway⁠</code> for
Storage Gateway</p></li>
<li><p><code>S3</code> for Amazon S3</p></li>
<li><p><code>Timestream</code> for Amazon Timestream</p></li>
<li><p><code>VirtualMachine</code> for virtual machines</p></li>
</ul></td>
</tr>
<tr class="even">
<td><code
id="backup_start_restore_job_:_CopySourceTagsToRestoredResource">CopySourceTagsToRestoredResource</code></td>
<td><p>This is an optional parameter. If this equals <code>True</code>,
tags included in the backup will be copied to the restored resource.</p>
<p>This can only be applied to backups created through Backup.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      RestoreJobId = "string"
    )

### Request syntax

    svc$start_restore_job(
      RecoveryPointArn = "string",
      Metadata = list(
        "string"
      ),
      IamRoleArn = "string",
      IdempotencyToken = "string",
      ResourceType = "string",
      CopySourceTagsToRestoredResource = TRUE|FALSE
    )
