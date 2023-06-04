<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>neptune_restore_db_cluster_to_point_in_time</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Restores a DB cluster to an arbitrary point in time

### Description

Restores a DB cluster to an arbitrary point in time. Users can restore
to any point in time before `LatestRestorableTime` for up to
`BackupRetentionPeriod` days. The target DB cluster is created from the
source DB cluster with the same configuration as the original DB
cluster, except that the new DB cluster is created with the default DB
security group.

This action only restores the DB cluster, not the DB instances for that
DB cluster. You must invoke the `create_db_instance` action to create DB
instances for the restored DB cluster, specifying the identifier of the
restored DB cluster in `DBClusterIdentifier`. You can create DB
instances only after the `restore_db_cluster_to_point_in_time` action
has completed and the DB cluster is available.

### Usage

    neptune_restore_db_cluster_to_point_in_time(DBClusterIdentifier,
      RestoreType, SourceDBClusterIdentifier, RestoreToTime,
      UseLatestRestorableTime, Port, DBSubnetGroupName, OptionGroupName,
      VpcSecurityGroupIds, Tags, KmsKeyId, EnableIAMDatabaseAuthentication,
      EnableCloudwatchLogsExports, DBClusterParameterGroupName,
      DeletionProtection, ServerlessV2ScalingConfiguration)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="neptune_restore_db_cluster_to_point_in_time_:_DBClusterIdentifier">DBClusterIdentifier</code></td>
