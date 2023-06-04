<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>rds_restore_db_instance_from_db_snapshot</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a new DB instance from a DB snapshot

### Description

Creates a new DB instance from a DB snapshot. The target database is
created from the source database restore point with most of the source's
original configuration, including the default security group and DB
parameter group. By default, the new DB instance is created as a
Single-AZ deployment, except when the instance is a SQL Server instance
that has an option group associated with mirroring. In this case, the
instance becomes a Multi-AZ deployment, not a Single-AZ deployment.

If you want to replace your original DB instance with the new, restored
DB instance, then rename your original DB instance before you call the
RestoreDBInstanceFromDBSnapshot action. RDS doesn't allow two DB
instances with the same name. After you have renamed your original DB
instance with a different identifier, then you can pass the original
name of the DB instance as the DBInstanceIdentifier in the call to the
RestoreDBInstanceFromDBSnapshot action. The result is that you replace
the original DB instance with the DB instance created from the snapshot.

If you are restoring from a shared manual DB snapshot, the
`DBSnapshotIdentifier` must be the ARN of the shared DB snapshot.

This command doesn't apply to Aurora MySQL and Aurora PostgreSQL. For
Aurora, use `restore_db_cluster_from_snapshot`.

### Usage

    rds_restore_db_instance_from_db_snapshot(DBInstanceIdentifier,
      DBSnapshotIdentifier, DBInstanceClass, Port, AvailabilityZone,
      DBSubnetGroupName, MultiAZ, PubliclyAccessible, AutoMinorVersionUpgrade,
      LicenseModel, DBName, Engine, Iops, OptionGroupName, Tags, StorageType,
      TdeCredentialArn, TdeCredentialPassword, VpcSecurityGroupIds, Domain,
      CopyTagsToSnapshot, DomainIAMRoleName, EnableIAMDatabaseAuthentication,
      EnableCloudwatchLogsExports, ProcessorFeatures,
      UseDefaultProcessorFeatures, DBParameterGroupName, DeletionProtection,
      EnableCustomerOwnedIp, CustomIamInstanceProfile, BackupTarget,
      NetworkType, StorageThroughput, DBClusterSnapshotIdentifier,
      AllocatedStorage)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="rds_restore_db_instance_from_db_snapshot_:_DBInstanceIdentifier">DBInstanceIdentifier</code></td>
