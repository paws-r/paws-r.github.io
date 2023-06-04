<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>memorydb_create_cluster</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a cluster

### Description

Creates a cluster. All nodes in the cluster run the same
protocol-compliant engine software.

### Usage

    memorydb_create_cluster(ClusterName, NodeType, ParameterGroupName,
      Description, NumShards, NumReplicasPerShard, SubnetGroupName,
      SecurityGroupIds, MaintenanceWindow, Port, SnsTopicArn, TLSEnabled,
      KmsKeyId, SnapshotArns, SnapshotName, SnapshotRetentionLimit, Tags,
      SnapshotWindow, ACLName, EngineVersion, AutoMinorVersionUpgrade,
      DataTiering)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="memorydb_create_cluster_:_ClusterName">ClusterName</code></td>
<td><p>[required] The name of the cluster. This value must be unique as
it also serves as the cluster identifier.</p></td>
</tr>
<tr class="even">
<td><code id="memorydb_create_cluster_:_NodeType">NodeType</code></td>
<td><p>[required] The compute and memory capacity of the nodes in the
cluster.</p></td>
</tr>
<tr class="odd">
<td><code
id="memorydb_create_cluster_:_ParameterGroupName">ParameterGroupName</code></td>
<td><p>The name of the parameter group associated with the
cluster.</p></td>
</tr>
<tr class="even">
<td><code
id="memorydb_create_cluster_:_Description">Description</code></td>
<td><p>An optional description of the cluster.</p></td>
</tr>
<tr class="odd">
<td><code id="memorydb_create_cluster_:_NumShards">NumShards</code></td>
<td><p>The number of shards the cluster will contain. The default value
is 1.</p></td>
</tr>
<tr class="even">
<td><code
id="memorydb_create_cluster_:_NumReplicasPerShard">NumReplicasPerShard</code></td>
<td><p>The number of replicas to apply to each shard. The default value
is 1. The maximum is 5.</p></td>
</tr>
<tr class="odd">
<td><code
id="memorydb_create_cluster_:_SubnetGroupName">SubnetGroupName</code></td>
<td><p>The name of the subnet group to be used for the cluster.</p></td>
</tr>
<tr class="even">
<td><code
id="memorydb_create_cluster_:_SecurityGroupIds">SecurityGroupIds</code></td>
<td><p>A list of security group names to associate with this
cluster.</p></td>
</tr>
<tr class="odd">
<td><code
id="memorydb_create_cluster_:_MaintenanceWindow">MaintenanceWindow</code></td>
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
<tr class="even">
<td><code id="memorydb_create_cluster_:_Port">Port</code></td>
<td><p>The port number on which each of the nodes accepts
connections.</p></td>
</tr>
<tr class="odd">
<td><code
id="memorydb_create_cluster_:_SnsTopicArn">SnsTopicArn</code></td>
<td><p>The Amazon Resource Name (ARN) of the Amazon Simple Notification
Service (SNS) topic to which notifications are sent.</p></td>
</tr>
<tr class="even">
<td><code
id="memorydb_create_cluster_:_TLSEnabled">TLSEnabled</code></td>
<td><p>A flag to enable in-transit encryption on the cluster.</p></td>
</tr>
<tr class="odd">
<td><code id="memorydb_create_cluster_:_KmsKeyId">KmsKeyId</code></td>
<td><p>The ID of the KMS key used to encrypt the cluster.</p></td>
</tr>
<tr class="even">
<td><code
id="memorydb_create_cluster_:_SnapshotArns">SnapshotArns</code></td>
<td><p>A list of Amazon Resource Names (ARN) that uniquely identify the
RDB snapshot files stored in Amazon S3. The snapshot files are used to
populate the new cluster. The Amazon S3 object name in the ARN cannot
contain any commas.</p></td>
</tr>
<tr class="odd">
<td><code
id="memorydb_create_cluster_:_SnapshotName">SnapshotName</code></td>
<td><p>The name of a snapshot from which to restore data into the new
cluster. The snapshot status changes to restoring while the new cluster
is being created.</p></td>
</tr>
<tr class="even">
<td><code
id="memorydb_create_cluster_:_SnapshotRetentionLimit">SnapshotRetentionLimit</code></td>
<td><p>The number of days for which MemoryDB retains automatic snapshots
before deleting them. For example, if you set SnapshotRetentionLimit to
5, a snapshot that was taken today is retained for 5 days before being
deleted.</p></td>
</tr>
<tr class="odd">
<td><code id="memorydb_create_cluster_:_Tags">Tags</code></td>
<td><p>A list of tags to be added to this resource. Tags are
comma-separated key,value pairs (e.g. Key=myKey, Value=myKeyValue. You
can include multiple tags as shown following: Key=myKey,
Value=myKeyValue Key=mySecondKey, Value=mySecondKeyValue.</p></td>
</tr>
<tr class="even">
<td><code
id="memorydb_create_cluster_:_SnapshotWindow">SnapshotWindow</code></td>
<td><p>The daily time range (in UTC) during which MemoryDB begins taking
a daily snapshot of your shard.</p>
<p>Example: 05:00-09:00</p>
<p>If you do not specify this parameter, MemoryDB automatically chooses
an appropriate time range.</p></td>
</tr>
<tr class="odd">
<td><code id="memorydb_create_cluster_:_ACLName">ACLName</code></td>
<td><p>[required] The name of the Access Control List to associate with
the cluster.</p></td>
</tr>
<tr class="even">
<td><code
id="memorydb_create_cluster_:_EngineVersion">EngineVersion</code></td>
<td><p>The version number of the Redis engine to be used for the
cluster.</p></td>
</tr>
<tr class="odd">
<td><code
id="memorydb_create_cluster_:_AutoMinorVersionUpgrade">AutoMinorVersionUpgrade</code></td>
<td><p>When set to true, the cluster will automatically receive minor
engine version upgrades after launch.</p></td>
</tr>
<tr class="even">
<td><code
id="memorydb_create_cluster_:_DataTiering">DataTiering</code></td>
<td><p>Enables data tiering. Data tiering is only supported for clusters
using the r6gd node type. This parameter must be set when using r6gd
nodes. For more information, see <a
href="https://docs.aws.amazon.com/memorydb/latest/devguide/data-tiering.html">Data
tiering</a>.</p></td>
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

    svc$create_cluster(
      ClusterName = "string",
      NodeType = "string",
      ParameterGroupName = "string",
      Description = "string",
      NumShards = 123,
      NumReplicasPerShard = 123,
      SubnetGroupName = "string",
      SecurityGroupIds = list(
        "string"
      ),
      MaintenanceWindow = "string",
      Port = 123,
      SnsTopicArn = "string",
      TLSEnabled = TRUE|FALSE,
      KmsKeyId = "string",
      SnapshotArns = list(
        "string"
      ),
      SnapshotName = "string",
      SnapshotRetentionLimit = 123,
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      ),
      SnapshotWindow = "string",
      ACLName = "string",
      EngineVersion = "string",
      AutoMinorVersionUpgrade = TRUE|FALSE,
      DataTiering = TRUE|FALSE
    )
