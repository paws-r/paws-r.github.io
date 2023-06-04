<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ebs_start_snapshot</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a new Amazon EBS snapshot

### Description

Creates a new Amazon EBS snapshot. The new snapshot enters the `pending`
state after the request completes.

After creating the snapshot, use
[PutSnapshotBlock](https://docs.aws.amazon.com/ebs/latest/APIReference/API_PutSnapshotBlock.html)
to write blocks of data to the snapshot.

### Usage

    ebs_start_snapshot(VolumeSize, ParentSnapshotId, Tags, Description,
      ClientToken, Encrypted, KmsKeyArn, Timeout)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="ebs_start_snapshot_:_VolumeSize">VolumeSize</code></td>
<td><p>[required] The size of the volume, in GiB. The maximum size is
<code>65536</code> GiB (64 TiB).</p></td>
</tr>
<tr class="even">
<td><code
id="ebs_start_snapshot_:_ParentSnapshotId">ParentSnapshotId</code></td>
<td><p>The ID of the parent snapshot. If there is no parent snapshot, or
if you are creating the first snapshot for an on-premises volume, omit
this parameter.</p>
<p>You can't specify <strong>ParentSnapshotId</strong> and
<strong>Encrypted</strong> in the same request. If you specify both
parameters, the request fails with <code>ValidationException</code>.</p>
<p>The encryption status of the snapshot depends on the values that you
specify for <strong>Encrypted</strong>, <strong>KmsKeyArn</strong>, and
<strong>ParentSnapshotId</strong>, and whether your Amazon Web Services
account is enabled for <a
href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSEncryption.html#encryption-by-default">encryption
by default</a>. For more information, see <a
href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ebsapis-using-encryption.html">Using
encryption</a> in the <em>Amazon Elastic Compute Cloud User
Guide</em>.</p>
<p>If you specify an encrypted parent snapshot, you must have permission
to use the KMS key that was used to encrypt the parent snapshot. For
more information, see <a
href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ebsapi-permissions.html#ebsapi-kms-permissions">Permissions
to use Key Management Service keys</a> in the <em>Amazon Elastic Compute
Cloud User Guide</em>.</p></td>
</tr>
<tr class="odd">
<td><code id="ebs_start_snapshot_:_Tags">Tags</code></td>
<td><p>The tags to apply to the snapshot.</p></td>
</tr>
<tr class="even">
<td><code id="ebs_start_snapshot_:_Description">Description</code></td>
<td><p>A description for the snapshot.</p></td>
</tr>
<tr class="odd">
<td><code id="ebs_start_snapshot_:_ClientToken">ClientToken</code></td>
<td><p>A unique, case-sensitive identifier that you provide to ensure
the idempotency of the request. Idempotency ensures that an API request
completes only once. With an idempotent request, if the original request
completes successfully. The subsequent retries with the same client
token return the result from the original successful request and they
have no additional effect.</p>
<p>If you do not specify a client token, one is automatically generated
by the Amazon Web Services SDK.</p>
<p>For more information, see <a
href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ebs-direct-api-idempotency.html">Idempotency
for StartSnapshot API</a> in the <em>Amazon Elastic Compute Cloud User
Guide</em>.</p></td>
</tr>
<tr class="even">
<td><code id="ebs_start_snapshot_:_Encrypted">Encrypted</code></td>
<td><p>Indicates whether to encrypt the snapshot.</p>
<p>You can't specify <strong>Encrypted</strong> and
<strong>ParentSnapshotId</strong> in the same request. If you specify
both parameters, the request fails with
<code>ValidationException</code>.</p>
<p>The encryption status of the snapshot depends on the values that you
specify for <strong>Encrypted</strong>, <strong>KmsKeyArn</strong>, and
<strong>ParentSnapshotId</strong>, and whether your Amazon Web Services
account is enabled for <a
href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSEncryption.html#encryption-by-default">encryption
by default</a>. For more information, see <a
href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ebsapis-using-encryption.html">Using
encryption</a> in the <em>Amazon Elastic Compute Cloud User
Guide</em>.</p>
<p>To create an encrypted snapshot, you must have permission to use the
KMS key. For more information, see <a
href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ebsapi-permissions.html#ebsapi-kms-permissions">Permissions
to use Key Management Service keys</a> in the <em>Amazon Elastic Compute
Cloud User Guide</em>.</p></td>
</tr>
<tr class="odd">
<td><code id="ebs_start_snapshot_:_KmsKeyArn">KmsKeyArn</code></td>
<td><p>The Amazon Resource Name (ARN) of the Key Management Service
(KMS) key to be used to encrypt the snapshot.</p>
<p>The encryption status of the snapshot depends on the values that you
specify for <strong>Encrypted</strong>, <strong>KmsKeyArn</strong>, and
<strong>ParentSnapshotId</strong>, and whether your Amazon Web Services
account is enabled for <a
href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSEncryption.html#encryption-by-default">encryption
by default</a>. For more information, see <a
href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ebsapis-using-encryption.html">Using
encryption</a> in the <em>Amazon Elastic Compute Cloud User
Guide</em>.</p>
<p>To create an encrypted snapshot, you must have permission to use the
KMS key. For more information, see <a
href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ebsapi-permissions.html#ebsapi-kms-permissions">Permissions
to use Key Management Service keys</a> in the <em>Amazon Elastic Compute
Cloud User Guide</em>.</p></td>
</tr>
<tr class="even">
<td><code id="ebs_start_snapshot_:_Timeout">Timeout</code></td>
<td><p>The amount of time (in minutes) after which the snapshot is
automatically cancelled if:</p>
<ul>
<li><p>No blocks are written to the snapshot.</p></li>
<li><p>The snapshot is not completed after writing the last block of
data.</p></li>
</ul>
<p>If no value is specified, the timeout defaults to <code>60</code>
minutes.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Description = "string",
      SnapshotId = "string",
      OwnerId = "string",
      Status = "completed"|"pending"|"error",
      StartTime = as.POSIXct(
        "2015-01-01"
      ),
      VolumeSize = 123,
      BlockSize = 123,
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      ),
      ParentSnapshotId = "string",
      KmsKeyArn = "string"
    )

### Request syntax

    svc$start_snapshot(
      VolumeSize = 123,
      ParentSnapshotId = "string",
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      ),
      Description = "string",
      ClientToken = "string",
      Encrypted = TRUE|FALSE,
      KmsKeyArn = "string",
      Timeout = 123
    )
