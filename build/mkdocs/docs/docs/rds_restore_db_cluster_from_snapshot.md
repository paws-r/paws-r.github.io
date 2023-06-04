<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>rds_restore_db_cluster_from_snapshot</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a new DB cluster from a DB snapshot or DB cluster snapshot

### Description

Creates a new DB cluster from a DB snapshot or DB cluster snapshot.

The target DB cluster is created from the source snapshot with a default
configuration. If you don't specify a security group, the new DB cluster
is associated with the default security group.

This action only restores the DB cluster, not the DB instances for that
DB cluster. You must invoke the `create_db_instance` action to create DB
instances for the restored DB cluster, specifying the identifier of the
restored DB cluster in `DBClusterIdentifier`. You can create DB
instances only after the `restore_db_cluster_from_snapshot` action has
completed and the DB cluster is available.

For more information on Amazon Aurora DB clusters, see [What is Amazon
Aurora?](https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/CHAP_AuroraOverview.html)
in the *Amazon Aurora User Guide*.

For more information on Multi-AZ DB clusters, see [Multi-AZ DB cluster
deployments](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/multi-az-db-clusters-concepts.html)
in the *Amazon RDS User Guide.*

### Usage

    rds_restore_db_cluster_from_snapshot(AvailabilityZones,
      DBClusterIdentifier, SnapshotIdentifier, Engine, EngineVersion, Port,
      DBSubnetGroupName, DatabaseName, OptionGroupName, VpcSecurityGroupIds,
      Tags, KmsKeyId, EnableIAMDatabaseAuthentication, BacktrackWindow,
      EnableCloudwatchLogsExports, EngineMode, ScalingConfiguration,
      DBClusterParameterGroupName, DeletionProtection, CopyTagsToSnapshot,
      Domain, DomainIAMRoleName, DBClusterInstanceClass, StorageType, Iops,
      PubliclyAccessible, ServerlessV2ScalingConfiguration, NetworkType)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="rds_restore_db_cluster_from_snapshot_:_AvailabilityZones">AvailabilityZones</code></td>
