<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>memorydb_create_snapshot</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a copy of an entire cluster at a specific moment in time

### Description

Creates a copy of an entire cluster at a specific moment in time.

### Usage

    memorydb_create_snapshot(ClusterName, SnapshotName, KmsKeyId, Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="memorydb_create_snapshot_:_ClusterName">ClusterName</code></td>
<td><p>[required] The snapshot is created from this cluster.</p></td>
</tr>
<tr class="even">
<td><code
id="memorydb_create_snapshot_:_SnapshotName">SnapshotName</code></td>
<td><p>[required] A name for the snapshot being created.</p></td>
</tr>
<tr class="odd">
<td><code id="memorydb_create_snapshot_:_KmsKeyId">KmsKeyId</code></td>
<td><p>The ID of the KMS key used to encrypt the snapshot.</p></td>
</tr>
<tr class="even">
<td><code id="memorydb_create_snapshot_:_Tags">Tags</code></td>
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

    svc$create_snapshot(
      ClusterName = "string",
      SnapshotName = "string",
      KmsKeyId = "string",
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      )
    )
