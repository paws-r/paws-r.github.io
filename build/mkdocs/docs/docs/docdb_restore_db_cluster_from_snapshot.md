<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>docdb_restore_db_cluster_from_snapshot</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a new cluster from a snapshot or cluster snapshot

### Description

Creates a new cluster from a snapshot or cluster snapshot.

If a snapshot is specified, the target cluster is created from the
source DB snapshot with a default configuration and default security
group.

If a cluster snapshot is specified, the target cluster is created from
the source cluster restore point with the same configuration as the
original source DB cluster, except that the new cluster is created with
the default security group.

### Usage

    docdb_restore_db_cluster_from_snapshot(AvailabilityZones,
      DBClusterIdentifier, SnapshotIdentifier, Engine, EngineVersion, Port,
      DBSubnetGroupName, VpcSecurityGroupIds, Tags, KmsKeyId,
      EnableCloudwatchLogsExports, DeletionProtection,
      DBClusterParameterGroupName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="docdb_restore_db_cluster_from_snapshot_:_AvailabilityZones">AvailabilityZones</code></td>
<td><p>Provides the list of Amazon EC2 Availability Zones that instances
in the restored DB cluster can be created in.</p></td>
</tr>
<tr class="even">
<td><code
id="docdb_restore_db_cluster_from_snapshot_:_DBClusterIdentifier">DBClusterIdentifier</code></td>
<td><p>[required] The name of the cluster to create from the snapshot or
cluster snapshot. This parameter isn't case sensitive.</p>
<p>Constraints:</p>
<ul>
<li><p>Must contain from 1 to 63 letters, numbers, or hyphens.</p></li>
<li><p>The first character must be a letter.</p></li>
<li><p>Cannot end with a hyphen or contain two consecutive
hyphens.</p></li>
</ul>
<p>Example: <code>my-snapshot-id</code></p></td>
</tr>
<tr class="odd">
<td><code
id="docdb_restore_db_cluster_from_snapshot_:_SnapshotIdentifier">SnapshotIdentifier</code></td>
<td><p>[required] The identifier for the snapshot or cluster snapshot to
restore from.</p>
<p>You can use either the name or the Amazon Resource Name (ARN) to
specify a cluster snapshot. However, you can use only the ARN to specify
a snapshot.</p>
<p>Constraints:</p>
<ul>
<li><p>Must match the identifier of an existing snapshot.</p></li>
</ul></td>
</tr>
<tr class="even">
<td><code
id="docdb_restore_db_cluster_from_snapshot_:_Engine">Engine</code></td>
<td><p>[required] The database engine to use for the new cluster.</p>
<p>Default: The same as source.</p>
<p>Constraint: Must be compatible with the engine of the
source.</p></td>
</tr>
<tr class="odd">
<td><code
id="docdb_restore_db_cluster_from_snapshot_:_EngineVersion">EngineVersion</code></td>
<td><p>The version of the database engine to use for the new
cluster.</p></td>
</tr>
<tr class="even">
<td><code
id="docdb_restore_db_cluster_from_snapshot_:_Port">Port</code></td>
<td><p>The port number on which the new cluster accepts connections.</p>
<p>Constraints: Must be a value from <code>1150</code> to
<code>65535</code>.</p>
<p>Default: The same port as the original cluster.</p></td>
</tr>
<tr class="odd">
<td><code
id="docdb_restore_db_cluster_from_snapshot_:_DBSubnetGroupName">DBSubnetGroupName</code></td>
<td><p>The name of the subnet group to use for the new cluster.</p>
<p>Constraints: If provided, must match the name of an existing
<code>DBSubnetGroup</code>.</p>
<p>Example: <code>mySubnetgroup</code></p></td>
</tr>
<tr class="even">
<td><code
id="docdb_restore_db_cluster_from_snapshot_:_VpcSecurityGroupIds">VpcSecurityGroupIds</code></td>
<td><p>A list of virtual private cloud (VPC) security groups that the
new cluster will belong to.</p></td>
</tr>
<tr class="odd">
<td><code
id="docdb_restore_db_cluster_from_snapshot_:_Tags">Tags</code></td>
<td><p>The tags to be assigned to the restored cluster.</p></td>
</tr>
<tr class="even">
<td><code
id="docdb_restore_db_cluster_from_snapshot_:_KmsKeyId">KmsKeyId</code></td>
<td><p>The KMS key identifier to use when restoring an encrypted cluster
from a DB snapshot or cluster snapshot.</p>
<p>The KMS key identifier is the Amazon Resource Name (ARN) for the KMS
encryption key. If you are restoring a cluster with the same Amazon Web
Services account that owns the KMS encryption key used to encrypt the
new cluster, then you can use the KMS key alias instead of the ARN for
the KMS encryption key.</p>
<p>If you do not specify a value for the <code>KmsKeyId</code>
parameter, then the following occurs:</p>
<ul>
<li><p>If the snapshot or cluster snapshot in
<code>SnapshotIdentifier</code> is encrypted, then the restored cluster
is encrypted using the KMS key that was used to encrypt the snapshot or
the cluster snapshot.</p></li>
<li><p>If the snapshot or the cluster snapshot in
<code>SnapshotIdentifier</code> is not encrypted, then the restored DB
cluster is not encrypted.</p></li>
</ul></td>
</tr>
<tr class="odd">
<td><code
id="docdb_restore_db_cluster_from_snapshot_:_EnableCloudwatchLogsExports">EnableCloudwatchLogsExports</code></td>
<td><p>A list of log types that must be enabled for exporting to Amazon
CloudWatch Logs.</p></td>
</tr>
<tr class="even">
<td><code
id="docdb_restore_db_cluster_from_snapshot_:_DeletionProtection">DeletionProtection</code></td>
<td><p>Specifies whether this cluster can be deleted. If
<code>DeletionProtection</code> is enabled, the cluster cannot be
deleted unless it is modified and <code>DeletionProtection</code> is
disabled. <code>DeletionProtection</code> protects clusters from being
accidentally deleted.</p></td>
</tr>
<tr class="odd">
<td><code
id="docdb_restore_db_cluster_from_snapshot_:_DBClusterParameterGroupName">DBClusterParameterGroupName</code></td>
<td><p>The name of the DB cluster parameter group to associate with this
DB cluster.</p>
<p><em>Type:</em> String.       <em>Required:</em> No.</p>
<p>If this argument is omitted, the default DB cluster parameter group
is used. If supplied, must match the name of an existing default DB
cluster parameter group. The string must consist of from 1 to 255
letters, numbers or hyphens. Its first character must be a letter, and
it cannot end with a hyphen or contain two consecutive hyphens.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      DBCluster = list(
        AvailabilityZones = list(
          "string"
        ),
        BackupRetentionPeriod = 123,
        DBClusterIdentifier = "string",
        DBClusterParameterGroup = "string",
        DBSubnetGroup = "string",
        Status = "string",
        PercentProgress = "string",
        EarliestRestorableTime = as.POSIXct(
          "2015-01-01"
        ),
        Endpoint = "string",
        ReaderEndpoint = "string",
        MultiAZ = TRUE|FALSE,
        Engine = "string",
        EngineVersion = "string",
        LatestRestorableTime = as.POSIXct(
          "2015-01-01"
        ),
        Port = 123,
        MasterUsername = "string",
        PreferredBackupWindow = "string",
        PreferredMaintenanceWindow = "string",
        ReplicationSourceIdentifier = "string",
        ReadReplicaIdentifiers = list(
          "string"
        ),
        DBClusterMembers = list(
          list(
            DBInstanceIdentifier = "string",
            IsClusterWriter = TRUE|FALSE,
            DBClusterParameterGroupStatus = "string",
            PromotionTier = 123
          )
        ),
        VpcSecurityGroups = list(
          list(
            VpcSecurityGroupId = "string",
            Status = "string"
          )
        ),
        HostedZoneId = "string",
        StorageEncrypted = TRUE|FALSE,
        KmsKeyId = "string",
        DbClusterResourceId = "string",
        DBClusterArn = "string",
        AssociatedRoles = list(
          list(
            RoleArn = "string",
            Status = "string"
          )
        ),
        CloneGroupId = "string",
        ClusterCreateTime = as.POSIXct(
          "2015-01-01"
        ),
        EnabledCloudwatchLogsExports = list(
          "string"
        ),
        DeletionProtection = TRUE|FALSE
      )
    )

### Request syntax

    svc$restore_db_cluster_from_snapshot(
      AvailabilityZones = list(
        "string"
      ),
      DBClusterIdentifier = "string",
      SnapshotIdentifier = "string",
      Engine = "string",
      EngineVersion = "string",
      Port = 123,
      DBSubnetGroupName = "string",
      VpcSecurityGroupIds = list(
        "string"
      ),
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      ),
      KmsKeyId = "string",
      EnableCloudwatchLogsExports = list(
        "string"
      ),
      DeletionProtection = TRUE|FALSE,
      DBClusterParameterGroupName = "string"
    )
