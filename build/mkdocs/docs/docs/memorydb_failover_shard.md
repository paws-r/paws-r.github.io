<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>memorydb_failover_shard</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Used to failover a shard

### Description

Used to failover a shard. This API is designed for testing the behavior
of your application in case of MemoryDB failover. It is not designed to
be used as a production-level tool for initiating a failover to overcome
a problem you may have with the cluster. Moreover, in certain conditions
such as large scale operational events, Amazon may block this API.

### Usage

    memorydb_failover_shard(ClusterName, ShardName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="memorydb_failover_shard_:_ClusterName">ClusterName</code></td>
<td><p>[required] The cluster being failed over</p></td>
</tr>
<tr class="even">
<td><code id="memorydb_failover_shard_:_ShardName">ShardName</code></td>
<td><p>[required] The name of the shard</p></td>
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

    svc$failover_shard(
      ClusterName = "string",
      ShardName = "string"
    )
