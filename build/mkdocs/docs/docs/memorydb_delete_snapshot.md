<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>memorydb_delete_snapshot</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes an existing snapshot

### Description

Deletes an existing snapshot. When you receive a successful response
from this operation, MemoryDB immediately begins deleting the snapshot;
you cannot cancel or revert this operation.

### Usage

    memorydb_delete_snapshot(SnapshotName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="memorydb_delete_snapshot_:_SnapshotName">SnapshotName</code></td>
<td><p>[required] The name of the snapshot to delete</p></td>
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

    svc$delete_snapshot(
      SnapshotName = "string"
    )