<td><p>[required] The name of the new DB cluster to be created.</p>
<p>Constraints:</p>
<ul>
<li><p>Must contain from 1 to 63 letters, numbers, or hyphens</p></li>
<li><p>First character must be a letter</p></li>
<li><p>Cannot end with a hyphen or contain two consecutive
hyphens</p></li>
</ul></td>
</tr>
<tr class="even">
<td><code
id="neptune_restore_db_cluster_to_point_in_time_:_RestoreType">RestoreType</code></td>
<td><p>The type of restore to be performed. You can specify one of the
following values:</p>
<ul>
<li><p><code>full-copy</code> - The new DB cluster is restored as a full
copy of the source DB cluster.</p></li>
<li><p><code>copy-on-write</code> - The new DB cluster is restored as a
clone of the source DB cluster.</p></li>
</ul>
<p>If you don't specify a <code>RestoreType</code> value, then the new
DB cluster is restored as a full copy of the source DB cluster.</p></td>
</tr>
<tr class="odd">
<td><code
id="neptune_restore_db_cluster_to_point_in_time_:_SourceDBClusterIdentifier">SourceDBClusterIdentifier</code></td>
<td><p>[required] The identifier of the source DB cluster from which to
restore.</p>
<p>Constraints:</p>
<ul>
<li><p>Must match the identifier of an existing DBCluster.</p></li>
</ul></td>
</tr>
<tr class="even">
<td><code
id="neptune_restore_db_cluster_to_point_in_time_:_RestoreToTime">RestoreToTime</code></td>
<td><p>The date and time to restore the DB cluster to.</p>
<p>Valid Values: Value must be a time in Universal Coordinated Time
(UTC) format</p>
<p>Constraints:</p>
<ul>
<li><p>Must be before the latest restorable time for the DB
instance</p></li>
<li><p>Must be specified if <code>UseLatestRestorableTime</code>
parameter is not provided</p></li>
<li><p>Cannot be specified if <code>UseLatestRestorableTime</code>
parameter is true</p></li>
<li><p>Cannot be specified if <code>RestoreType</code> parameter is
<code>copy-on-write</code></p></li>
</ul>
<p>Example: <code
style="white-space: pre;">⁠2015-03-07T23:45:00Z⁠</code></p></td>
</tr>
<tr class="odd">
<td><code
id="neptune_restore_db_cluster_to_point_in_time_:_UseLatestRestorableTime">UseLatestRestorableTime</code></td>
<td><p>A value that is set to <code>true</code> to restore the DB
cluster to the latest restorable backup time, and <code>false</code>
otherwise.</p>
<p>Default: <code>false</code></p>
<p>Constraints: Cannot be specified if <code>RestoreToTime</code>
parameter is provided.</p></td>
</tr>
<tr class="even">
<td><code
id="neptune_restore_db_cluster_to_point_in_time_:_Port">Port</code></td>
<td><p>The port number on which the new DB cluster accepts
connections.</p>
<p>Constraints: Value must be <code>1150-65535</code></p>
<p>Default: The same port as the original DB cluster.</p></td>
</tr>
<tr class="odd">
<td><code
id="neptune_restore_db_cluster_to_point_in_time_:_DBSubnetGroupName">DBSubnetGroupName</code></td>
<td><p>The DB subnet group name to use for the new DB cluster.</p>
<p>Constraints: If supplied, must match the name of an existing
DBSubnetGroup.</p>
<p>Example: <code>mySubnetgroup</code></p></td>
</tr>
<tr class="even">
<td><code
id="neptune_restore_db_cluster_to_point_in_time_:_OptionGroupName">OptionGroupName</code></td>
<td><p><em>(Not supported by Neptune)</em></p></td>
</tr>
<tr class="odd">
<td><code
id="neptune_restore_db_cluster_to_point_in_time_:_VpcSecurityGroupIds">VpcSecurityGroupIds</code></td>
<td><p>A list of VPC security groups that the new DB cluster belongs
to.</p></td>
</tr>
<tr class="even">
<td><code
id="neptune_restore_db_cluster_to_point_in_time_:_Tags">Tags</code></td>
<td><p>The tags to be applied to the restored DB cluster.</p></td>
</tr>
<tr class="odd">
<td><code
id="neptune_restore_db_cluster_to_point_in_time_:_KmsKeyId">KmsKeyId</code></td>
<td><p>The Amazon KMS key identifier to use when restoring an encrypted
DB cluster from an encrypted DB cluster.</p>
<p>The KMS key identifier is the Amazon Resource Name (ARN) for the KMS
encryption key. If you are restoring a DB cluster with the same Amazon
account that owns the KMS encryption key used to encrypt the new DB
cluster, then you can use the KMS key alias instead of the ARN for the
KMS encryption key.</p>
<p>You can restore to a new DB cluster and encrypt the new DB cluster
with a KMS key that is different than the KMS key used to encrypt the
source DB cluster. The new DB cluster is encrypted with the KMS key
identified by the <code>KmsKeyId</code> parameter.</p>
<p>If you do not specify a value for the <code>KmsKeyId</code>
parameter, then the following will occur:</p>
<ul>
<li><p>If the DB cluster is encrypted, then the restored DB cluster is
encrypted using the KMS key that was used to encrypt the source DB
cluster.</p></li>
<li><p>If the DB cluster is not encrypted, then the restored DB cluster
is not encrypted.</p></li>
</ul>
<p>If <code>DBClusterIdentifier</code> refers to a DB cluster that is
not encrypted, then the restore request is rejected.</p></td>
</tr>
<tr class="even">
<td><code
id="neptune_restore_db_cluster_to_point_in_time_:_EnableIAMDatabaseAuthentication">EnableIAMDatabaseAuthentication</code></td>
<td><p>True to enable mapping of Amazon Identity and Access Management
(IAM) accounts to database accounts, and otherwise false.</p>
<p>Default: <code>false</code></p></td>
</tr>
<tr class="odd">
<td><code
id="neptune_restore_db_cluster_to_point_in_time_:_EnableCloudwatchLogsExports">EnableCloudwatchLogsExports</code></td>
<td><p>The list of logs that the restored DB cluster is to export to
CloudWatch Logs.</p></td>
</tr>
<tr class="even">
<td><code
id="neptune_restore_db_cluster_to_point_in_time_:_DBClusterParameterGroupName">DBClusterParameterGroupName</code></td>
<td><p>The name of the DB cluster parameter group to associate with the
new DB cluster.</p>
<p>Constraints:</p>
<ul>
<li><p>If supplied, must match the name of an existing
DBClusterParameterGroup.</p></li>
</ul></td>
</tr>
<tr class="odd">
<td><code
id="neptune_restore_db_cluster_to_point_in_time_:_DeletionProtection">DeletionProtection</code></td>
<td><p>A value that indicates whether the DB cluster has deletion
protection enabled. The database can't be deleted when deletion
protection is enabled. By default, deletion protection is
disabled.</p></td>
</tr>
<tr class="even">
<td><code
id="neptune_restore_db_cluster_to_point_in_time_:_ServerlessV2ScalingConfiguration">ServerlessV2ScalingConfiguration</code></td>
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

    svc$restore_db_cluster_to_point_in_time(
      DBClusterIdentifier = "string",
      RestoreType = "string",
      SourceDBClusterIdentifier = "string",
      RestoreToTime = as.POSIXct(
        "2015-01-01"
      ),
      UseLatestRestorableTime = TRUE|FALSE,
      Port = 123,
      DBSubnetGroupName = "string",
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
      ServerlessV2ScalingConfiguration = list(
        MinCapacity = 123.0,
        MaxCapacity = 123.0
      )
    )
