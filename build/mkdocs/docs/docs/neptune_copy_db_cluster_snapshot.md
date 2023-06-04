<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>neptune_copy_db_cluster_snapshot</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Copies a snapshot of a DB cluster

### Description

Copies a snapshot of a DB cluster.

To copy a DB cluster snapshot from a shared manual DB cluster snapshot,
`SourceDBClusterSnapshotIdentifier` must be the Amazon Resource Name
(ARN) of the shared DB cluster snapshot.

### Usage

    neptune_copy_db_cluster_snapshot(SourceDBClusterSnapshotIdentifier,
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
id="neptune_copy_db_cluster_snapshot_:_SourceDBClusterSnapshotIdentifier">SourceDBClusterSnapshotIdentifier</code></td>
<td><p>[required] The identifier of the DB cluster snapshot to copy.
This parameter is not case-sensitive.</p>
<p>Constraints:</p>
<ul>
<li><p>Must specify a valid system snapshot in the "available"
state.</p></li>
<li><p>Specify a valid DB snapshot identifier.</p></li>
</ul>
<p>Example: <code>my-cluster-snapshot1</code></p></td>
</tr>
<tr class="even">
<td><code
id="neptune_copy_db_cluster_snapshot_:_TargetDBClusterSnapshotIdentifier">TargetDBClusterSnapshotIdentifier</code></td>
<td><p>[required] The identifier of the new DB cluster snapshot to
create from the source DB cluster snapshot. This parameter is not
case-sensitive.</p>
<p>Constraints:</p>
<ul>
<li><p>Must contain from 1 to 63 letters, numbers, or hyphens.</p></li>
<li><p>First character must be a letter.</p></li>
<li><p>Cannot end with a hyphen or contain two consecutive
hyphens.</p></li>
</ul>
<p>Example: <code>my-cluster-snapshot2</code></p></td>
</tr>
<tr class="odd">
<td><code
id="neptune_copy_db_cluster_snapshot_:_KmsKeyId">KmsKeyId</code></td>
<td><p>The Amazon Amazon KMS key ID for an encrypted DB cluster
snapshot. The KMS key ID is the Amazon Resource Name (ARN), KMS key
identifier, or the KMS key alias for the KMS encryption key.</p>
<p>If you copy an encrypted DB cluster snapshot from your Amazon
account, you can specify a value for <code>KmsKeyId</code> to encrypt
the copy with a new KMS encryption key. If you don't specify a value for
<code>KmsKeyId</code>, then the copy of the DB cluster snapshot is
encrypted with the same KMS key as the source DB cluster snapshot.</p>
<p>If you copy an encrypted DB cluster snapshot that is shared from
another Amazon account, then you must specify a value for
<code>KmsKeyId</code>.</p>
<p>KMS encryption keys are specific to the Amazon Region that they are
created in, and you can't use encryption keys from one Amazon Region in
another Amazon Region.</p>
<p>You cannot encrypt an unencrypted DB cluster snapshot when you copy
it. If you try to copy an unencrypted DB cluster snapshot and specify a
value for the KmsKeyId parameter, an error is returned.</p></td>
</tr>
<tr class="even">
<td><code
id="neptune_copy_db_cluster_snapshot_:_PreSignedUrl">PreSignedUrl</code></td>
<td><p>Not currently supported.</p></td>
</tr>
<tr class="odd">
<td><code
id="neptune_copy_db_cluster_snapshot_:_CopyTags">CopyTags</code></td>
<td><p>True to copy all tags from the source DB cluster snapshot to the
target DB cluster snapshot, and otherwise false. The default is
false.</p></td>
</tr>
<tr class="even">
<td><code id="neptune_copy_db_cluster_snapshot_:_Tags">Tags</code></td>
<td><p>The tags to assign to the new DB cluster snapshot copy.</p></td>
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
        AllocatedStorage = 123,
        Status = "string",
        Port = 123,
        VpcId = "string",
        ClusterCreateTime = as.POSIXct(
          "2015-01-01"
        ),
        MasterUsername = "string",
        EngineVersion = "string",
        LicenseModel = "string",
        SnapshotType = "string",
        PercentProgress = 123,
        StorageEncrypted = TRUE|FALSE,
        KmsKeyId = "string",
        DBClusterSnapshotArn = "string",
        SourceDBClusterSnapshotArn = "string",
        IAMDatabaseAuthenticationEnabled = TRUE|FALSE
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
