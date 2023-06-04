<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>memorydb_delete_cluster</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes a cluster

### Description

Deletes a cluster. It also deletes all associated nodes and node
endpoints

### Usage

    memorydb_delete_cluster(ClusterName, FinalSnapshotName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="memorydb_delete_cluster_:_ClusterName">ClusterName</code></td>
<td><p>[required] The name of the cluster to be deleted</p></td>
</tr>
<tr class="even">
<td><code
id="memorydb_delete_cluster_:_FinalSnapshotName">FinalSnapshotName</code></td>
<td><p>The user-supplied name of a final cluster snapshot. This is the
unique name that identifies the snapshot. MemoryDB creates the snapshot,
and then deletes the cluster immediately afterward.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Cluster = list(
        Name = "string",
        Description = "string",
        Status = "string",
        PendingUpdates = list(
          Resharding = list(
            SlotMigration = list(
              ProgressPercentage = 123.0
            )
          ),
          ACLs = list(
            ACLToApply = "string"
          ),
          ServiceUpdates = list(
            list(
              ServiceUpdateName = "string",
              Status = "available"|"in-progress"|"complete"|"scheduled"
            )
          )
        ),
        NumberOfShards = 123,
        Shards = list(
          list(
            Name = "string",
            Status = "string",
            Slots = "string",
            Nodes = list(
              list(
                Name = "string",
                Status = "string",
                AvailabilityZone = "string",
                CreateTime = as.POSIXct(
                  "2015-01-01"
                ),
                Endpoint = list(
                  Address = "string",
                  Port = 123
                )
              )
            ),
            NumberOfNodes = 123
          )
        ),
        AvailabilityMode = "singleaz"|"multiaz",
        ClusterEndpoint = list(
          Address = "string",
          Port = 123
        ),
        NodeType = "string",
        EngineVersion = "string",
        EnginePatchVersion = "string",
        ParameterGroupName = "string",
        ParameterGroupStatus = "string",
        SecurityGroups = list(
          list(
            SecurityGroupId = "string",
            Status = "string"
          )
        ),
        SubnetGroupName = "string",
        TLSEnabled = TRUE|FALSE,
        KmsKeyId = "string",
        ARN = "string",
        SnsTopicArn = "string",
        SnsTopicStatus = "string",
        SnapshotRetentionLimit = 123,
        MaintenanceWindow = "string",
        SnapshotWindow = "string",
        ACLName = "string",
        AutoMinorVersionUpgrade = TRUE|FALSE,
        DataTiering = "true"|"false"
      )
    )

### Request syntax

    svc$delete_cluster(
      ClusterName = "string",
      FinalSnapshotName = "string"
    )
