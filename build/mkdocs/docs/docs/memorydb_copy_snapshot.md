<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>memorydb_copy_snapshot</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Makes a copy of an existing snapshot

### Description

Makes a copy of an existing snapshot.

### Usage

    memorydb_copy_snapshot(SourceSnapshotName, TargetSnapshotName,
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
id="memorydb_copy_snapshot_:_SourceSnapshotName">SourceSnapshotName</code></td>
<td><p>[required] The name of an existing snapshot from which to make a
copy.</p></td>
</tr>
<tr class="even">
<td><code
id="memorydb_copy_snapshot_:_TargetSnapshotName">TargetSnapshotName</code></td>
<td><p>[required] A name for the snapshot copy. MemoryDB does not permit
overwriting a snapshot, therefore this name must be unique within its
context - MemoryDB or an Amazon S3 bucket if exporting.</p></td>
</tr>
<tr class="odd">
<td><code
id="memorydb_copy_snapshot_:_TargetBucket">TargetBucket</code></td>
<td><p>The Amazon S3 bucket to which the snapshot is exported. This
parameter is used only when exporting a snapshot for external access.
When using this parameter to export a snapshot, be sure MemoryDB has the
needed permissions to this S3 bucket. For more information, see <a
href="https://docs.aws.amazon.com/memorydb/latest/devguide/snapshots-exporting.html">Step
2: Grant MemoryDB Access to Your Amazon S3 Bucket</a>.</p></td>
</tr>
<tr class="even">
<td><code id="memorydb_copy_snapshot_:_KmsKeyId">KmsKeyId</code></td>
<td><p>The ID of the KMS key used to encrypt the target
snapshot.</p></td>
</tr>
<tr class="odd">
<td><code id="memorydb_copy_snapshot_:_Tags">Tags</code></td>
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
        Name = "string",
        Status = "string",
        Source = "string",
        KmsKeyId = "string",
        ARN = "string",
        ClusterConfiguration = list(
          Name = "string",
          Description = "string",
          NodeType = "string",
          EngineVersion = "string",
          MaintenanceWindow = "string",
          TopicArn = "string",
          Port = 123,
          ParameterGroupName = "string",
          SubnetGroupName = "string",
          VpcId = "string",
          SnapshotRetentionLimit = 123,
          SnapshotWindow = "string",
          NumShards = 123,
          Shards = list(
            list(
              Name = "string",
              Configuration = list(
                Slots = "string",
                ReplicaCount = 123
              ),
              Size = "string",
              SnapshotCreationTime = as.POSIXct(
                "2015-01-01"
              )
            )
          )
        ),
        DataTiering = "true"|"false"
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