<td><p>Provides the list of Availability Zones (AZs) where instances in
the restored DB cluster can be created.</p>
<p>Valid for: Aurora DB clusters only</p></td>
</tr>
<tr class="even">
<td><code
id="rds_restore_db_cluster_from_snapshot_:_DBClusterIdentifier">DBClusterIdentifier</code></td>
<td><p>[required] The name of the DB cluster to create from the DB
snapshot or DB cluster snapshot. This parameter isn't
case-sensitive.</p>
<p>Constraints:</p>
<ul>
<li><p>Must contain from 1 to 63 letters, numbers, or hyphens</p></li>
<li><p>First character must be a letter</p></li>
<li><p>Can't end with a hyphen or contain two consecutive
hyphens</p></li>
</ul>
<p>Example: <code>my-snapshot-id</code></p>
<p>Valid for: Aurora DB clusters and Multi-AZ DB clusters</p></td>
</tr>
<tr class="odd">
<td><code
id="rds_restore_db_cluster_from_snapshot_:_SnapshotIdentifier">SnapshotIdentifier</code></td>
<td><p>[required] The identifier for the DB snapshot or DB cluster
snapshot to restore from.</p>
<p>You can use either the name or the Amazon Resource Name (ARN) to
specify a DB cluster snapshot. However, you can use only the ARN to
specify a DB snapshot.</p>
<p>Constraints:</p>
<ul>
<li><p>Must match the identifier of an existing Snapshot.</p></li>
</ul>
<p>Valid for: Aurora DB clusters and Multi-AZ DB clusters</p></td>
</tr>
<tr class="even">
<td><code
id="rds_restore_db_cluster_from_snapshot_:_Engine">Engine</code></td>
<td><p>[required] The database engine to use for the new DB cluster.</p>
<p>Default: The same as source</p>
<p>Constraint: Must be compatible with the engine of the source</p>
<p>Valid for: Aurora DB clusters and Multi-AZ DB clusters</p></td>
</tr>
<tr class="odd">
<td><code
id="rds_restore_db_cluster_from_snapshot_:_EngineVersion">EngineVersion</code></td>
<td><p>The version of the database engine to use for the new DB cluster.
If you don't specify an engine version, the default version for the
database engine in the Amazon Web Services Region is used.</p>
<p>To list all of the available engine versions for Aurora MySQL, use
the following command:</p>
<p><code
style="white-space: pre;">⁠aws rds describe-db-engine-versions --engine aurora-mysql --query "DBEngineVersions[].EngineVersion"⁠</code></p>
<p>To list all of the available engine versions for Aurora PostgreSQL,
use the following command:</p>
<p><code
style="white-space: pre;">⁠aws rds describe-db-engine-versions --engine aurora-postgresql --query "DBEngineVersions[].EngineVersion"⁠</code></p>
<p>To list all of the available engine versions for RDS for MySQL, use
the following command:</p>
<p><code
style="white-space: pre;">⁠aws rds describe-db-engine-versions --engine mysql --query "DBEngineVersions[].EngineVersion"⁠</code></p>
<p>To list all of the available engine versions for RDS for PostgreSQL,
use the following command:</p>
<p><code
style="white-space: pre;">⁠aws rds describe-db-engine-versions --engine postgres --query "DBEngineVersions[].EngineVersion"⁠</code></p>
<p><strong>Aurora MySQL</strong></p>
<p>See <a
href="https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/AuroraMySQL.Updates.html">Database
engine updates for Amazon Aurora MySQL</a> in the <em>Amazon Aurora User
Guide</em>.</p>
<p><strong>Aurora PostgreSQL</strong></p>
<p>See <a
href="https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/AuroraPostgreSQL.Updates.20180305.html">Amazon
Aurora PostgreSQL releases and engine versions</a> in the <em>Amazon
Aurora User Guide</em>.</p>
<p><strong>MySQL</strong></p>
<p>See <a
href="https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/CHAP_MySQL.html#MySQL.Concepts.VersionMgmt">Amazon
RDS for MySQL</a> in the <em>Amazon RDS User Guide.</em></p>
<p><strong>PostgreSQL</strong></p>
<p>See <a
href="https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/CHAP_PostgreSQL.html#PostgreSQL.Concepts">Amazon
RDS for PostgreSQL versions and extensions</a> in the <em>Amazon RDS
User Guide.</em></p>
<p>Valid for: Aurora DB clusters and Multi-AZ DB clusters</p></td>
</tr>
<tr class="even">
<td><code
id="rds_restore_db_cluster_from_snapshot_:_Port">Port</code></td>
<td><p>The port number on which the new DB cluster accepts
connections.</p>
<p>Constraints: This value must be <code>1150-65535</code></p>
<p>Default: The same port as the original DB cluster.</p>
<p>Valid for: Aurora DB clusters and Multi-AZ DB clusters</p></td>
</tr>
<tr class="odd">
<td><code
id="rds_restore_db_cluster_from_snapshot_:_DBSubnetGroupName">DBSubnetGroupName</code></td>
<td><p>The name of the DB subnet group to use for the new DB
cluster.</p>
<p>Constraints: If supplied, must match the name of an existing DB
subnet group.</p>
<p>Example: <code>mydbsubnetgroup</code></p>
<p>Valid for: Aurora DB clusters and Multi-AZ DB clusters</p></td>
</tr>
<tr class="even">
<td><code
id="rds_restore_db_cluster_from_snapshot_:_DatabaseName">DatabaseName</code></td>
<td><p>The database name for the restored DB cluster.</p>
<p>Valid for: Aurora DB clusters and Multi-AZ DB clusters</p></td>
</tr>
<tr class="odd">
<td><code
id="rds_restore_db_cluster_from_snapshot_:_OptionGroupName">OptionGroupName</code></td>
<td><p>The name of the option group to use for the restored DB
cluster.</p>
<p>DB clusters are associated with a default option group that can't be
modified.</p></td>
</tr>
<tr class="even">
<td><code
id="rds_restore_db_cluster_from_snapshot_:_VpcSecurityGroupIds">VpcSecurityGroupIds</code></td>
<td><p>A list of VPC security groups that the new DB cluster will belong
to.</p>
<p>Valid for: Aurora DB clusters and Multi-AZ DB clusters</p></td>
</tr>
<tr class="odd">
<td><code
id="rds_restore_db_cluster_from_snapshot_:_Tags">Tags</code></td>
<td><p>The tags to be assigned to the restored DB cluster.</p>
<p>Valid for: Aurora DB clusters and Multi-AZ DB clusters</p></td>
</tr>
<tr class="even">
<td><code
id="rds_restore_db_cluster_from_snapshot_:_KmsKeyId">KmsKeyId</code></td>
<td><p>The Amazon Web Services KMS key identifier to use when restoring
an encrypted DB cluster from a DB snapshot or DB cluster snapshot.</p>
<p>The Amazon Web Services KMS key identifier is the key ARN, key ID,
alias ARN, or alias name for the KMS key. To use a KMS key in a
different Amazon Web Services account, specify the key ARN or alias
ARN.</p>
<p>When you don't specify a value for the <code>KmsKeyId</code>
parameter, then the following occurs:</p>
<ul>
<li><p>If the DB snapshot or DB cluster snapshot in
<code>SnapshotIdentifier</code> is encrypted, then the restored DB
cluster is encrypted using the KMS key that was used to encrypt the DB
snapshot or DB cluster snapshot.</p></li>
<li><p>If the DB snapshot or DB cluster snapshot in
<code>SnapshotIdentifier</code> isn't encrypted, then the restored DB
cluster isn't encrypted.</p></li>
</ul>
<p>Valid for: Aurora DB clusters and Multi-AZ DB clusters</p></td>
</tr>
<tr class="odd">
<td><code
id="rds_restore_db_cluster_from_snapshot_:_EnableIAMDatabaseAuthentication">EnableIAMDatabaseAuthentication</code></td>
<td><p>A value that indicates whether to enable mapping of Amazon Web
Services Identity and Access Management (IAM) accounts to database
accounts. By default, mapping isn't enabled.</p>
<p>For more information, see <a
href="https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/UsingWithRDS.IAMDBAuth.html">IAM
Database Authentication</a> in the <em>Amazon Aurora User
Guide</em>.</p>
<p>Valid for: Aurora DB clusters only</p></td>
</tr>
<tr class="even">
<td><code
id="rds_restore_db_cluster_from_snapshot_:_BacktrackWindow">BacktrackWindow</code></td>
<td><p>The target backtrack window, in seconds. To disable backtracking,
set this value to 0.</p>
<p>Currently, Backtrack is only supported for Aurora MySQL DB
clusters.</p>
<p>Default: 0</p>
<p>Constraints:</p>
<ul>
<li><p>If specified, this value must be set to a number from 0 to
259,200 (72 hours).</p></li>
</ul>
<p>Valid for: Aurora DB clusters only</p></td>
</tr>
<tr class="odd">
<td><code
id="rds_restore_db_cluster_from_snapshot_:_EnableCloudwatchLogsExports">EnableCloudwatchLogsExports</code></td>
<td><p>The list of logs that the restored DB cluster is to export to
Amazon CloudWatch Logs. The values in the list depend on the DB engine
being used.</p>
<p><strong>RDS for MySQL</strong></p>
<p>Possible values are <code>error</code>, <code>general</code>, and
<code>slowquery</code>.</p>
<p><strong>RDS for PostgreSQL</strong></p>
<p>Possible values are <code>postgresql</code> and
<code>upgrade</code>.</p>
<p><strong>Aurora MySQL</strong></p>
<p>Possible values are <code>audit</code>, <code>error</code>,
<code>general</code>, and <code>slowquery</code>.</p>
<p><strong>Aurora PostgreSQL</strong></p>
<p>Possible value is <code>postgresql</code>.</p>
<p>For more information about exporting CloudWatch Logs for Amazon RDS,
see <a
href="https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_LogAccess.html#USER_LogAccess.Procedural.UploadtoCloudWatch">Publishing
Database Logs to Amazon CloudWatch Logs</a> in the <em>Amazon RDS User
Guide</em>.</p>
<p>For more information about exporting CloudWatch Logs for Amazon
Aurora, see <a
href="https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/USER_LogAccess.html#USER_LogAccess.Procedural.UploadtoCloudWatch">Publishing
Database Logs to Amazon CloudWatch Logs</a> in the <em>Amazon Aurora
User Guide</em>.</p>
<p>Valid for: Aurora DB clusters and Multi-AZ DB clusters</p></td>
</tr>
<tr class="even">
<td><code
id="rds_restore_db_cluster_from_snapshot_:_EngineMode">EngineMode</code></td>
<td><p>The DB engine mode of the DB cluster, either
<code>provisioned</code> or <code>serverless</code>.</p>
<p>For more information, see <a
href="https://docs.aws.amazon.com/AmazonRDS/latest/APIReference/API_CreateDBCluster.html">CreateDBCluster</a>.</p>
<p>Valid for: Aurora DB clusters only</p></td>
</tr>
<tr class="odd">
<td><code
id="rds_restore_db_cluster_from_snapshot_:_ScalingConfiguration">ScalingConfiguration</code></td>
<td><p>For DB clusters in <code>serverless</code> DB engine mode, the
scaling properties of the DB cluster.</p>
<p>Valid for: Aurora DB clusters only</p></td>
</tr>
<tr class="even">
<td><code
id="rds_restore_db_cluster_from_snapshot_:_DBClusterParameterGroupName">DBClusterParameterGroupName</code></td>
<td><p>The name of the DB cluster parameter group to associate with this
DB cluster. If this argument is omitted, the default DB cluster
parameter group for the specified engine is used.</p>
<p>Constraints:</p>
<ul>
<li><p>If supplied, must match the name of an existing default DB
cluster parameter group.</p></li>
<li><p>Must be 1 to 255 letters, numbers, or hyphens.</p></li>
<li><p>First character must be a letter.</p></li>
<li><p>Can't end with a hyphen or contain two consecutive
hyphens.</p></li>
</ul>
<p>Valid for: Aurora DB clusters and Multi-AZ DB clusters</p></td>
</tr>
<tr class="odd">
<td><code
id="rds_restore_db_cluster_from_snapshot_:_DeletionProtection">DeletionProtection</code></td>
<td><p>A value that indicates whether the DB cluster has deletion
protection enabled. The database can't be deleted when deletion
protection is enabled. By default, deletion protection isn't
enabled.</p>
<p>Valid for: Aurora DB clusters and Multi-AZ DB clusters</p></td>
</tr>
<tr class="even">
<td><code
id="rds_restore_db_cluster_from_snapshot_:_CopyTagsToSnapshot">CopyTagsToSnapshot</code></td>
<td><p>A value that indicates whether to copy all tags from the restored
DB cluster to snapshots of the restored DB cluster. The default is not
to copy them.</p>
<p>Valid for: Aurora DB clusters and Multi-AZ DB clusters</p></td>
</tr>
<tr class="odd">
<td><code
id="rds_restore_db_cluster_from_snapshot_:_Domain">Domain</code></td>
<td><p>Specify the Active Directory directory ID to restore the DB
cluster in. The domain must be created prior to this operation.
Currently, only MySQL, Microsoft SQL Server, Oracle, and PostgreSQL DB
instances can be created in an Active Directory Domain.</p>
<p>For more information, see <a
href="https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/database-authentication.html">Kerberos
Authentication</a> in the <em>Amazon RDS User Guide</em>.</p>
<p>Valid for: Aurora DB clusters only</p></td>
</tr>
<tr class="even">
<td><code
id="rds_restore_db_cluster_from_snapshot_:_DomainIAMRoleName">DomainIAMRoleName</code></td>
<td><p>Specify the name of the IAM role to be used when making API calls
to the Directory Service.</p>
<p>Valid for: Aurora DB clusters only</p></td>
</tr>
<tr class="odd">
<td><code
id="rds_restore_db_cluster_from_snapshot_:_DBClusterInstanceClass">DBClusterInstanceClass</code></td>
<td><p>The compute and memory capacity of the each DB instance in the
Multi-AZ DB cluster, for example db.m6gd.xlarge. Not all DB instance
classes are available in all Amazon Web Services Regions, or for all
database engines.</p>
<p>For the full list of DB instance classes, and availability for your
engine, see <a
href="https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Concepts.DBInstanceClass.html">DB
Instance Class</a> in the <em>Amazon RDS User Guide.</em></p>
<p>Valid for: Multi-AZ DB clusters only</p></td>
</tr>
<tr class="even">
<td><code
id="rds_restore_db_cluster_from_snapshot_:_StorageType">StorageType</code></td>
<td><p>Specifies the storage type to be associated with the DB
cluster.</p>
<p>When specified for a Multi-AZ DB cluster, a value for the
<code>Iops</code> parameter is required.</p>
<p>Valid values: <code>aurora</code>, <code>aurora-iopt1</code> (Aurora
DB clusters); <code>io1</code> (Multi-AZ DB clusters)</p>
<p>Default: <code>aurora</code> (Aurora DB clusters); <code>io1</code>
(Multi-AZ DB clusters)</p>
<p>Valid for: Aurora DB clusters and Multi-AZ DB clusters</p></td>
</tr>
<tr class="odd">
<td><code
id="rds_restore_db_cluster_from_snapshot_:_Iops">Iops</code></td>
<td><p>The amount of Provisioned IOPS (input/output operations per
second) to be initially allocated for each DB instance in the Multi-AZ
DB cluster.</p>
<p>For information about valid IOPS values, see <a
href="https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/CHAP_Storage.html#USER_PIOPS">Amazon
RDS Provisioned IOPS storage</a> in the <em>Amazon RDS User
Guide</em>.</p>
<p>Constraints: Must be a multiple between .5 and 50 of the storage
amount for the DB instance.</p>
<p>Valid for: Aurora DB clusters and Multi-AZ DB clusters</p></td>
</tr>
<tr class="even">
<td><code
id="rds_restore_db_cluster_from_snapshot_:_PubliclyAccessible">PubliclyAccessible</code></td>
<td><p>A value that indicates whether the DB cluster is publicly
accessible.</p>
<p>When the DB cluster is publicly accessible, its Domain Name System
(DNS) endpoint resolves to the private IP address from within the DB
cluster's virtual private cloud (VPC). It resolves to the public IP
address from outside of the DB cluster's VPC. Access to the DB cluster
is ultimately controlled by the security group it uses. That public
access is not permitted if the security group assigned to the DB cluster
doesn't permit it.</p>
<p>When the DB cluster isn't publicly accessible, it is an internal DB
cluster with a DNS name that resolves to a private IP address.</p>
<p>Default: The default behavior varies depending on whether
<code>DBSubnetGroupName</code> is specified.</p>
<p>If <code>DBSubnetGroupName</code> isn't specified, and
<code>PubliclyAccessible</code> isn't specified, the following
applies:</p>
<ul>
<li><p>If the default VPC in the target Region doesn’t have an internet
gateway attached to it, the DB cluster is private.</p></li>
<li><p>If the default VPC in the target Region has an internet gateway
attached to it, the DB cluster is public.</p></li>
</ul>
<p>If <code>DBSubnetGroupName</code> is specified, and
<code>PubliclyAccessible</code> isn't specified, the following
applies:</p>
<ul>
<li><p>If the subnets are part of a VPC that doesn’t have an internet
gateway attached to it, the DB cluster is private.</p></li>
<li><p>If the subnets are part of a VPC that has an internet gateway
attached to it, the DB cluster is public.</p></li>
</ul>
<p>Valid for: Aurora DB clusters and Multi-AZ DB clusters</p></td>
</tr>
<tr class="odd">
<td><code
id="rds_restore_db_cluster_from_snapshot_:_ServerlessV2ScalingConfiguration">ServerlessV2ScalingConfiguration</code></td>
<td></td>
</tr>
<tr class="even">
<td><code
id="rds_restore_db_cluster_from_snapshot_:_NetworkType">NetworkType</code></td>
<td><p>The network type of the DB cluster.</p>
<p>Valid values:</p>
<ul>
<li><p><code>IPV4</code></p></li>
<li><p><code>DUAL</code></p></li>
</ul>
<p>The network type is determined by the <code>DBSubnetGroup</code>
specified for the DB cluster. A <code>DBSubnetGroup</code> can support
only the IPv4 protocol or the IPv4 and the IPv6 protocols
(<code>DUAL</code>).</p>
<p>For more information, see <a
href="https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/USER_VPC.WorkingWithRDSInstanceinaVPC.html">Working
with a DB instance in a VPC</a> in the <em>Amazon Aurora User
Guide.</em></p>
<p>Valid for: Aurora DB clusters only</p></td>
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
        AutomaticRestartTime = as.POSIXct(
          "2015-01-01"
        ),
        PercentProgress = "string",
        EarliestRestorableTime = as.POSIXct(
          "2015-01-01"
        ),
        Endpoint = "string",
        ReaderEndpoint = "string",
        CustomEndpoints = list(
          "string"
        ),
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
        EarliestBacktrackTime = as.POSIXct(
          "2015-01-01"
        ),
        BacktrackWindow = 123,
        BacktrackConsumedChangeRecords = 123,
        EnabledCloudwatchLogsExports = list(
          "string"
        ),
        Capacity = 123,
        EngineMode = "string",
        ScalingConfigurationInfo = list(
          MinCapacity = 123,
          MaxCapacity = 123,
          AutoPause = TRUE|FALSE,
          SecondsUntilAutoPause = 123,
          TimeoutAction = "string",
          SecondsBeforeTimeout = 123
        ),
        DeletionProtection = TRUE|FALSE,
        HttpEndpointEnabled = TRUE|FALSE,
        ActivityStreamMode = "sync"|"async",
        ActivityStreamStatus = "stopped"|"starting"|"started"|"stopping",
        ActivityStreamKmsKeyId = "string",
        ActivityStreamKinesisStreamName = "string",
        CopyTagsToSnapshot = TRUE|FALSE,
        CrossAccountClone = TRUE|FALSE,
        DomainMemberships = list(
          list(
            Domain = "string",
            Status = "string",
            FQDN = "string",
            IAMRoleName = "string"
          )
        ),
        TagList = list(
          list(
            Key = "string",
            Value = "string"
          )
        ),
        GlobalWriteForwardingStatus = "enabled"|"disabled"|"enabling"|"disabling"|"unknown",
        GlobalWriteForwardingRequested = TRUE|FALSE,
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
          MasterUserPassword = "string",
          IAMDatabaseAuthenticationEnabled = TRUE|FALSE,
          EngineVersion = "string",
          BackupRetentionPeriod = 123,
          AllocatedStorage = 123,
          Iops = 123,
          StorageType = "string"
        ),
        DBClusterInstanceClass = "string",
        StorageType = "string",
        Iops = 123,
        PubliclyAccessible = TRUE|FALSE,
        AutoMinorVersionUpgrade = TRUE|FALSE,
        MonitoringInterval = 123,
        MonitoringRoleArn = "string",
        PerformanceInsightsEnabled = TRUE|FALSE,
        PerformanceInsightsKMSKeyId = "string",
        PerformanceInsightsRetentionPeriod = 123,
        ServerlessV2ScalingConfiguration = list(
          MinCapacity = 123.0,
          MaxCapacity = 123.0
        ),
        NetworkType = "string",
        DBSystemId = "string",
        MasterUserSecret = list(
          SecretArn = "string",
          SecretStatus = "string",
          KmsKeyId = "string"
        ),
        IOOptimizedNextAllowedModificationTime = as.POSIXct(
          "2015-01-01"
        )
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
      BacktrackWindow = 123,
      EnableCloudwatchLogsExports = list(
        "string"
      ),
      EngineMode = "string",
      ScalingConfiguration = list(
        MinCapacity = 123,
        MaxCapacity = 123,
        AutoPause = TRUE|FALSE,
        SecondsUntilAutoPause = 123,
        TimeoutAction = "string",
        SecondsBeforeTimeout = 123
      ),
      DBClusterParameterGroupName = "string",
      DeletionProtection = TRUE|FALSE,
      CopyTagsToSnapshot = TRUE|FALSE,
      Domain = "string",
      DomainIAMRoleName = "string",
      DBClusterInstanceClass = "string",
      StorageType = "string",
      Iops = 123,
      PubliclyAccessible = TRUE|FALSE,
      ServerlessV2ScalingConfiguration = list(
        MinCapacity = 123.0,
        MaxCapacity = 123.0
      ),
      NetworkType = "string"
    )