<td><p>[required] Name of the DB instance to create from the DB
snapshot. This parameter isn't case-sensitive.</p>
<p>Constraints:</p>
<ul>
<li><p>Must contain from 1 to 63 numbers, letters, or hyphens</p></li>
<li><p>First character must be a letter</p></li>
<li><p>Can't end with a hyphen or contain two consecutive
hyphens</p></li>
</ul>
<p>Example: <code>my-snapshot-id</code></p></td>
</tr>
<tr class="even">
<td><code
id="rds_restore_db_instance_from_db_snapshot_:_DBSnapshotIdentifier">DBSnapshotIdentifier</code></td>
<td><p>The identifier for the DB snapshot to restore from.</p>
<p>Constraints:</p>
<ul>
<li><p>Must match the identifier of an existing DBSnapshot.</p></li>
<li><p>Can't be specified when <code>DBClusterSnapshotIdentifier</code>
is specified.</p></li>
<li><p>Must be specified when <code>DBClusterSnapshotIdentifier</code>
isn't specified.</p></li>
<li><p>If you are restoring from a shared manual DB snapshot, the
<code>DBSnapshotIdentifier</code> must be the ARN of the shared DB
snapshot.</p></li>
</ul></td>
</tr>
<tr class="odd">
<td><code
id="rds_restore_db_instance_from_db_snapshot_:_DBInstanceClass">DBInstanceClass</code></td>
<td><p>The compute and memory capacity of the Amazon RDS DB instance,
for example db.m4.large. Not all DB instance classes are available in
all Amazon Web Services Regions, or for all database engines. For the
full list of DB instance classes, and availability for your engine, see
<a
href="https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Concepts.DBInstanceClass.html">DB
Instance Class</a> in the <em>Amazon RDS User Guide.</em></p>
<p>Default: The same DBInstanceClass as the original DB
instance.</p></td>
</tr>
<tr class="even">
<td><code
id="rds_restore_db_instance_from_db_snapshot_:_Port">Port</code></td>
<td><p>The port number on which the database accepts connections.</p>
<p>Default: The same port as the original DB instance</p>
<p>Constraints: Value must be <code>1150-65535</code></p></td>
</tr>
<tr class="odd">
<td><code
id="rds_restore_db_instance_from_db_snapshot_:_AvailabilityZone">AvailabilityZone</code></td>
<td><p>The Availability Zone (AZ) where the DB instance will be
created.</p>
<p>Default: A random, system-chosen Availability Zone.</p>
<p>Constraint: You can't specify the <code>AvailabilityZone</code>
parameter if the DB instance is a Multi-AZ deployment.</p>
<p>Example: <code style="white-space: pre;">⁠us-east-1a⁠</code></p></td>
</tr>
<tr class="even">
<td><code
id="rds_restore_db_instance_from_db_snapshot_:_DBSubnetGroupName">DBSubnetGroupName</code></td>
<td><p>The DB subnet group name to use for the new instance.</p>
<p>Constraints: If supplied, must match the name of an existing
DBSubnetGroup.</p>
<p>Example: <code>mydbsubnetgroup</code></p></td>
</tr>
<tr class="odd">
<td><code
id="rds_restore_db_instance_from_db_snapshot_:_MultiAZ">MultiAZ</code></td>
<td><p>A value that indicates whether the DB instance is a Multi-AZ
deployment.</p>
<p>This setting doesn't apply to RDS Custom.</p>
<p>Constraint: You can't specify the <code>AvailabilityZone</code>
parameter if the DB instance is a Multi-AZ deployment.</p></td>
</tr>
<tr class="even">
<td><code
id="rds_restore_db_instance_from_db_snapshot_:_PubliclyAccessible">PubliclyAccessible</code></td>
<td><p>A value that indicates whether the DB instance is publicly
accessible.</p>
<p>When the DB instance is publicly accessible, its Domain Name System
(DNS) endpoint resolves to the private IP address from within the DB
instance's virtual private cloud (VPC). It resolves to the public IP
address from outside of the DB instance's VPC. Access to the DB instance
is ultimately controlled by the security group it uses. That public
access is not permitted if the security group assigned to the DB
instance doesn't permit it.</p>
<p>When the DB instance isn't publicly accessible, it is an internal DB
instance with a DNS name that resolves to a private IP address.</p>
<p>For more information, see <code>create_db_instance</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="rds_restore_db_instance_from_db_snapshot_:_AutoMinorVersionUpgrade">AutoMinorVersionUpgrade</code></td>
<td><p>A value that indicates whether minor version upgrades are applied
automatically to the DB instance during the maintenance window.</p>
<p>If you restore an RDS Custom DB instance, you must disable this
parameter.</p></td>
</tr>
<tr class="even">
<td><code
id="rds_restore_db_instance_from_db_snapshot_:_LicenseModel">LicenseModel</code></td>
<td><p>License model information for the restored DB instance.</p>
<p>This setting doesn't apply to RDS Custom.</p>
<p>Default: Same as source.</p>
<p>Valid values: <code>license-included</code> |
<code>bring-your-own-license</code> |
<code>general-public-license</code></p></td>
</tr>
<tr class="odd">
<td><code
id="rds_restore_db_instance_from_db_snapshot_:_DBName">DBName</code></td>
<td><p>The database name for the restored DB instance.</p>
<p>This parameter doesn't apply to the MySQL, PostgreSQL, or MariaDB
engines. It also doesn't apply to RDS Custom DB instances.</p></td>
</tr>
<tr class="even">
<td><code
id="rds_restore_db_instance_from_db_snapshot_:_Engine">Engine</code></td>
<td><p>The database engine to use for the new instance.</p>
<p>This setting doesn't apply to RDS Custom.</p>
<p>Default: The same as source</p>
<p>Constraint: Must be compatible with the engine of the source. For
example, you can restore a MariaDB 10.1 DB instance from a MySQL 5.6
snapshot.</p>
<p>Valid Values:</p>
<ul>
<li><p><code>mariadb</code></p></li>
<li><p><code>mysql</code></p></li>
<li><p><code>oracle-ee</code></p></li>
<li><p><code>oracle-ee-cdb</code></p></li>
<li><p><code>oracle-se2</code></p></li>
<li><p><code>oracle-se2-cdb</code></p></li>
<li><p><code>postgres</code></p></li>
<li><p><code>sqlserver-ee</code></p></li>
<li><p><code>sqlserver-se</code></p></li>
<li><p><code>sqlserver-ex</code></p></li>
<li><p><code>sqlserver-web</code></p></li>
</ul></td>
</tr>
<tr class="odd">
<td><code
id="rds_restore_db_instance_from_db_snapshot_:_Iops">Iops</code></td>
<td><p>Specifies the amount of provisioned IOPS for the DB instance,
expressed in I/O operations per second. If this parameter isn't
specified, the IOPS value is taken from the backup. If this parameter is
set to 0, the new instance is converted to a non-PIOPS instance. The
conversion takes additional time, though your DB instance is available
for connections before the conversion starts.</p>
<p>The provisioned IOPS value must follow the requirements for your
database engine. For more information, see <a
href="https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/CHAP_Storage.html#USER_PIOPS">Amazon
RDS Provisioned IOPS storage</a> in the <em>Amazon RDS User
Guide.</em></p>
<p>Constraints: Must be an integer greater than 1000.</p></td>
</tr>
<tr class="even">
<td><code
id="rds_restore_db_instance_from_db_snapshot_:_OptionGroupName">OptionGroupName</code></td>
<td><p>The name of the option group to be used for the restored DB
instance.</p>
<p>Permanent options, such as the TDE option for Oracle Advanced
Security TDE, can't be removed from an option group, and that option
group can't be removed from a DB instance after it is associated with a
DB instance.</p>
<p>This setting doesn't apply to RDS Custom.</p></td>
</tr>
<tr class="odd">
<td><code
id="rds_restore_db_instance_from_db_snapshot_:_Tags">Tags</code></td>
<td></td>
</tr>
<tr class="even">
<td><code
id="rds_restore_db_instance_from_db_snapshot_:_StorageType">StorageType</code></td>
<td><p>Specifies the storage type to be associated with the DB
instance.</p>
<p>Valid values: <code>gp2 | gp3 | io1 | standard</code></p>
<p>If you specify <code>io1</code> or <code>gp3</code>, you must also
include a value for the <code>Iops</code> parameter.</p>
<p>Default: <code>io1</code> if the <code>Iops</code> parameter is
specified, otherwise <code>gp2</code></p></td>
</tr>
<tr class="odd">
<td><code
id="rds_restore_db_instance_from_db_snapshot_:_TdeCredentialArn">TdeCredentialArn</code></td>
<td><p>The ARN from the key store with which to associate the instance
for TDE encryption.</p>
<p>This setting doesn't apply to RDS Custom.</p></td>
</tr>
<tr class="even">
<td><code
id="rds_restore_db_instance_from_db_snapshot_:_TdeCredentialPassword">TdeCredentialPassword</code></td>
<td><p>The password for the given ARN from the key store in order to
access the device.</p>
<p>This setting doesn't apply to RDS Custom.</p></td>
</tr>
<tr class="odd">
<td><code
id="rds_restore_db_instance_from_db_snapshot_:_VpcSecurityGroupIds">VpcSecurityGroupIds</code></td>
<td><p>A list of EC2 VPC security groups to associate with this DB
instance.</p>
<p>Default: The default EC2 VPC security group for the DB subnet group's
VPC.</p></td>
</tr>
<tr class="even">
<td><code
id="rds_restore_db_instance_from_db_snapshot_:_Domain">Domain</code></td>
<td><p>Specify the Active Directory directory ID to restore the DB
instance in. The domain/ must be created prior to this operation.
Currently, you can create only MySQL, Microsoft SQL Server, Oracle, and
PostgreSQL DB instances in an Active Directory Domain.</p>
<p>For more information, see <a
href="https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/database-authentication.html">Kerberos
Authentication</a> in the <em>Amazon RDS User Guide</em>.</p>
<p>This setting doesn't apply to RDS Custom.</p></td>
</tr>
<tr class="odd">
<td><code
id="rds_restore_db_instance_from_db_snapshot_:_CopyTagsToSnapshot">CopyTagsToSnapshot</code></td>
<td><p>A value that indicates whether to copy all tags from the restored
DB instance to snapshots of the DB instance.</p>
<p>In most cases, tags aren't copied by default. However, when you
restore a DB instance from a DB snapshot, RDS checks whether you specify
new tags. If yes, the new tags are added to the restored DB instance. If
there are no new tags, RDS looks for the tags from the source DB
instance for the DB snapshot, and then adds those tags to the restored
DB instance.</p>
<p>For more information, see <a
href="https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Tagging.html#USER_Tagging.CopyTags">Copying
tags to DB instance snapshots</a> in the <em>Amazon RDS User
Guide</em>.</p></td>
</tr>
<tr class="even">
<td><code
id="rds_restore_db_instance_from_db_snapshot_:_DomainIAMRoleName">DomainIAMRoleName</code></td>
<td><p>Specify the name of the IAM role to be used when making API calls
to the Directory Service.</p>
<p>This setting doesn't apply to RDS Custom.</p></td>
</tr>
<tr class="odd">
<td><code
id="rds_restore_db_instance_from_db_snapshot_:_EnableIAMDatabaseAuthentication">EnableIAMDatabaseAuthentication</code></td>
<td><p>A value that indicates whether to enable mapping of Amazon Web
Services Identity and Access Management (IAM) accounts to database
accounts. By default, mapping is disabled.</p>
<p>For more information about IAM database authentication, see <a
href="https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/UsingWithRDS.IAMDBAuth.html">IAM
Database Authentication for MySQL and PostgreSQL</a> in the <em>Amazon
RDS User Guide.</em></p>
<p>This setting doesn't apply to RDS Custom.</p></td>
</tr>
<tr class="even">
<td><code
id="rds_restore_db_instance_from_db_snapshot_:_EnableCloudwatchLogsExports">EnableCloudwatchLogsExports</code></td>
<td><p>The list of logs that the restored DB instance is to export to
CloudWatch Logs. The values in the list depend on the DB engine being
used. For more information, see <a
href="https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_LogAccess.html#USER_LogAccess.Procedural.UploadtoCloudWatch">Publishing
Database Logs to Amazon CloudWatch Logs</a> in the <em>Amazon RDS User
Guide</em>.</p>
<p>This setting doesn't apply to RDS Custom.</p></td>
</tr>
<tr class="odd">
<td><code
id="rds_restore_db_instance_from_db_snapshot_:_ProcessorFeatures">ProcessorFeatures</code></td>
<td><p>The number of CPU cores and the number of threads per core for
the DB instance class of the DB instance.</p>
<p>This setting doesn't apply to RDS Custom.</p></td>
</tr>
<tr class="even">
<td><code
id="rds_restore_db_instance_from_db_snapshot_:_UseDefaultProcessorFeatures">UseDefaultProcessorFeatures</code></td>
<td><p>A value that indicates whether the DB instance class of the DB
instance uses its default processor features.</p>
<p>This setting doesn't apply to RDS Custom.</p></td>
</tr>
<tr class="odd">
<td><code
id="rds_restore_db_instance_from_db_snapshot_:_DBParameterGroupName">DBParameterGroupName</code></td>
<td><p>The name of the DB parameter group to associate with this DB
instance.</p>
<p>If you don't specify a value for <code>DBParameterGroupName</code>,
then RDS uses the default <code>DBParameterGroup</code> for the
specified DB engine.</p>
<p>This setting doesn't apply to RDS Custom.</p>
<p>Constraints:</p>
<ul>
<li><p>If supplied, must match the name of an existing
DBParameterGroup.</p></li>
<li><p>Must be 1 to 255 letters, numbers, or hyphens.</p></li>
<li><p>First character must be a letter.</p></li>
<li><p>Can't end with a hyphen or contain two consecutive
hyphens.</p></li>
</ul></td>
</tr>
<tr class="even">
<td><code
id="rds_restore_db_instance_from_db_snapshot_:_DeletionProtection">DeletionProtection</code></td>
<td><p>A value that indicates whether the DB instance has deletion
protection enabled. The database can't be deleted when deletion
protection is enabled. By default, deletion protection isn't enabled.
For more information, see <a
href="https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_DeleteInstance.html">Deleting
a DB Instance</a>.</p></td>
</tr>
<tr class="odd">
<td><code
id="rds_restore_db_instance_from_db_snapshot_:_EnableCustomerOwnedIp">EnableCustomerOwnedIp</code></td>
<td><p>A value that indicates whether to enable a customer-owned IP
address (CoIP) for an RDS on Outposts DB instance.</p>
<p>A <em>CoIP</em> provides local or external connectivity to resources
in your Outpost subnets through your on-premises network. For some use
cases, a CoIP can provide lower latency for connections to the DB
instance from outside of its virtual private cloud (VPC) on your local
network.</p>
<p>This setting doesn't apply to RDS Custom.</p>
<p>For more information about RDS on Outposts, see <a
href="https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/rds-on-outposts.html">Working
with Amazon RDS on Amazon Web Services Outposts</a> in the <em>Amazon
RDS User Guide</em>.</p>
<p>For more information about CoIPs, see <a
href="https://docs.aws.amazon.com/outposts/latest/userguide/routing.html#ip-addressing">Customer-owned
IP addresses</a> in the <em>Amazon Web Services Outposts User
Guide</em>.</p></td>
</tr>
<tr class="even">
<td><code
id="rds_restore_db_instance_from_db_snapshot_:_CustomIamInstanceProfile">CustomIamInstanceProfile</code></td>
<td><p>The instance profile associated with the underlying Amazon EC2
instance of an RDS Custom DB instance. The instance profile must meet
the following requirements:</p>
<ul>
<li><p>The profile must exist in your account.</p></li>
<li><p>The profile must have an IAM role that Amazon EC2 has permissions
to assume.</p></li>
<li><p>The instance profile name and the associated IAM role name must
start with the prefix <code>AWSRDSCustom</code>.</p></li>
</ul>
<p>For the list of permissions required for the IAM role, see <a
href="https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/custom-setup-orcl.html#custom-setup-orcl.iam-vpc">Configure
IAM and your VPC</a> in the <em>Amazon RDS User Guide</em>.</p>
<p>This setting is required for RDS Custom.</p></td>
</tr>
<tr class="odd">
<td><code
id="rds_restore_db_instance_from_db_snapshot_:_BackupTarget">BackupTarget</code></td>
<td><p>Specifies where automated backups and manual snapshots are stored
for the restored DB instance.</p>
<p>Possible values are <code>outposts</code> (Amazon Web Services
Outposts) and <code>region</code> (Amazon Web Services Region). The
default is <code>region</code>.</p>
<p>For more information, see <a
href="https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/rds-on-outposts.html">Working
with Amazon RDS on Amazon Web Services Outposts</a> in the <em>Amazon
RDS User Guide</em>.</p></td>
</tr>
<tr class="even">
<td><code
id="rds_restore_db_instance_from_db_snapshot_:_NetworkType">NetworkType</code></td>
<td><p>The network type of the DB instance.</p>
<p>Valid values:</p>
<ul>
<li><p><code>IPV4</code></p></li>
<li><p><code>DUAL</code></p></li>
</ul>
<p>The network type is determined by the <code>DBSubnetGroup</code>
specified for the DB instance. A <code>DBSubnetGroup</code> can support
only the IPv4 protocol or the IPv4 and the IPv6 protocols
(<code>DUAL</code>).</p>
<p>For more information, see <a
href="https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_VPC.WorkingWithRDSInstanceinaVPC.html">Working
with a DB instance in a VPC</a> in the <em>Amazon RDS User
Guide.</em></p></td>
</tr>
<tr class="odd">
<td><code
id="rds_restore_db_instance_from_db_snapshot_:_StorageThroughput">StorageThroughput</code></td>
<td><p>Specifies the storage throughput value for the DB instance.</p>
<p>This setting doesn't apply to RDS Custom or Amazon Aurora.</p></td>
</tr>
<tr class="even">
<td><code
id="rds_restore_db_instance_from_db_snapshot_:_DBClusterSnapshotIdentifier">DBClusterSnapshotIdentifier</code></td>
<td><p>The identifier for the RDS for MySQL Multi-AZ DB cluster snapshot
to restore from.</p>
<p>For more information on Multi-AZ DB clusters, see <a
href="https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/multi-az-db-clusters-concepts.html">Multi-AZ
DB cluster deployments</a> in the <em>Amazon RDS User Guide</em>.</p>
<p>Constraints:</p>
<ul>
<li><p>Must match the identifier of an existing Multi-AZ DB cluster
snapshot.</p></li>
<li><p>Can't be specified when <code>DBSnapshotIdentifier</code> is
specified.</p></li>
<li><p>Must be specified when <code>DBSnapshotIdentifier</code> isn't
specified.</p></li>
<li><p>If you are restoring from a shared manual Multi-AZ DB cluster
snapshot, the <code>DBClusterSnapshotIdentifier</code> must be the ARN
of the shared snapshot.</p></li>
<li><p>Can't be the identifier of an Aurora DB cluster
snapshot.</p></li>
<li><p>Can't be the identifier of an RDS for PostgreSQL Multi-AZ DB
cluster snapshot.</p></li>
</ul></td>
</tr>
<tr class="odd">
<td><code
id="rds_restore_db_instance_from_db_snapshot_:_AllocatedStorage">AllocatedStorage</code></td>
<td><p>The amount of storage (in gibibytes) to allocate initially for
the DB instance. Follow the allocation rules specified in
CreateDBInstance.</p>
<p>Be sure to allocate enough storage for your new DB instance so that
the restore operation can succeed. You can also allocate additional
storage for future growth.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      DBInstance = list(
        DBInstanceIdentifier = "string",
        DBInstanceClass = "string",
        Engine = "string",
        DBInstanceStatus = "string",
        AutomaticRestartTime = as.POSIXct(
          "2015-01-01"
        ),
        MasterUsername = "string",
        DBName = "string",
        Endpoint = list(
          Address = "string",
          Port = 123,
          HostedZoneId = "string"
        ),
        AllocatedStorage = 123,
        InstanceCreateTime = as.POSIXct(
          "2015-01-01"
        ),
        PreferredBackupWindow = "string",
        BackupRetentionPeriod = 123,
        DBSecurityGroups = list(
          list(
            DBSecurityGroupName = "string",
            Status = "string"
          )
        ),
        VpcSecurityGroups = list(
          list(
            VpcSecurityGroupId = "string",
            Status = "string"
          )
        ),
        DBParameterGroups = list(
          list(
            DBParameterGroupName = "string",
            ParameterApplyStatus = "string"
          )
        ),
        AvailabilityZone = "string",
        DBSubnetGroup = list(
          DBSubnetGroupName = "string",
          DBSubnetGroupDescription = "string",
          VpcId = "string",
          SubnetGroupStatus = "string",
          Subnets = list(
            list(
              SubnetIdentifier = "string",
              SubnetAvailabilityZone = list(
                Name = "string"
              ),
              SubnetOutpost = list(
                Arn = "string"
              ),
              SubnetStatus = "string"
            )
          ),
          DBSubnetGroupArn = "string",
          SupportedNetworkTypes = list(
            "string"
          )
        ),
        PreferredMaintenanceWindow = "string",
        PendingModifiedValues = list(
          DBInstanceClass = "string",
          AllocatedStorage = 123,
          MasterUserPassword = "string",
          Port = 123,
          BackupRetentionPeriod = 123,
          MultiAZ = TRUE|FALSE,
          EngineVersion = "string",
          LicenseModel = "string",
          Iops = 123,
          DBInstanceIdentifier = "string",
          StorageType = "string",
          CACertificateIdentifier = "string",
          DBSubnetGroupName = "string",
          PendingCloudwatchLogsExports = list(
            LogTypesToEnable = list(
              "string"
            ),
            LogTypesToDisable = list(
              "string"
            )
          ),
          ProcessorFeatures = list(
            list(
              Name = "string",
              Value = "string"
            )
          ),
          IAMDatabaseAuthenticationEnabled = TRUE|FALSE,
          AutomationMode = "full"|"all-paused",
          ResumeFullAutomationModeTime = as.POSIXct(
            "2015-01-01"
          ),
          StorageThroughput = 123
        ),
        LatestRestorableTime = as.POSIXct(
          "2015-01-01"
        ),
        MultiAZ = TRUE|FALSE,
        EngineVersion = "string",
        AutoMinorVersionUpgrade = TRUE|FALSE,
        ReadReplicaSourceDBInstanceIdentifier = "string",
        ReadReplicaDBInstanceIdentifiers = list(
          "string"
        ),
        ReadReplicaDBClusterIdentifiers = list(
          "string"
        ),
        ReplicaMode = "open-read-only"|"mounted",
        LicenseModel = "string",
        Iops = 123,
        OptionGroupMemberships = list(
          list(
            OptionGroupName = "string",
            Status = "string"
          )
        ),
        CharacterSetName = "string",
        NcharCharacterSetName = "string",
        SecondaryAvailabilityZone = "string",
        PubliclyAccessible = TRUE|FALSE,
        StatusInfos = list(
          list(
            StatusType = "string",
            Normal = TRUE|FALSE,
            Status = "string",
            Message = "string"
          )
        ),
        StorageType = "string",
        TdeCredentialArn = "string",
        DbInstancePort = 123,
        DBClusterIdentifier = "string",
        StorageEncrypted = TRUE|FALSE,
        KmsKeyId = "string",
        DbiResourceId = "string",
        CACertificateIdentifier = "string",
        DomainMemberships = list(
          list(
            Domain = "string",
            Status = "string",
            FQDN = "string",
            IAMRoleName = "string"
          )
        ),
        CopyTagsToSnapshot = TRUE|FALSE,
        MonitoringInterval = 123,
        EnhancedMonitoringResourceArn = "string",
        MonitoringRoleArn = "string",
        PromotionTier = 123,
        DBInstanceArn = "string",
        Timezone = "string",
        IAMDatabaseAuthenticationEnabled = TRUE|FALSE,
        PerformanceInsightsEnabled = TRUE|FALSE,
        PerformanceInsightsKMSKeyId = "string",
        PerformanceInsightsRetentionPeriod = 123,
        EnabledCloudwatchLogsExports = list(
          "string"
        ),
        ProcessorFeatures = list(
          list(
            Name = "string",
            Value = "string"
          )
        ),
        DeletionProtection = TRUE|FALSE,
        AssociatedRoles = list(
          list(
            RoleArn = "string",
            FeatureName = "string",
            Status = "string"
          )
        ),
        ListenerEndpoint = list(
          Address = "string",
          Port = 123,
          HostedZoneId = "string"
        ),
        MaxAllocatedStorage = 123,
        TagList = list(
          list(
            Key = "string",
            Value = "string"
          )
        ),
        DBInstanceAutomatedBackupsReplications = list(
          list(
            DBInstanceAutomatedBackupsArn = "string"
          )
        ),
        CustomerOwnedIpEnabled = TRUE|FALSE,
        AwsBackupRecoveryPointArn = "string",
        ActivityStreamStatus = "stopped"|"starting"|"started"|"stopping",
        ActivityStreamKmsKeyId = "string",
        ActivityStreamKinesisStreamName = "string",
        ActivityStreamMode = "sync"|"async",
        ActivityStreamEngineNativeAuditFieldsIncluded = TRUE|FALSE,
        AutomationMode = "full"|"all-paused",
        ResumeFullAutomationModeTime = as.POSIXct(
          "2015-01-01"
        ),
        CustomIamInstanceProfile = "string",
        BackupTarget = "string",
        NetworkType = "string",
        ActivityStreamPolicyStatus = "locked"|"unlocked"|"locking-policy"|"unlocking-policy",
        StorageThroughput = 123,
        DBSystemId = "string",
        MasterUserSecret = list(
          SecretArn = "string",
          SecretStatus = "string",
          KmsKeyId = "string"
        ),
        CertificateDetails = list(
          CAIdentifier = "string",
          ValidTill = as.POSIXct(
            "2015-01-01"
          )
        ),
        ReadReplicaSourceDBClusterIdentifier = "string"
      )
    )

