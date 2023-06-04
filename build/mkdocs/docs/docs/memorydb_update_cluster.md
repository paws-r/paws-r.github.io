<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>memorydb_update_cluster</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Modifies the settings for a cluster

### Description

Modifies the settings for a cluster. You can use this operation to
change one or more cluster configuration settings by specifying the
settings and the new values.

### Usage

    memorydb_update_cluster(ClusterName, Description, SecurityGroupIds,
      MaintenanceWindow, SnsTopicArn, SnsTopicStatus, ParameterGroupName,
      SnapshotWindow, SnapshotRetentionLimit, NodeType, EngineVersion,
      ReplicaConfiguration, ShardConfiguration, ACLName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="memorydb_update_cluster_:_ClusterName">ClusterName</code></td>
<td><p>[required] The name of the cluster to update</p></td>
</tr>
<tr class="even">
<td><code
id="memorydb_update_cluster_:_Description">Description</code></td>
<td><p>The description of the cluster to update</p></td>
</tr>
<tr class="odd">
<td><code
id="memorydb_update_cluster_:_SecurityGroupIds">SecurityGroupIds</code></td>
<td><p>The SecurityGroupIds to update</p></td>
</tr>
<tr class="even">
<td><code
id="memorydb_update_cluster_:_MaintenanceWindow">MaintenanceWindow</code></td>
<td><p>Specifies the weekly time range during which maintenance on the
cluster is performed. It is specified as a range in the format
ddd:hh24:mi-ddd:hh24:mi (24H Clock UTC). The minimum maintenance window
is a 60 minute period.</p>
<p>Valid values for <code>ddd</code> are:</p>
<ul>
<li><p><code>sun</code></p></li>
<li><p><code>mon</code></p></li>
<li><p><code>tue</code></p></li>
<li><p><code>wed</code></p></li>
<li><p><code>thu</code></p></li>
<li><p><code>fri</code></p></li>
<li><p><code>sat</code></p></li>
</ul>
<p>Example: <code>sun:23:00-mon:01:30</code></p></td>
</tr>
<tr class="odd">
<td><code
id="memorydb_update_cluster_:_SnsTopicArn">SnsTopicArn</code></td>
<td><p>The SNS topic ARN to update</p></td>
</tr>
<tr class="even">
<td><code
id="memorydb_update_cluster_:_SnsTopicStatus">SnsTopicStatus</code></td>
<td><p>The status of the Amazon SNS notification topic. Notifications
are sent only if the status is active.</p></td>
</tr>
<tr class="odd">
<td><code
id="memorydb_update_cluster_:_ParameterGroupName">ParameterGroupName</code></td>
<td><p>The name of the parameter group to update</p></td>
</tr>
<tr class="even">
<td><code
id="memorydb_update_cluster_:_SnapshotWindow">SnapshotWindow</code></td>
<td><p>The daily time range (in UTC) during which MemoryDB begins taking
a daily snapshot of your cluster.</p></td>
</tr>
<tr class="odd">
<td><code
id="memorydb_update_cluster_:_SnapshotRetentionLimit">SnapshotRetentionLimit</code></td>
<td><p>The number of days for which MemoryDB retains automatic cluster
snapshots before deleting them. For example, if you set
SnapshotRetentionLimit to 5, a snapshot that was taken today is retained
for 5 days before being deleted.</p></td>
</tr>
<tr class="even">
<td><code id="memorydb_update_cluster_:_NodeType">NodeType</code></td>
<td><p>A valid node type that you want to scale this cluster up or down
to.</p></td>
</tr>
<tr class="odd">
<td><code
id="memorydb_update_cluster_:_EngineVersion">EngineVersion</code></td>
<td><p>The upgraded version of the engine to be run on the nodes. You
can upgrade to a newer engine version, but you cannot downgrade to an
earlier engine version. If you want to use an earlier engine version,
you must delete the existing cluster and create it anew with the earlier
engine version.</p></td>
</tr>
<tr class="even">
<td><code
id="memorydb_update_cluster_:_ReplicaConfiguration">ReplicaConfiguration</code></td>
<td><p>The number of replicas that will reside in each shard</p></td>
</tr>
<tr class="odd">
<td><code
id="memorydb_update_cluster_:_ShardConfiguration">ShardConfiguration</code></td>
<td><p>The number of shards in the cluster</p></td>
</tr>
<tr class="even">
<td><code id="memorydb_update_cluster_:_ACLName">ACLName</code></td>
<td><p>The Access Control List that is associated with the
cluster</p></td>
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

    svc$update_cluster(
      ClusterName = "string",
      Description = "string",
      SecurityGroupIds = list(
        "string"
      ),
      MaintenanceWindow = "string",
      SnsTopicArn = "string",
      SnsTopicStatus = "string",
      ParameterGroupName = "string",
      SnapshotWindow = "string",
      SnapshotRetentionLimit = 123,
      NodeType = "string",
      EngineVersion = "string",
      ReplicaConfiguration = list(
        ReplicaCount = 123
      ),
      ShardConfiguration = list(
        ShardCount = 123
      ),
      ACLName = "string"
    )
