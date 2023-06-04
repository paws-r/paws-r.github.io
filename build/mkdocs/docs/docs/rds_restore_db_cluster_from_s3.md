<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>rds_restore_db_cluster_from_s3</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates an Amazon Aurora DB cluster from MySQL data stored in an Amazon S3 bucket

### Description

Creates an Amazon Aurora DB cluster from MySQL data stored in an Amazon
S3 bucket. Amazon RDS must be authorized to access the Amazon S3 bucket
and the data must be created using the Percona XtraBackup utility as
described in [Migrating Data from MySQL by Using an Amazon S3
Bucket](https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/AuroraMySQL.Migrating.ExtMySQL.html#AuroraMySQL.Migrating.ExtMySQL.S3)
in the *Amazon Aurora User Guide*.

This action only restores the DB cluster, not the DB instances for that
DB cluster. You must invoke the `create_db_instance` action to create DB
instances for the restored DB cluster, specifying the identifier of the
restored DB cluster in `DBClusterIdentifier`. You can create DB
instances only after the `restore_db_cluster_from_s3` action has
completed and the DB cluster is available.

For more information on Amazon Aurora, see [What is Amazon
Aurora?](https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/CHAP_AuroraOverview.html)
in the *Amazon Aurora User Guide*.

This action only applies to Aurora DB clusters. The source DB engine
must be MySQL.

### Usage

    rds_restore_db_cluster_from_s3(AvailabilityZones, BackupRetentionPeriod,
      CharacterSetName, DatabaseName, DBClusterIdentifier,
      DBClusterParameterGroupName, VpcSecurityGroupIds, DBSubnetGroupName,
      Engine, EngineVersion, Port, MasterUsername, MasterUserPassword,
      OptionGroupName, PreferredBackupWindow, PreferredMaintenanceWindow,
      Tags, StorageEncrypted, KmsKeyId, EnableIAMDatabaseAuthentication,
      SourceEngine, SourceEngineVersion, S3BucketName, S3Prefix,
      S3IngestionRoleArn, BacktrackWindow, EnableCloudwatchLogsExports,
      DeletionProtection, CopyTagsToSnapshot, Domain, DomainIAMRoleName,
      ServerlessV2ScalingConfiguration, NetworkType, ManageMasterUserPassword,
      MasterUserSecretKmsKeyId, StorageType)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="rds_restore_db_cluster_from_s3_:_AvailabilityZones">AvailabilityZones</code></td>
<td><p>A list of Availability Zones (AZs) where instances in the
restored DB cluster can be created.</p></td>
</tr>
<tr class="even">
<td><code
id="rds_restore_db_cluster_from_s3_:_BackupRetentionPeriod">BackupRetentionPeriod</code></td>
<td><p>The number of days for which automated backups of the restored DB
cluster are retained. You must specify a minimum value of 1.</p>
<p>Default: 1</p>
<p>Constraints:</p>
<ul>
<li><p>Must be a value from 1 to 35</p></li>
</ul></td>
</tr>
<tr class="odd">
<td><code
id="rds_restore_db_cluster_from_s3_:_CharacterSetName">CharacterSetName</code></td>
<td><p>A value that indicates that the restored DB cluster should be
associated with the specified CharacterSet.</p></td>
</tr>
<tr class="even">
<td><code
id="rds_restore_db_cluster_from_s3_:_DatabaseName">DatabaseName</code></td>
<td><p>The database name for the restored DB cluster.</p></td>
</tr>
<tr class="odd">
<td><code
id="rds_restore_db_cluster_from_s3_:_DBClusterIdentifier">DBClusterIdentifier</code></td>
<td><p>[required] The name of the DB cluster to create from the source
data in the Amazon S3 bucket. This parameter isn't case-sensitive.</p>
<p>Constraints:</p>
<ul>
<li><p>Must contain from 1 to 63 letters, numbers, or hyphens.</p></li>
<li><p>First character must be a letter.</p></li>
<li><p>Can't end with a hyphen or contain two consecutive
hyphens.</p></li>
</ul>
<p>Example: <code>my-cluster1</code></p></td>
</tr>
<tr class="even">
<td><code
id="rds_restore_db_cluster_from_s3_:_DBClusterParameterGroupName">DBClusterParameterGroupName</code></td>
<td><p>The name of the DB cluster parameter group to associate with the
restored DB cluster. If this argument is omitted, the default parameter
group for the engine version is used.</p>
<p>Constraints:</p>
<ul>
<li><p>If supplied, must match the name of an existing
DBClusterParameterGroup.</p></li>
</ul></td>
</tr>
<tr class="odd">
<td><code
id="rds_restore_db_cluster_from_s3_:_VpcSecurityGroupIds">VpcSecurityGroupIds</code></td>
<td><p>A list of EC2 VPC security groups to associate with the restored
DB cluster.</p></td>
</tr>
<tr class="even">
<td><code
id="rds_restore_db_cluster_from_s3_:_DBSubnetGroupName">DBSubnetGroupName</code></td>
<td><p>A DB subnet group to associate with the restored DB cluster.</p>
<p>Constraints: If supplied, must match the name of an existing
DBSubnetGroup.</p>
<p>Example: <code>mydbsubnetgroup</code></p></td>
</tr>
<tr class="odd">
<td><code
id="rds_restore_db_cluster_from_s3_:_Engine">Engine</code></td>
<td><p>[required] The name of the database engine to be used for this DB
cluster.</p>
<p>Valid Values: <code>aurora-mysql</code> (for Aurora MySQL)</p></td>
</tr>
<tr class="even">
<td><code
id="rds_restore_db_cluster_from_s3_:_EngineVersion">EngineVersion</code></td>
<td><p>The version number of the database engine to use.</p>
<p>To list all of the available engine versions for
<code>aurora-mysql</code> (Aurora MySQL), use the following command:</p>
<p><code
style="white-space: pre;">⁠aws rds describe-db-engine-versions --engine aurora-mysql --query "DBEngineVersions[].EngineVersion"⁠</code></p>
<p><strong>Aurora MySQL</strong></p>
<p>Examples: <code
style="white-space: pre;">⁠5.7.mysql_aurora.2.07.1⁠</code>, <code
style="white-space: pre;">⁠8.0.mysql_aurora.3.02.0⁠</code></p></td>
</tr>
<tr class="odd">
<td><code id="rds_restore_db_cluster_from_s3_:_Port">Port</code></td>
<td><p>The port number on which the instances in the restored DB cluster
accept connections.</p>
<p>Default: <code>3306</code></p></td>
</tr>
<tr class="even">
<td><code
id="rds_restore_db_cluster_from_s3_:_MasterUsername">MasterUsername</code></td>
<td><p>[required] The name of the master user for the restored DB
cluster.</p>
<p>Constraints:</p>
<ul>
<li><p>Must be 1 to 16 letters or numbers.</p></li>
<li><p>First character must be a letter.</p></li>
<li><p>Can't be a reserved word for the chosen database engine.</p></li>
</ul></td>
</tr>
<tr class="odd">
<td><code
id="rds_restore_db_cluster_from_s3_:_MasterUserPassword">MasterUserPassword</code></td>
<td><p>The password for the master database user. This password can
contain any printable ASCII character except "/", """, or "@".</p>
<p>Constraints:</p>
<ul>
<li><p>Must contain from 8 to 41 characters.</p></li>
<li><p>Can't be specified if <code>ManageMasterUserPassword</code> is
turned on.</p></li>
</ul></td>
</tr>
<tr class="even">
<td><code
id="rds_restore_db_cluster_from_s3_:_OptionGroupName">OptionGroupName</code></td>
<td><p>A value that indicates that the restored DB cluster should be
associated with the specified option group.</p>
<p>Permanent options can't be removed from an option group. An option
group can't be removed from a DB cluster once it is associated with a DB
cluster.</p></td>
</tr>
<tr class="odd">
<td><code
id="rds_restore_db_cluster_from_s3_:_PreferredBackupWindow">PreferredBackupWindow</code></td>
<td><p>The daily time range during which automated backups are created
if automated backups are enabled using the
<code>BackupRetentionPeriod</code> parameter.</p>
<p>The default is a 30-minute window selected at random from an 8-hour
block of time for each Amazon Web Services Region. To view the time
blocks available, see <a
href="https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/Aurora.Managing.Backups.html#Aurora.Managing.Backups.BackupWindow">Backup
window</a> in the <em>Amazon Aurora User Guide</em>.</p>
<p>Constraints:</p>
<ul>
<li><p>Must be in the format <code>hh24:mi-hh24:mi</code>.</p></li>
<li><p>Must be in Universal Coordinated Time (UTC).</p></li>
<li><p>Must not conflict with the preferred maintenance window.</p></li>
<li><p>Must be at least 30 minutes.</p></li>
</ul></td>
</tr>
<tr class="even">
<td><code
id="rds_restore_db_cluster_from_s3_:_PreferredMaintenanceWindow">PreferredMaintenanceWindow</code></td>
<td><p>The weekly time range during which system maintenance can occur,
in Universal Coordinated Time (UTC).</p>
<p>Format: <code>ddd:hh24:mi-ddd:hh24:mi</code></p>
<p>The default is a 30-minute window selected at random from an 8-hour
block of time for each Amazon Web Services Region, occurring on a random
day of the week. To see the time blocks available, see <a
href="https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/USER_UpgradeDBInstance.Maintenance.html#AdjustingTheMaintenanceWindow.Aurora">Adjusting
the Preferred Maintenance Window</a> in the <em>Amazon Aurora User
Guide</em>.</p>
<p>Valid Days: Mon, Tue, Wed, Thu, Fri, Sat, Sun.</p>
<p>Constraints: Minimum 30-minute window.</p></td>
</tr>
<tr class="odd">
<td><code id="rds_restore_db_cluster_from_s3_:_Tags">Tags</code></td>
<td></td>
</tr>
<tr class="even">
<td><code
id="rds_restore_db_cluster_from_s3_:_StorageEncrypted">StorageEncrypted</code></td>
<td><p>A value that indicates whether the restored DB cluster is
encrypted.</p></td>
</tr>
<tr class="odd">
<td><code
id="rds_restore_db_cluster_from_s3_:_KmsKeyId">KmsKeyId</code></td>
<td><p>The Amazon Web Services KMS key identifier for an encrypted DB
cluster.</p>
<p>The Amazon Web Services KMS key identifier is the key ARN, key ID,
alias ARN, or alias name for the KMS key. To use a KMS key in a
different Amazon Web Services account, specify the key ARN or alias
ARN.</p>
<p>If the StorageEncrypted parameter is enabled, and you do not specify
a value for the <code>KmsKeyId</code> parameter, then Amazon RDS will
use your default KMS key. There is a default KMS key for your Amazon Web
Services account. Your Amazon Web Services account has a different
default KMS key for each Amazon Web Services Region.</p></td>
</tr>
<tr class="even">
<td><code
id="rds_restore_db_cluster_from_s3_:_EnableIAMDatabaseAuthentication">EnableIAMDatabaseAuthentication</code></td>
<td><p>A value that indicates whether to enable mapping of Amazon Web
Services Identity and Access Management (IAM) accounts to database
accounts. By default, mapping isn't enabled.</p>
<p>For more information, see <a
href="https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/UsingWithRDS.IAMDBAuth.html">IAM
Database Authentication</a> in the <em>Amazon Aurora User
Guide</em>.</p></td>
</tr>
<tr class="odd">
<td><code
id="rds_restore_db_cluster_from_s3_:_SourceEngine">SourceEngine</code></td>
<td><p>[required] The identifier for the database engine that was backed
up to create the files stored in the Amazon S3 bucket.</p>
<p>Valid values: <code>mysql</code></p></td>
</tr>
<tr class="even">
<td><code
id="rds_restore_db_cluster_from_s3_:_SourceEngineVersion">SourceEngineVersion</code></td>
<td><p>[required] The version of the database that the backup files were
created from.</p>
<p>MySQL versions 5.5, 5.6, and 5.7 are supported.</p>
<p>Example: <code style="white-space: pre;">⁠5.6.40⁠</code>, <code
style="white-space: pre;">⁠5.7.28⁠</code></p></td>
</tr>
<tr class="odd">
<td><code
id="rds_restore_db_cluster_from_s3_:_S3BucketName">S3BucketName</code></td>
<td><p>[required] The name of the Amazon S3 bucket that contains the
data used to create the Amazon Aurora DB cluster.</p></td>
</tr>
<tr class="even">
<td><code
id="rds_restore_db_cluster_from_s3_:_S3Prefix">S3Prefix</code></td>
<td><p>The prefix for all of the file names that contain the data used
to create the Amazon Aurora DB cluster. If you do not specify a
<strong>SourceS3Prefix</strong> value, then the Amazon Aurora DB cluster
is created by using all of the files in the Amazon S3 bucket.</p></td>
</tr>
<tr class="odd">
<td><code
id="rds_restore_db_cluster_from_s3_:_S3IngestionRoleArn">S3IngestionRoleArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the Amazon Web
Services Identity and Access Management (IAM) role that authorizes
Amazon RDS to access the Amazon S3 bucket on your behalf.</p></td>
</tr>
<tr class="even">
<td><code
id="rds_restore_db_cluster_from_s3_:_BacktrackWindow">BacktrackWindow</code></td>
<td><p>The target backtrack window, in seconds. To disable backtracking,
set this value to 0.</p>
<p>Currently, Backtrack is only supported for Aurora MySQL DB
clusters.</p>
<p>Default: 0</p>
<p>Constraints:</p>
<ul>
<li><p>If specified, this value must be set to a number from 0 to
259,200 (72 hours).</p></li>
</ul></td>
</tr>
<tr class="odd">
<td><code
id="rds_restore_db_cluster_from_s3_:_EnableCloudwatchLogsExports">EnableCloudwatchLogsExports</code></td>
<td><p>The list of logs that the restored DB cluster is to export to
CloudWatch Logs. The values in the list depend on the DB engine being
used.</p>
<p><strong>Aurora MySQL</strong></p>
<p>Possible values are <code>audit</code>, <code>error</code>,
<code>general</code>, and <code>slowquery</code>.</p>
<p>For more information about exporting CloudWatch Logs for Amazon
Aurora, see <a
href="https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/USER_LogAccess.html#USER_LogAccess.Procedural.UploadtoCloudWatch">Publishing
Database Logs to Amazon CloudWatch Logs</a> in the <em>Amazon Aurora
User Guide</em>.</p></td>
</tr>
<tr class="even">
<td><code
id="rds_restore_db_cluster_from_s3_:_DeletionProtection">DeletionProtection</code></td>
<td><p>A value that indicates whether the DB cluster has deletion
protection enabled. The database can't be deleted when deletion
protection is enabled. By default, deletion protection isn't
enabled.</p></td>
</tr>
<tr class="odd">
<td><code
id="rds_restore_db_cluster_from_s3_:_CopyTagsToSnapshot">CopyTagsToSnapshot</code></td>
<td><p>A value that indicates whether to copy all tags from the restored
DB cluster to snapshots of the restored DB cluster. The default is not
to copy them.</p></td>
</tr>
<tr class="even">
<td><code
id="rds_restore_db_cluster_from_s3_:_Domain">Domain</code></td>
<td><p>Specify the Active Directory directory ID to restore the DB
cluster in. The domain must be created prior to this operation.</p>
<p>For Amazon Aurora DB clusters, Amazon RDS can use Kerberos
Authentication to authenticate users that connect to the DB cluster. For
more information, see <a
href="https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/database-authentication.html">Kerberos
Authentication</a> in the <em>Amazon Aurora User Guide</em>.</p></td>
</tr>
<tr class="odd">
<td><code
id="rds_restore_db_cluster_from_s3_:_DomainIAMRoleName">DomainIAMRoleName</code></td>
<td><p>Specify the name of the IAM role to be used when making API calls
to the Directory Service.</p></td>
</tr>
<tr class="even">
<td><code
id="rds_restore_db_cluster_from_s3_:_ServerlessV2ScalingConfiguration">ServerlessV2ScalingConfiguration</code></td>
<td></td>
</tr>
<tr class="odd">
<td><code
id="rds_restore_db_cluster_from_s3_:_NetworkType">NetworkType</code></td>
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
Guide.</em></p></td>
</tr>
<tr class="even">
<td><code
id="rds_restore_db_cluster_from_s3_:_ManageMasterUserPassword">ManageMasterUserPassword</code></td>
<td><p>A value that indicates whether to manage the master user password
with Amazon Web Services Secrets Manager.</p>
<p>For more information, see <a
href="https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/rds-secrets-manager.html">Password
management with Amazon Web Services Secrets Manager</a> in the
<em>Amazon RDS User Guide</em> and <a
href="https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/rds-secrets-manager.html">Password
management with Amazon Web Services Secrets Manager</a> in the
<em>Amazon Aurora User Guide.</em></p>
<p>Constraints:</p>
<ul>
<li><p>Can't manage the master user password with Amazon Web Services
Secrets Manager if <code>MasterUserPassword</code> is
specified.</p></li>
</ul></td>
</tr>
<tr class="odd">
<td><code
id="rds_restore_db_cluster_from_s3_:_MasterUserSecretKmsKeyId">MasterUserSecretKmsKeyId</code></td>
<td><p>The Amazon Web Services KMS key identifier to encrypt a secret
that is automatically generated and managed in Amazon Web Services
Secrets Manager.</p>
<p>This setting is valid only if the master user password is managed by
RDS in Amazon Web Services Secrets Manager for the DB cluster.</p>
<p>The Amazon Web Services KMS key identifier is the key ARN, key ID,
alias ARN, or alias name for the KMS key. To use a KMS key in a
different Amazon Web Services account, specify the key ARN or alias
ARN.</p>
<p>If you don't specify <code>MasterUserSecretKmsKeyId</code>, then the
<code>aws/secretsmanager</code> KMS key is used to encrypt the secret.
If the secret is in a different Amazon Web Services account, then you
can't use the <code>aws/secretsmanager</code> KMS key to encrypt the
secret, and you must use a customer managed KMS key.</p>
<p>There is a default KMS key for your Amazon Web Services account. Your
Amazon Web Services account has a different default KMS key for each
Amazon Web Services Region.</p></td>
</tr>
<tr class="even">
<td><code
id="rds_restore_db_cluster_from_s3_:_StorageType">StorageType</code></td>
<td><p>Specifies the storage type to be associated with the DB
cluster.</p>
<p>Valid values: <code>aurora</code>, <code>aurora-iopt1</code></p>
<p>Default: <code>aurora</code></p>
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

    svc$restore_db_cluster_from_s3(
      AvailabilityZones = list(
        "string"
      ),
      BackupRetentionPeriod = 123,
      CharacterSetName = "string",
      DatabaseName = "string",
      DBClusterIdentifier = "string",
      DBClusterParameterGroupName = "string",
      VpcSecurityGroupIds = list(
        "string"
      ),
      DBSubnetGroupName = "string",
      Engine = "string",
      EngineVersion = "string",
      Port = 123,
      MasterUsername = "string",
      MasterUserPassword = "string",
      OptionGroupName = "string",
      PreferredBackupWindow = "string",
      PreferredMaintenanceWindow = "string",
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      ),
      StorageEncrypted = TRUE|FALSE,
      KmsKeyId = "string",
      EnableIAMDatabaseAuthentication = TRUE|FALSE,
      SourceEngine = "string",
      SourceEngineVersion = "string",
      S3BucketName = "string",
      S3Prefix = "string",
      S3IngestionRoleArn = "string",
      BacktrackWindow = 123,
      EnableCloudwatchLogsExports = list(
        "string"
      ),
      DeletionProtection = TRUE|FALSE,
      CopyTagsToSnapshot = TRUE|FALSE,
      Domain = "string",
      DomainIAMRoleName = "string",
      ServerlessV2ScalingConfiguration = list(
        MinCapacity = 123.0,
        MaxCapacity = 123.0
      ),
      NetworkType = "string",
      ManageMasterUserPassword = TRUE|FALSE,
      MasterUserSecretKmsKeyId = "string",
      StorageType = "string"
    )