### Request syntax

    svc$restore_db_instance_from_db_snapshot(
      DBInstanceIdentifier = "string",
      DBSnapshotIdentifier = "string",
      DBInstanceClass = "string",
      Port = 123,
      AvailabilityZone = "string",
      DBSubnetGroupName = "string",
      MultiAZ = TRUE|FALSE,
      PubliclyAccessible = TRUE|FALSE,
      AutoMinorVersionUpgrade = TRUE|FALSE,
      LicenseModel = "string",
      DBName = "string",
      Engine = "string",
      Iops = 123,
      OptionGroupName = "string",
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      ),
      StorageType = "string",
      TdeCredentialArn = "string",
      TdeCredentialPassword = "string",
      VpcSecurityGroupIds = list(
        "string"
      ),
      Domain = "string",
      CopyTagsToSnapshot = TRUE|FALSE,
      DomainIAMRoleName = "string",
      EnableIAMDatabaseAuthentication = TRUE|FALSE,
      EnableCloudwatchLogsExports = list(
        "string"
      ),
      ProcessorFeatures = list(
        list(
          Name = "string",
          Value = "string"
        )
      ),
      UseDefaultProcessorFeatures = TRUE|FALSE,
      DBParameterGroupName = "string",
      DeletionProtection = TRUE|FALSE,
      EnableCustomerOwnedIp = TRUE|FALSE,
      CustomIamInstanceProfile = "string",
      BackupTarget = "string",
      NetworkType = "string",
      StorageThroughput = 123,
      DBClusterSnapshotIdentifier = "string",
      AllocatedStorage = 123
    )
