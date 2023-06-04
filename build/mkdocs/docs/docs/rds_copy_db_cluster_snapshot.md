<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>rds_copy_db_cluster_snapshot</td>
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

You can copy an encrypted DB cluster snapshot from another Amazon Web
Services Region. In that case, the Amazon Web Services Region where you
call the `copy_db_cluster_snapshot` operation is the destination Amazon
Web Services Region for the encrypted DB cluster snapshot to be copied
to. To copy an encrypted DB cluster snapshot from another Amazon Web
Services Region, you must provide the following values:

-   `KmsKeyId` - The Amazon Web Services Key Management System (Amazon
    Web Services KMS) key identifier for the key to use to encrypt the
    copy of the DB cluster snapshot in the destination Amazon Web
    Services Region.

-   `TargetDBClusterSnapshotIdentifier` - The identifier for the new
    copy of the DB cluster snapshot in the destination Amazon Web
    Services Region.

-   `SourceDBClusterSnapshotIdentifier` - The DB cluster snapshot
    identifier for the encrypted DB cluster snapshot to be copied. This
    identifier must be in the ARN format for the source Amazon Web
    Services Region and is the same value as the
    `SourceDBClusterSnapshotIdentifier` in the presigned URL.

To cancel the copy operation once it is in progress, delete the target
DB cluster snapshot identified by `TargetDBClusterSnapshotIdentifier`
while that DB cluster snapshot is in "copying" status.

For more information on copying encrypted Amazon Aurora DB cluster
snapshots from one Amazon Web Services Region to another, see [Copying a
Snapshot](https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/aurora-copy-snapshot.html)
in the *Amazon Aurora User Guide*.

For more information on Amazon Aurora DB clusters, see [What is Amazon
Aurora?](https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/CHAP_AuroraOverview.html)
in the *Amazon Aurora User Guide*.

For more information on Multi-AZ DB clusters, see [Multi-AZ DB cluster
deployments](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/multi-az-db-clusters-concepts.html)
in the *Amazon RDS User Guide*.

### Usage

    rds_copy_db_cluster_snapshot(SourceDBClusterSnapshotIdentifier,
      TargetDBClusterSnapshotIdentifier, KmsKeyId, PreSignedUrl, CopyTags,
      Tags, SourceRegion)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="rds_copy_db_cluster_snapshot_:_SourceDBClusterSnapshotIdentifier">SourceDBClusterSnapshotIdentifier</code></td>
