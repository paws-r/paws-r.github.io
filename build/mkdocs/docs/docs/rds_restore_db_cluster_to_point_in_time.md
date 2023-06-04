<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>rds_restore_db_cluster_to_point_in_time</td>
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

For Aurora, this action only restores the DB cluster, not the DB
instances for that DB cluster. You must invoke the `create_db_instance`
action to create DB instances for the restored DB cluster, specifying
the identifier of the restored DB cluster in `DBClusterIdentifier`. You
can create DB instances only after the
`restore_db_cluster_to_point_in_time` action has completed and the DB
cluster is available.

For more information on Amazon Aurora DB clusters, see [What is Amazon
Aurora?](https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/CHAP_AuroraOverview.html)
in the *Amazon Aurora User Guide*.

For more information on Multi-AZ DB clusters, see [Multi-AZ DB cluster
deployments](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/multi-az-db-clusters-concepts.html)
in the *Amazon RDS User Guide.*

### Usage

    rds_restore_db_cluster_to_point_in_time(DBClusterIdentifier,
      RestoreType, SourceDBClusterIdentifier, RestoreToTime,
      UseLatestRestorableTime, Port, DBSubnetGroupName, OptionGroupName,
      VpcSecurityGroupIds, Tags, KmsKeyId, EnableIAMDatabaseAuthentication,
      BacktrackWindow, EnableCloudwatchLogsExports,
      DBClusterParameterGroupName, DeletionProtection, CopyTagsToSnapshot,
      Domain, DomainIAMRoleName, ScalingConfiguration, EngineMode,
      DBClusterInstanceClass, StorageType, PubliclyAccessible, Iops,
      ServerlessV2ScalingConfiguration, NetworkType)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="rds_restore_db_cluster_to_point_in_time_:_DBClusterIdentifier">DBClusterIdentifier</code></td>
