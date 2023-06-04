<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>neptune_restore_db_cluster_from_snapshot</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a new DB cluster from a DB snapshot or DB cluster snapshot

### Description

Creates a new DB cluster from a DB snapshot or DB cluster snapshot.

If a DB snapshot is specified, the target DB cluster is created from the
source DB snapshot with a default configuration and default security
group.

If a DB cluster snapshot is specified, the target DB cluster is created
from the source DB cluster restore point with the same configuration as
the original source DB cluster, except that the new DB cluster is
created with the default security group.

### Usage

    neptune_restore_db_cluster_from_snapshot(AvailabilityZones,
      DBClusterIdentifier, SnapshotIdentifier, Engine, EngineVersion, Port,
      DBSubnetGroupName, DatabaseName, OptionGroupName, VpcSecurityGroupIds,
      Tags, KmsKeyId, EnableIAMDatabaseAuthentication,
      EnableCloudwatchLogsExports, DBClusterParameterGroupName,
      DeletionProtection, CopyTagsToSnapshot,
      ServerlessV2ScalingConfiguration)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="neptune_restore_db_cluster_from_snapshot_:_AvailabilityZones">AvailabilityZones</code></td>
<td><p>Provides the list of EC2 Availability Zones that instances in the
restored DB cluster can be created in.</p></td>
</tr>
<tr class="even">
<td><code
id="neptune_restore_db_cluster_from_snapshot_:_DBClusterIdentifier">DBClusterIdentifier</code></td>
<td><p>[required] The name of the DB cluster to create from the DB
snapshot or DB cluster snapshot. This parameter isn't
case-sensitive.</p>
<p>Constraints:</p>
<ul>
<li><p>Must contain from 1 to 63 letters, numbers, or hyphens</p></li>
<li><p>First character must be a letter</p></li>
<li><p>Cannot end with a hyphen or contain two consecutive
hyphens</p></li>
</ul>
<p>Example: <code>my-snapshot-id</code></p></td>
</tr>
<tr class="odd">
<td><code
id="neptune_restore_db_cluster_from_snapshot_:_SnapshotIdentifier">SnapshotIdentifier</code></td>
<td><p>[required] The identifier for the DB snapshot or DB cluster
snapshot to restore from.</p>
<p>You can use either the name or the Amazon Resource Name (ARN) to
specify a DB cluster snapshot. However, you can use only the ARN to
specify a DB snapshot.</p>
<p>Constraints:</p>
<ul>
<li><p>Must match the identifier of an existing Snapshot.</p></li>
</ul></td>
</tr>
<tr class="even">
<td><code
id="neptune_restore_db_cluster_from_snapshot_:_Engine">Engine</code></td>
<td><p>[required] The database engine to use for the new DB cluster.</p>
<p>Default: The same as source</p>
<p>Constraint: Must be compatible with the engine of the source</p></td>
</tr>
<tr class="odd">
<td><code
id="neptune_restore_db_cluster_from_snapshot_:_EngineVersion">EngineVersion</code></td>
<td><p>The version of the database engine to use for the new DB
cluster.</p></td>
</tr>
<tr class="even">
<td><code
id="neptune_restore_db_cluster_from_snapshot_:_Port">Port</code></td>
<td><p>The port number on which the new DB cluster accepts
connections.</p>
<p>Constraints: Value must be <code>1150-65535</code></p>
<p>Default: The same port as the original DB cluster.</p></td>
</tr>
<tr class="odd">
<td><code
id="neptune_restore_db_cluster_from_snapshot_:_DBSubnetGroupName">DBSubnetGroupName</code></td>
<td><p>The name of the DB subnet group to use for the new DB
cluster.</p>
<p>Constraints: If supplied, must match the name of an existing
DBSubnetGroup.</p>
<p>Example: <code>mySubnetgroup</code></p></td>
</tr>
<tr class="even">
<td><code
id="neptune_restore_db_cluster_from_snapshot_:_DatabaseName">DatabaseName</code></td>
<td><p>Not supported.</p></td>
</tr>
<tr class="odd">
<td><code
id="neptune_restore_db_cluster_from_snapshot_:_OptionGroupName">OptionGroupName</code></td>
<td><p><em>(Not supported by Neptune)</em></p></td>
</tr>
<tr class="even">
<td><code
id="neptune_restore_db_cluster_from_snapshot_:_VpcSecurityGroupIds">VpcSecurityGroupIds</code></td>
<td><p>A list of VPC security groups that the new DB cluster will belong
to.</p></td>
</tr>
<tr class="odd">
<td><code
id="neptune_restore_db_cluster_from_snapshot_:_Tags">Tags</code></td>
<td><p>The tags to be assigned to the restored DB cluster.</p></td>
</tr>
<tr class="even">
<td><code
id="neptune_restore_db_cluster_from_snapshot_:_KmsKeyId">KmsKeyId</code></td>
<td><p>The Amazon KMS key identifier to use when restoring an encrypted
DB cluster from a DB snapshot or DB cluster snapshot.</p>
<p>The KMS key identifier is the Amazon Resource Name (ARN) for the KMS
encryption key. If you are restoring a DB cluster with the same Amazon
account that owns the KMS encryption key used to encrypt the new DB
cluster, then you can use the KMS key alias instead of the ARN for the
KMS encryption key.</p>
<p>If you do not specify a value for the <code>KmsKeyId</code>
parameter, then the following will occur:</p>
<ul>
<li><p>If the DB snapshot or DB cluster snapshot in
<code>SnapshotIdentifier</code> is encrypted, then the restored DB
cluster is encrypted using the KMS key that was used to encrypt the DB
snapshot or DB cluster snapshot.</p></li>
<li><p>If the DB snapshot or DB cluster snapshot in
<code>SnapshotIdentifier</code> is not encrypted, then the restored DB
cluster is not encrypted.</p></li>
</ul></td>
</tr>
<tr class="odd">
<td><code
id="neptune_restore_db_cluster_from_snapshot_:_EnableIAMDatabaseAuthentication">EnableIAMDatabaseAuthentication</code></td>
<td><p>True to enable mapping of Amazon Identity and Access Management
(IAM) accounts to database accounts, and otherwise false.</p>
<p>Default: <code>false</code></p></td>
</tr>
<tr class="even">
<td><code
id="neptune_restore_db_cluster_from_snapshot_:_EnableCloudwatchLogsExports">EnableCloudwatchLogsExports</code></td>
<td><p>The list of logs that the restored DB cluster is to export to
Amazon CloudWatch Logs.</p></td>
</tr>
<tr class="odd">
<td><code
id="neptune_restore_db_cluster_from_snapshot_:_DBClusterParameterGroupName">DBClusterParameterGroupName</code></td>
<td><p>The name of the DB cluster parameter group to associate with the
new DB cluster.</p>
<p>Constraints:</p>
<ul>
<li><p>If supplied, must match the name of an existing
DBClusterParameterGroup.</p></li>
</ul></td>
</tr>
<tr class="even">
<td><code
id="neptune_restore_db_cluster_from_snapshot_:_DeletionProtection">DeletionProtection</code></td>
<td><p>A value that indicates whether the DB cluster has deletion
protection enabled. The database can't be deleted when deletion
protection is enabled. By default, deletion protection is
disabled.</p></td>
</tr>
<tr class="odd">
<td><code
id="neptune_restore_db_cluster_from_snapshot_:_CopyTagsToSnapshot">CopyTagsToSnapshot</code></td>
<td><p><em>If set to true, tags are copied to any snapshot of the
restored DB cluster that is created.</em></p></td>
</tr>
<tr class="even">
<td><code
id="neptune_restore_db_cluster_from_snapshot_:_ServerlessV2ScalingConfiguration">ServerlessV2ScalingConfiguration</code></td>
<td></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      DBCluster = list(
        AllocatedStorage = 123,
        AvailabilityZones = list(
          "string"
        ),
        BackupRetentionPeriod = 123,
        CharacterSetName = "string",
        DatabaseName = "string",
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
        DBClusterOptionGroupMemberships = list(
          list(
            DBClusterOptionGroupName = "string",
            Status = "string"
          )
        ),
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
            Status = "string",
            FeatureName = "string"
          )
        ),
        IAMDatabaseAuthenticationEnabled = TRUE|FALSE,
        CloneGroupId = "string",
        ClusterCreateTime = as.POSIXct(
          "2015-01-01"
        ),
        CopyTagsToSnapshot = TRUE|FALSE,
        EnabledCloudwatchLogsExports = list(
          "string"
        ),
        PendingModifiedValues = list(
          PendingCloudwatchLogsExports = list(
            LogTypesToEnable = list(
              "string"
            ),
            LogTypesToDisable = list(
              "string"
            )
          ),
          DBClusterIdentifier = "string",
          IAMDatabaseAuthenticationEnabled = TRUE|FALSE,
          EngineVersion = "string",
          BackupRetentionPeriod = 123,
          AllocatedStorage = 123,
          Iops = 123
        ),
        DeletionProtection = TRUE|FALSE,
        CrossAccountClone = TRUE|FALSE,
        AutomaticRestartTime = as.POSIXct(
          "2015-01-01"
        ),
        ServerlessV2ScalingConfiguration = list(
          MinCapacity = 123.0,
          MaxCapacity = 123.0
        ),
        GlobalClusterIdentifier = "string"
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
      DatabaseName = "string",
      OptionGroupName = "string",
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
      EnableIAMDatabaseAuthentication = TRUE|FALSE,
      EnableCloudwatchLogsExports = list(
        "string"
      ),
      DBClusterParameterGroupName = "string",
      DeletionProtection = TRUE|FALSE,
      CopyTagsToSnapshot = TRUE|FALSE,
      ServerlessV2ScalingConfiguration = list(
        MinCapacity = 123.0,
        MaxCapacity = 123.0
      )
    )