<td><p>[required] The identifier of the DB cluster snapshot to copy.
This parameter isn't case-sensitive.</p>
<p>You can't copy an encrypted, shared DB cluster snapshot from one
Amazon Web Services Region to another.</p>
<p>Constraints:</p>
<ul>
<li><p>Must specify a valid system snapshot in the "available"
state.</p></li>
<li><p>If the source snapshot is in the same Amazon Web Services Region
as the copy, specify a valid DB snapshot identifier.</p></li>
<li><p>If the source snapshot is in a different Amazon Web Services
Region than the copy, specify a valid DB cluster snapshot ARN. For more
information, go to <a
href="https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/aurora-copy-snapshot.html#USER_CopySnapshot.AcrossRegions">Copying
Snapshots Across Amazon Web Services Regions</a> in the <em>Amazon
Aurora User Guide</em>.</p></li>
</ul>
<p>Example: <code>my-cluster-snapshot1</code></p></td>
</tr>
<tr class="even">
<td><code
id="rds_copy_db_cluster_snapshot_:_TargetDBClusterSnapshotIdentifier">TargetDBClusterSnapshotIdentifier</code></td>
<td><p>[required] The identifier of the new DB cluster snapshot to
create from the source DB cluster snapshot. This parameter isn't
case-sensitive.</p>
<p>Constraints:</p>
<ul>
<li><p>Must contain from 1 to 63 letters, numbers, or hyphens.</p></li>
<li><p>First character must be a letter.</p></li>
<li><p>Can't end with a hyphen or contain two consecutive
hyphens.</p></li>
</ul>
<p>Example: <code>my-cluster-snapshot2</code></p></td>
</tr>
<tr class="odd">
<td><code
id="rds_copy_db_cluster_snapshot_:_KmsKeyId">KmsKeyId</code></td>
<td><p>The Amazon Web Services KMS key identifier for an encrypted DB
cluster snapshot. The Amazon Web Services KMS key identifier is the key
ARN, key ID, alias ARN, or alias name for the Amazon Web Services KMS
key.</p>
<p>If you copy an encrypted DB cluster snapshot from your Amazon Web
Services account, you can specify a value for <code>KmsKeyId</code> to
encrypt the copy with a new KMS key. If you don't specify a value for
<code>KmsKeyId</code>, then the copy of the DB cluster snapshot is
encrypted with the same KMS key as the source DB cluster snapshot.</p>
<p>If you copy an encrypted DB cluster snapshot that is shared from
another Amazon Web Services account, then you must specify a value for
<code>KmsKeyId</code>.</p>
<p>To copy an encrypted DB cluster snapshot to another Amazon Web
Services Region, you must set <code>KmsKeyId</code> to the Amazon Web
Services KMS key identifier you want to use to encrypt the copy of the
DB cluster snapshot in the destination Amazon Web Services Region. KMS
keys are specific to the Amazon Web Services Region that they are
created in, and you can't use KMS keys from one Amazon Web Services
Region in another Amazon Web Services Region.</p>
<p>If you copy an unencrypted DB cluster snapshot and specify a value
for the <code>KmsKeyId</code> parameter, an error is returned.</p></td>
</tr>
<tr class="even">
<td><code
id="rds_copy_db_cluster_snapshot_:_PreSignedUrl">PreSignedUrl</code></td>
<td><p>When you are copying a DB cluster snapshot from one Amazon Web
Services GovCloud (US) Region to another, the URL that contains a
Signature Version 4 signed request for the
<code>copy_db_cluster_snapshot</code> API operation in the Amazon Web
Services Region that contains the source DB cluster snapshot to copy.
Use the <code>PreSignedUrl</code> parameter when copying an encrypted DB
cluster snapshot from another Amazon Web Services Region. Don't specify
<code>PreSignedUrl</code> when copying an encrypted DB cluster snapshot
in the same Amazon Web Services Region.</p>
<p>This setting applies only to Amazon Web Services GovCloud (US)
Regions. It's ignored in other Amazon Web Services Regions.</p>
<p>The presigned URL must be a valid request for the
<code>copy_db_cluster_snapshot</code> API operation that can run in the
source Amazon Web Services Region that contains the encrypted DB cluster
snapshot to copy. The presigned URL request must contain the following
parameter values:</p>
<ul>
<li><p><code>KmsKeyId</code> - The KMS key identifier for the KMS key to
use to encrypt the copy of the DB cluster snapshot in the destination
Amazon Web Services Region. This is the same identifier for both the
<code>copy_db_cluster_snapshot</code> operation that is called in the
destination Amazon Web Services Region, and the operation contained in
the presigned URL.</p></li>
<li><p><code>DestinationRegion</code> - The name of the Amazon Web
Services Region that the DB cluster snapshot is to be created
in.</p></li>
<li><p><code>SourceDBClusterSnapshotIdentifier</code> - The DB cluster
snapshot identifier for the encrypted DB cluster snapshot to be copied.
This identifier must be in the Amazon Resource Name (ARN) format for the
source Amazon Web Services Region. For example, if you are copying an
encrypted DB cluster snapshot from the us-west-2 Amazon Web Services
Region, then your <code>SourceDBClusterSnapshotIdentifier</code> looks
like the following example:
<code>arn:aws:rds:us-west-2:123456789012:cluster-snapshot:aurora-cluster1-snapshot-20161115</code>.</p></li>
</ul>
<p>To learn how to generate a Signature Version 4 signed request, see <a
href="https://docs.aws.amazon.com/AmazonS3/latest/API/sigv4-query-string-auth.html">Authenticating
Requests: Using Query Parameters (Amazon Web Services Signature Version
4)</a> and <a
href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html">Signature
Version 4 Signing Process</a>.</p>
<p>If you are using an Amazon Web Services SDK tool or the CLI, you can
specify <code>SourceRegion</code> (or <code>--source-region</code> for
the CLI) instead of specifying <code>PreSignedUrl</code> manually.
Specifying <code>SourceRegion</code> autogenerates a presigned URL that
is a valid request for the operation that can run in the source Amazon
Web Services Region.</p>
<p>If you supply a value for this operation's <code>SourceRegion</code>
parameter, a pre-signed URL will be calculated on your behalf.</p></td>
</tr>
<tr class="odd">
<td><code
id="rds_copy_db_cluster_snapshot_:_CopyTags">CopyTags</code></td>
<td><p>A value that indicates whether to copy all tags from the source
DB cluster snapshot to the target DB cluster snapshot. By default, tags
are not copied.</p></td>
</tr>
<tr class="even">
<td><code id="rds_copy_db_cluster_snapshot_:_Tags">Tags</code></td>
<td></td>
</tr>
<tr class="odd">
<td><code
id="rds_copy_db_cluster_snapshot_:_SourceRegion">SourceRegion</code></td>
<td><p>The ID of the region that contains the snapshot to be
copied.</p></td>
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
        EngineMode = "string",
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
        IAMDatabaseAuthenticationEnabled = TRUE|FALSE,
        TagList = list(
          list(
            Key = "string",
            Value = "string"
          )
        ),
        DBSystemId = "string",
        StorageType = "string"
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
      ),
      SourceRegion = "string"
    )