<td><p>[required] The name of the new DB cluster to be created.</p>
<p>Constraints:</p>
<ul>
<li><p>Must contain from 1 to 63 letters, numbers, or hyphens</p></li>
<li><p>First character must be a letter</p></li>
<li><p>Can't end with a hyphen or contain two consecutive
hyphens</p></li>
</ul>
<p>Valid for: Aurora DB clusters and Multi-AZ DB clusters</p></td>
</tr>
<tr class="even">
<td><code
id="rds_restore_db_cluster_to_point_in_time_:_RestoreType">RestoreType</code></td>
<td><p>The type of restore to be performed. You can specify one of the
following values:</p>
<ul>
<li><p><code>full-copy</code> - The new DB cluster is restored as a full
copy of the source DB cluster.</p></li>
<li><p><code>copy-on-write</code> - The new DB cluster is restored as a
clone of the source DB cluster.</p></li>
</ul>
<p>If you don't specify a <code>RestoreType</code> value, then the new
DB cluster is restored as a full copy of the source DB cluster.</p>
<p>Valid for: Aurora DB clusters and Multi-AZ DB clusters</p></td>
</tr>
<tr class="odd">
<td><code
id="rds_restore_db_cluster_to_point_in_time_:_SourceDBClusterIdentifier">SourceDBClusterIdentifier</code></td>
<td><p>[required] The identifier of the source DB cluster from which to
restore.</p>
<p>Constraints:</p>
<ul>
<li><p>Must match the identifier of an existing DBCluster.</p></li>
</ul>
<p>Valid for: Aurora DB clusters and Multi-AZ DB clusters</p></td>
</tr>
<tr class="even">
<td><code
id="rds_restore_db_cluster_to_point_in_time_:_RestoreToTime">RestoreToTime</code></td>
<td><p>The date and time to restore the DB cluster to.</p>
<p>Valid Values: Value must be a time in Universal Coordinated Time
(UTC) format</p>
<p>Constraints:</p>
<ul>
<li><p>Must be before the latest restorable time for the DB
instance</p></li>
<li><p>Must be specified if <code>UseLatestRestorableTime</code>
parameter isn't provided</p></li>
<li><p>Can't be specified if the <code>UseLatestRestorableTime</code>
parameter is enabled</p></li>
<li><p>Can't be specified if the <code>RestoreType</code> parameter is
<code>copy-on-write</code></p></li>
</ul>
<p>Example: <code
style="white-space: pre;">⁠2015-03-07T23:45:00Z⁠</code></p>
<p>Valid for: Aurora DB clusters and Multi-AZ DB clusters</p></td>
</tr>
<tr class="odd">
<td><code
id="rds_restore_db_cluster_to_point_in_time_:_UseLatestRestorableTime">UseLatestRestorableTime</code></td>
<td><p>A value that indicates whether to restore the DB cluster to the
latest restorable backup time. By default, the DB cluster isn't restored
to the latest restorable backup time.</p>
<p>Constraints: Can't be specified if <code>RestoreToTime</code>
parameter is provided.</p>
<p>Valid for: Aurora DB clusters and Multi-AZ DB clusters</p></td>
</tr>
<tr class="even">
<td><code
id="rds_restore_db_cluster_to_point_in_time_:_Port">Port</code></td>
<td><p>The port number on which the new DB cluster accepts
connections.</p>
<p>Constraints: A value from <code>1150-65535</code>.</p>
<p>Default: The default port for the engine.</p>
<p>Valid for: Aurora DB clusters and Multi-AZ DB clusters</p></td>
</tr>
<tr class="odd">
<td><code
id="rds_restore_db_cluster_to_point_in_time_:_DBSubnetGroupName">DBSubnetGroupName</code></td>
<td><p>The DB subnet group name to use for the new DB cluster.</p>
<p>Constraints: If supplied, must match the name of an existing
DBSubnetGroup.</p>
<p>Example: <code>mydbsubnetgroup</code></p>
<p>Valid for: Aurora DB clusters and Multi-AZ DB clusters</p></td>
</tr>
<tr class="even">
<td><code
id="rds_restore_db_cluster_to_point_in_time_:_OptionGroupName">OptionGroupName</code></td>
<td><p>The name of the option group for the new DB cluster.</p>
<p>DB clusters are associated with a default option group that can't be
modified.</p></td>
</tr>
<tr class="odd">
<td><code
id="rds_restore_db_cluster_to_point_in_time_:_VpcSecurityGroupIds">VpcSecurityGroupIds</code></td>
<td><p>A list of VPC security groups that the new DB cluster belongs
to.</p>
<p>Valid for: Aurora DB clusters and Multi-AZ DB clusters</p></td>
</tr>
<tr class="even">
<td><code
id="rds_restore_db_cluster_to_point_in_time_:_Tags">Tags</code></td>
<td></td>
</tr>
<tr class="odd">
<td><code
id="rds_restore_db_cluster_to_point_in_time_:_KmsKeyId">KmsKeyId</code></td>
<td><p>The Amazon Web Services KMS key identifier to use when restoring
an encrypted DB cluster from an encrypted DB cluster.</p>
<p>The Amazon Web Services KMS key identifier is the key ARN, key ID,
alias ARN, or alias name for the KMS key. To use a KMS key in a
different Amazon Web Services account, specify the key ARN or alias
ARN.</p>
<p>You can restore to a new DB cluster and encrypt the new DB cluster
with a KMS key that is different from the KMS key used to encrypt the
source DB cluster. The new DB cluster is encrypted with the KMS key
identified by the <code>KmsKeyId</code> parameter.</p>
<p>If you don't specify a value for the <code>KmsKeyId</code> parameter,
then the following occurs:</p>
<ul>
<li><p>If the DB cluster is encrypted, then the restored DB cluster is
encrypted using the KMS key that was used to encrypt the source DB
cluster.</p></li>
<li><p>If the DB cluster isn't encrypted, then the restored DB cluster
isn't encrypted.</p></li>
</ul>
<p>If <code>DBClusterIdentifier</code> refers to a DB cluster that isn't
encrypted, then the restore request is rejected.</p>
<p>Valid for: Aurora DB clusters and Multi-AZ DB clusters</p></td>
</tr>
<tr class="even">
<td><code
id="rds_restore_db_cluster_to_point_in_time_:_EnableIAMDatabaseAuthentication">EnableIAMDatabaseAuthentication</code></td>
<td><p>A value that indicates whether to enable mapping of Amazon Web
Services Identity and Access Management (IAM) accounts to database
accounts. By default, mapping isn't enabled.</p>
<p>For more information, see <a
href="https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/UsingWithRDS.IAMDBAuth.html">IAM
Database Authentication</a> in the <em>Amazon Aurora User
Guide</em>.</p>
<p>Valid for: Aurora DB clusters only</p></td>
</tr>
<tr class="odd">
<td><code
id="rds_restore_db_cluster_to_point_in_time_:_BacktrackWindow">BacktrackWindow</code></td>
<td><p>The target backtrack window, in seconds. To disable backtracking,
set this value to 0.</p>
<p>Default: 0</p>
<p>Constraints:</p>
<ul>
<li><p>If specified, this value must be set to a number from 0 to
259,200 (72 hours).</p></li>
</ul>
<p>Valid for: Aurora MySQL DB clusters only</p></td>
</tr>
<tr class="even">
<td><code
id="rds_restore_db_cluster_to_point_in_time_:_EnableCloudwatchLogsExports">EnableCloudwatchLogsExports</code></td>
<td><p>The list of logs that the restored DB cluster is to export to
CloudWatch Logs. The values in the list depend on the DB engine being
used.</p>
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
<tr class="odd">
<td><code
id="rds_restore_db_cluster_to_point_in_time_:_DBClusterParameterGroupName">DBClusterParameterGroupName</code></td>
<td><p>The name of the DB cluster parameter group to associate with this
DB cluster. If this argument is omitted, the default DB cluster
parameter group for the specified engine is used.</p>
<p>Constraints:</p>
<ul>
<li><p>If supplied, must match the name of an existing DB cluster
parameter group.</p></li>
<li><p>Must be 1 to 255 letters, numbers, or hyphens.</p></li>
<li><p>First character must be a letter.</p></li>
<li><p>Can't end with a hyphen or contain two consecutive
hyphens.</p></li>
</ul>
<p>Valid for: Aurora DB clusters and Multi-AZ DB clusters</p></td>
</tr>
<tr class="even">
<td><code
id="rds_restore_db_cluster_to_point_in_time_:_DeletionProtection">DeletionProtection</code></td>
<td><p>A value that indicates whether the DB cluster has deletion
protection enabled. The database can't be deleted when deletion
protection is enabled. By default, deletion protection isn't
enabled.</p>
<p>Valid for: Aurora DB clusters and Multi-AZ DB clusters</p></td>
</tr>
<tr class="odd">
<td><code
id="rds_restore_db_cluster_to_point_in_time_:_CopyTagsToSnapshot">CopyTagsToSnapshot</code></td>
<td><p>A value that indicates whether to copy all tags from the restored
DB cluster to snapshots of the restored DB cluster. The default is not
to copy them.</p>
<p>Valid for: Aurora DB clusters and Multi-AZ DB clusters</p></td>
</tr>
<tr class="even">
<td><code
id="rds_restore_db_cluster_to_point_in_time_:_Domain">Domain</code></td>
<td><p>Specify the Active Directory directory ID to restore the DB
cluster in. The domain must be created prior to this operation.</p>
<p>For Amazon Aurora DB clusters, Amazon RDS can use Kerberos
Authentication to authenticate users that connect to the DB cluster. For
more information, see <a
href="https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/database-authentication.html">Kerberos
Authentication</a> in the <em>Amazon Aurora User Guide</em>.</p>
<p>Valid for: Aurora DB clusters only</p></td>
</tr>
<tr class="odd">
<td><code
id="rds_restore_db_cluster_to_point_in_time_:_DomainIAMRoleName">DomainIAMRoleName</code></td>
<td><p>Specify the name of the IAM role to be used when making API calls
to the Directory Service.</p>
<p>Valid for: Aurora DB clusters only</p></td>
</tr>
<tr class="even">
<td><code
id="rds_restore_db_cluster_to_point_in_time_:_ScalingConfiguration">ScalingConfiguration</code></td>
<td><p>For DB clusters in <code>serverless</code> DB engine mode, the
scaling properties of the DB cluster.</p>
<p>Valid for: Aurora DB clusters only</p></td>
</tr>
<tr class="odd">
<td><code
id="rds_restore_db_cluster_to_point_in_time_:_EngineMode">EngineMode</code></td>
<td><p>The engine mode of the new cluster. Specify
<code>provisioned</code> or <code>serverless</code>, depending on the
type of the cluster you are creating. You can create an Aurora
Serverless v1 clone from a provisioned cluster, or a provisioned clone
from an Aurora Serverless v1 cluster. To create a clone that is an
Aurora Serverless v1 cluster, the original cluster must be an Aurora
Serverless v1 cluster or an encrypted provisioned cluster.</p>
<p>Valid for: Aurora DB clusters only</p></td>
</tr>
<tr class="even">
<td><code
id="rds_restore_db_cluster_to_point_in_time_:_DBClusterInstanceClass">DBClusterInstanceClass</code></td>
<td><p>The compute and memory capacity of the each DB instance in the
Multi-AZ DB cluster, for example db.m6gd.xlarge. Not all DB instance
classes are available in all Amazon Web Services Regions, or for all
database engines.</p>
<p>For the full list of DB instance classes, and availability for your
engine, see <a
href="https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Concepts.DBInstanceClass.html">DB
instance class</a> in the <em>Amazon RDS User Guide.</em></p>
<p>Valid for: Multi-AZ DB clusters only</p></td>
</tr>
<tr class="odd">
<td><code
id="rds_restore_db_cluster_to_point_in_time_:_StorageType">StorageType</code></td>
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
<tr class="even">
<td><code
id="rds_restore_db_cluster_to_point_in_time_:_PubliclyAccessible">PubliclyAccessible</code></td>
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
<p>Valid for: Multi-AZ DB clusters only</p></td>
</tr>
<tr class="odd">
<td><code
id="rds_restore_db_cluster_to_point_in_time_:_Iops">Iops</code></td>
<td><p>The amount of Provisioned IOPS (input/output operations per
second) to be initially allocated for each DB instance in the Multi-AZ
DB cluster.</p>
<p>For information about valid IOPS values, see <a
href="https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/CHAP_Storage.html#USER_PIOPS">Amazon
RDS Provisioned IOPS storage</a> in the <em>Amazon RDS User
Guide</em>.</p>
<p>Constraints: Must be a multiple between .5 and 50 of the storage
amount for the DB instance.</p>
<p>Valid for: Multi-AZ DB clusters only</p></td>
</tr>
<tr class="even">
<td><code
id="rds_restore_db_cluster_to_point_in_time_:_ServerlessV2ScalingConfiguration">ServerlessV2ScalingConfiguration</code></td>
<td></td>
</tr>
<tr class="odd">
<td><code
id="rds_restore_db_cluster_to_point_in_time_:_NetworkType">NetworkType</code></td>
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
      BacktrackWindow = 123,
      EnableCloudwatchLogsExports = list(
        "string"
      ),
      DBClusterParameterGroupName = "string",
      DeletionProtection = TRUE|FALSE,
      CopyTagsToSnapshot = TRUE|FALSE,
      Domain = "string",
      DomainIAMRoleName = "string",
      ScalingConfiguration = list(
        MinCapacity = 123,
        MaxCapacity = 123,
        AutoPause = TRUE|FALSE,
        SecondsUntilAutoPause = 123,
        TimeoutAction = "string",
        SecondsBeforeTimeout = 123
      ),
      EngineMode = "string",
      DBClusterInstanceClass = "string",
      StorageType = "string",
      PubliclyAccessible = TRUE|FALSE,
      Iops = 123,
      ServerlessV2ScalingConfiguration = list(
        MinCapacity = 123.0,
        MaxCapacity = 123.0
      ),
      NetworkType = "string"
    )
