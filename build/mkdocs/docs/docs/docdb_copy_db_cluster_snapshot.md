<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>docdb_copy_db_cluster_snapshot</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Copies a snapshot of a cluster

### Description

Copies a snapshot of a cluster.

To copy a cluster snapshot from a shared manual cluster snapshot,
`SourceDBClusterSnapshotIdentifier` must be the Amazon Resource Name
(ARN) of the shared cluster snapshot. You can only copy a shared DB
cluster snapshot, whether encrypted or not, in the same Amazon Web
Services Region.

To cancel the copy operation after it is in progress, delete the target
cluster snapshot identified by `TargetDBClusterSnapshotIdentifier` while
that cluster snapshot is in the *copying* status.

### Usage

    docdb_copy_db_cluster_snapshot(SourceDBClusterSnapshotIdentifier,
      TargetDBClusterSnapshotIdentifier, KmsKeyId, PreSignedUrl, CopyTags,
      Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="docdb_copy_db_cluster_snapshot_:_SourceDBClusterSnapshotIdentifier">SourceDBClusterSnapshotIdentifier</code></td>
<td><p>[required] The identifier of the cluster snapshot to copy. This
parameter is not case sensitive.</p>
<p>Constraints:</p>
<ul>
<li><p>Must specify a valid system snapshot in the <em>available</em>
state.</p></li>
<li><p>If the source snapshot is in the same Amazon Web Services Region
as the copy, specify a valid snapshot identifier.</p></li>
<li><p>If the source snapshot is in a different Amazon Web Services
Region than the copy, specify a valid cluster snapshot ARN.</p></li>
</ul>
<p>Example: <code>my-cluster-snapshot1</code></p></td>
</tr>
<tr class="even">
<td><code
id="docdb_copy_db_cluster_snapshot_:_TargetDBClusterSnapshotIdentifier">TargetDBClusterSnapshotIdentifier</code></td>
<td><p>[required] The identifier of the new cluster snapshot to create
from the source cluster snapshot. This parameter is not case
sensitive.</p>
<p>Constraints:</p>
<ul>
<li><p>Must contain from 1 to 63 letters, numbers, or hyphens.</p></li>
<li><p>The first character must be a letter.</p></li>
<li><p>Cannot end with a hyphen or contain two consecutive
hyphens.</p></li>
</ul>
<p>Example: <code>my-cluster-snapshot2</code></p></td>
</tr>
<tr class="odd">
<td><code
id="docdb_copy_db_cluster_snapshot_:_KmsKeyId">KmsKeyId</code></td>
<td><p>The KMS key ID for an encrypted cluster snapshot. The KMS key ID
is the Amazon Resource Name (ARN), KMS key identifier, or the KMS key
alias for the KMS encryption key.</p>
<p>If you copy an encrypted cluster snapshot from your Amazon Web
Services account, you can specify a value for <code>KmsKeyId</code> to
encrypt the copy with a new KMS encryption key. If you don't specify a
value for <code>KmsKeyId</code>, then the copy of the cluster snapshot
is encrypted with the same KMS key as the source cluster snapshot.</p>
<p>If you copy an encrypted cluster snapshot that is shared from another
Amazon Web Services account, then you must specify a value for
<code>KmsKeyId</code>.</p>
<p>To copy an encrypted cluster snapshot to another Amazon Web Services
Region, set <code>KmsKeyId</code> to the KMS key ID that you want to use
to encrypt the copy of the cluster snapshot in the destination Region.
KMS encryption keys are specific to the Amazon Web Services Region that
they are created in, and you can't use encryption keys from one Amazon
Web Services Region in another Amazon Web Services Region.</p>
<p>If you copy an unencrypted cluster snapshot and specify a value for
the <code>KmsKeyId</code> parameter, an error is returned.</p></td>
</tr>
<tr class="even">
<td><code
id="docdb_copy_db_cluster_snapshot_:_PreSignedUrl">PreSignedUrl</code></td>
<td><p>The URL that contains a Signature Version 4 signed request for
the<code>copy_db_cluster_snapshot</code> API action in the Amazon Web
Services Region that contains the source cluster snapshot to copy. You
must use the <code>PreSignedUrl</code> parameter when copying a cluster
snapshot from another Amazon Web Services Region.</p>
<p>If you are using an Amazon Web Services SDK tool or the CLI, you can
specify <code>SourceRegion</code> (or <code>--source-region</code> for
the CLI) instead of specifying <code>PreSignedUrl</code> manually.
Specifying <code>SourceRegion</code> autogenerates a pre-signed URL that
is a valid request for the operation that can be executed in the source
Amazon Web Services Region.</p>
<p>The presigned URL must be a valid request for the
<code>copy_db_cluster_snapshot</code> API action that can be executed in
the source Amazon Web Services Region that contains the cluster snapshot
to be copied. The presigned URL request must contain the following
parameter values:</p>
<ul>
<li><p><code>SourceRegion</code> - The ID of the region that contains
the snapshot to be copied.</p></li>
<li><p><code>SourceDBClusterSnapshotIdentifier</code> - The identifier
for the the encrypted cluster snapshot to be copied. This identifier
must be in the Amazon Resource Name (ARN) format for the source Amazon
Web Services Region. For example, if you are copying an encrypted
cluster snapshot from the us-east-1 Amazon Web Services Region, then
your <code>SourceDBClusterSnapshotIdentifier</code> looks something like
the following:
<code>arn:aws:rds:us-east-1:12345678012:sample-cluster:sample-cluster-snapshot</code>.</p></li>
<li><p><code>TargetDBClusterSnapshotIdentifier</code> - The identifier
for the new cluster snapshot to be created. This parameter isn't case
sensitive.</p></li>
</ul></td>
</tr>
<tr class="odd">
<td><code
id="docdb_copy_db_cluster_snapshot_:_CopyTags">CopyTags</code></td>
<td><p>Set to <code>true</code> to copy all tags from the source cluster
snapshot to the target cluster snapshot, and otherwise
<code>false</code>. The default is <code>false</code>.</p></td>
</tr>
<tr class="even">
<td><code id="docdb_copy_db_cluster_snapshot_:_Tags">Tags</code></td>
<td><p>The tags to be assigned to the cluster snapshot.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      DBClusterSnapshot = list(
        AvailabilityZones = list(
          "string"
        ),
        DBClusterSnapshotIdentifier = "string",
        DBClusterIdentifier = "string",
        SnapshotCreateTime = as.POSIXct(
          "2015-01-01"
        ),
        Engine = "string",
        Status = "string",
        Port = 123,
        VpcId = "string",
        ClusterCreateTime = as.POSIXct(
          "2015-01-01"
        ),
        MasterUsername = "string",
        EngineVersion = "string",
        SnapshotType = "string",
        PercentProgress = 123,
        StorageEncrypted = TRUE|FALSE,
        KmsKeyId = "string",
        DBClusterSnapshotArn = "string",
        SourceDBClusterSnapshotArn = "string"
      )
    )

### Request syntax

    svc$copy_db_cluster_snapshot(
      SourceDBClusterSnapshotIdentifier = "string",
      TargetDBClusterSnapshotIdentifier = "string",
      KmsKeyId = "string",
      PreSignedUrl = "string",
      CopyTags = TRUE|FALSE,
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      )
    )
