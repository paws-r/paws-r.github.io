<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>elasticache_copy_snapshot</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Makes a copy of an existing snapshot

### Description

Makes a copy of an existing snapshot.

This operation is valid for Redis only.

Users or groups that have permissions to use the `copy_snapshot`
operation can create their own Amazon S3 buckets and copy snapshots to
it. To control access to your snapshots, use an IAM policy to control
who has the ability to use the `copy_snapshot` operation. For more
information about using IAM to control the use of ElastiCache
operations, see [Exporting
Snapshots](https://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/backups-exporting.html)
and [Authentication & Access
Control](https://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/IAM.html).

You could receive the following error messages.

**Error Messages**

-   **Error Message:** The S3 bucket %s is outside of the region.

    **Solution:** Create an Amazon S3 bucket in the same region as your
    snapshot. For more information, see [Step 1: Create an Amazon S3
    Bucket](https://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/backups-exporting.html#backups-exporting-create-s3-bucket)
    in the ElastiCache User Guide.

-   **Error Message:** The S3 bucket %s does not exist.

    **Solution:** Create an Amazon S3 bucket in the same region as your
    snapshot. For more information, see [Step 1: Create an Amazon S3
    Bucket](https://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/backups-exporting.html#backups-exporting-create-s3-bucket)
    in the ElastiCache User Guide.

-   **Error Message:** The S3 bucket %s is not owned by the
    authenticated user.

    **Solution:** Create an Amazon S3 bucket in the same region as your
    snapshot. For more information, see [Step 1: Create an Amazon S3
    Bucket](https://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/backups-exporting.html#backups-exporting-create-s3-bucket)
    in the ElastiCache User Guide.

-   **Error Message:** The authenticated user does not have sufficient
    permissions to perform the desired activity.

    **Solution:** Contact your system administrator to get the needed
    permissions.

-   **Error Message:** The S3 bucket %s already contains an object with
    key %s.

    **Solution:** Give the `TargetSnapshotName` a new and unique value.
    If exporting a snapshot, you could alternatively create a new Amazon
    S3 bucket and use this same value for `TargetSnapshotName`.

-   **Error Message:** ElastiCache has not been granted READ permissions
    %s on the S3 Bucket.

    **Solution:** Add List and Read permissions on the bucket. For more
    information, see [Step 2: Grant ElastiCache Access to Your Amazon S3
    Bucket](https://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/backups-exporting.html#backups-exporting-grant-access)
    in the ElastiCache User Guide.

-   **Error Message:** ElastiCache has not been granted WRITE
    permissions %s on the S3 Bucket.

    **Solution:** Add Upload/Delete permissions on the bucket. For more
    information, see [Step 2: Grant ElastiCache Access to Your Amazon S3
    Bucket](https://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/backups-exporting.html#backups-exporting-grant-access)
    in the ElastiCache User Guide.

-   **Error Message:** ElastiCache has not been granted READ\_ACP
    permissions %s on the S3 Bucket.

    **Solution:** Add View Permissions on the bucket. For more
    information, see [Step 2: Grant ElastiCache Access to Your Amazon S3
    Bucket](https://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/backups-exporting.html#backups-exporting-grant-access)
    in the ElastiCache User Guide.

### Usage

    elasticache_copy_snapshot(SourceSnapshotName, TargetSnapshotName,
      TargetBucket, KmsKeyId, Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="elasticache_copy_snapshot_:_SourceSnapshotName">SourceSnapshotName</code></td>
<td><p>[required] The name of an existing snapshot from which to make a
copy.</p></td>
</tr>
<tr class="even">
<td><code
id="elasticache_copy_snapshot_:_TargetSnapshotName">TargetSnapshotName</code></td>
<td><p>[required] A name for the snapshot copy. ElastiCache does not
permit overwriting a snapshot, therefore this name must be unique within
its context - ElastiCache or an Amazon S3 bucket if exporting.</p></td>
</tr>
<tr class="odd">
<td><code
id="elasticache_copy_snapshot_:_TargetBucket">TargetBucket</code></td>
<td><p>The Amazon S3 bucket to which the snapshot is exported. This
parameter is used only when exporting a snapshot for external
access.</p>
<p>When using this parameter to export a snapshot, be sure Amazon
ElastiCache has the needed permissions to this S3 bucket. For more
information, see <a
href="https://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/backups-exporting.html#backups-exporting-grant-access">Step
2: Grant ElastiCache Access to Your Amazon S3 Bucket</a> in the
<em>Amazon ElastiCache User Guide</em>.</p>
<p>For more information, see <a
href="https://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/backups-exporting.html">Exporting
a Snapshot</a> in the <em>Amazon ElastiCache User Guide</em>.</p></td>
</tr>
<tr class="even">
<td><code id="elasticache_copy_snapshot_:_KmsKeyId">KmsKeyId</code></td>
<td><p>The ID of the KMS key used to encrypt the target
snapshot.</p></td>
</tr>
<tr class="odd">
<td><code id="elasticache_copy_snapshot_:_Tags">Tags</code></td>
<td><p>A list of tags to be added to this resource. A tag is a key-value
pair. A tag key must be accompanied by a tag value, although null is
accepted.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Snapshot = list(
        SnapshotName = "string",
        ReplicationGroupId = "string",
        ReplicationGroupDescription = "string",
        CacheClusterId = "string",
        SnapshotStatus = "string",
        SnapshotSource = "string",
        CacheNodeType = "string",
        Engine = "string",
        EngineVersion = "string",
        NumCacheNodes = 123,
        PreferredAvailabilityZone = "string",
        PreferredOutpostArn = "string",
        CacheClusterCreateTime = as.POSIXct(
          "2015-01-01"
        ),
        PreferredMaintenanceWindow = "string",
        TopicArn = "string",
        Port = 123,
        CacheParameterGroupName = "string",
        CacheSubnetGroupName = "string",
        VpcId = "string",
        AutoMinorVersionUpgrade = TRUE|FALSE,
        SnapshotRetentionLimit = 123,
        SnapshotWindow = "string",
        NumNodeGroups = 123,
        AutomaticFailover = "enabled"|"disabled"|"enabling"|"disabling",
        NodeSnapshots = list(
          list(
            CacheClusterId = "string",
            NodeGroupId = "string",
            CacheNodeId = "string",
            NodeGroupConfiguration = list(
              NodeGroupId = "string",
              Slots = "string",
              ReplicaCount = 123,
              PrimaryAvailabilityZone = "string",
              ReplicaAvailabilityZones = list(
                "string"
              ),
              PrimaryOutpostArn = "string",
              ReplicaOutpostArns = list(
                "string"
              )
            ),
            CacheSize = "string",
            CacheNodeCreateTime = as.POSIXct(
              "2015-01-01"
            ),
            SnapshotCreateTime = as.POSIXct(
              "2015-01-01"
            )
          )
        ),
        KmsKeyId = "string",
        ARN = "string",
        DataTiering = "enabled"|"disabled"
      )
    )

### Request syntax

    svc$copy_snapshot(
      SourceSnapshotName = "string",
      TargetSnapshotName = "string",
      TargetBucket = "string",
      KmsKeyId = "string",
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      )
    )
