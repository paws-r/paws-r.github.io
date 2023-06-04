<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>rds_restore_db_instance_to_point_in_time</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Restores a DB instance to an arbitrary point in time

### Description

Restores a DB instance to an arbitrary point in time. You can restore to
any point in time before the time identified by the LatestRestorableTime
property. You can restore to a point up to the number of days specified
by the BackupRetentionPeriod property.

The target database is created with most of the original configuration,
but in a system-selected Availability Zone, with the default security
group, the default subnet group, and the default DB parameter group. By
default, the new DB instance is created as a single-AZ deployment except
when the instance is a SQL Server instance that has an option group that
is associated with mirroring; in this case, the instance becomes a
mirrored deployment and not a single-AZ deployment.

This command doesn't apply to Aurora MySQL and Aurora PostgreSQL. For
Aurora, use `restore_db_cluster_to_point_in_time`.

### Usage

    rds_restore_db_instance_to_point_in_time(SourceDBInstanceIdentifier,
      TargetDBInstanceIdentifier, RestoreTime, UseLatestRestorableTime,
      DBInstanceClass, Port, AvailabilityZone, DBSubnetGroupName, MultiAZ,
      PubliclyAccessible, AutoMinorVersionUpgrade, LicenseModel, DBName,
      Engine, Iops, OptionGroupName, CopyTagsToSnapshot, Tags, StorageType,
      TdeCredentialArn, TdeCredentialPassword, VpcSecurityGroupIds, Domain,
      DomainIAMRoleName, EnableIAMDatabaseAuthentication,
      EnableCloudwatchLogsExports, ProcessorFeatures,
      UseDefaultProcessorFeatures, DBParameterGroupName, DeletionProtection,
      SourceDbiResourceId, MaxAllocatedStorage,
      SourceDBInstanceAutomatedBackupsArn, EnableCustomerOwnedIp,
      CustomIamInstanceProfile, BackupTarget, NetworkType, StorageThroughput,
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
id="rds_restore_db_instance_to_point_in_time_:_SourceDBInstanceIdentifier">SourceDBInstanceIdentifier</code></td>
<td><p>The identifier of the source DB instance from which to
restore.</p>
<p>Constraints:</p>
<ul>
<li><p>Must match the identifier of an existing DB instance.</p></li>
</ul></td>
</tr>
<tr class="even">
<td><code
id="rds_restore_db_instance_to_point_in_time_:_TargetDBInstanceIdentifier">TargetDBInstanceIdentifier</code></td>
<td><p>[required] The name of the new DB instance to be created.</p>
<p>Constraints:</p>
<ul>
<li><p>Must contain from 1 to 63 letters, numbers, or hyphens</p></li>
<li><p>First character must be a letter</p></li>
<li><p>Can't end with a hyphen or contain two consecutive
hyphens</p></li>
</ul></td>
</tr>
<tr class="odd">
<td><code
id="rds_restore_db_instance_to_point_in_time_:_RestoreTime">RestoreTime</code></td>
<td><p>The date and time to restore from.</p>
<p>Valid Values: Value must be a time in Universal Coordinated Time
(UTC) format</p>
<p>Constraints:</p>
<ul>
<li><p>Must be before the latest restorable time for the DB
instance</p></li>
<li><p>Can't be specified if the <code>UseLatestRestorableTime</code>
parameter is enabled</p></li>
</ul>
<p>Example: <code
style="white-space: pre;">⁠2009-09-07T23:45:00Z⁠</code></p></td>
</tr>
<tr class="even">
<td><code
id="rds_restore_db_instance_to_point_in_time_:_UseLatestRestorableTime">UseLatestRestorableTime</code></td>
<td><p>A value that indicates whether the DB instance is restored from
the latest backup time. By default, the DB instance isn't restored from
the latest backup time.</p>
<p>Constraints: Can't be specified if the <code>RestoreTime</code>
parameter is provided.</p></td>
</tr>
<tr class="odd">
<td><code
id="rds_restore_db_instance_to_point_in_time_:_DBInstanceClass">DBInstanceClass</code></td>
<td><p>The compute and memory capacity of the Amazon RDS DB instance,
for example db.m4.large. Not all DB instance classes are available in
all Amazon Web Services Regions, or for all database engines. For the
full list of DB instance classes, and availability for your engine, see
<a
href="https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Concepts.DBInstanceClass.html">DB
Instance Class</a> in the <em>Amazon RDS User Guide</em>.</p>
<p>Default: The same DBInstanceClass as the original DB
instance.</p></td>
</tr>
<tr class="even">
<td><code
id="rds_restore_db_instance_to_point_in_time_:_Port">Port</code></td>
<td><p>The port number on which the database accepts connections.</p>
<p>Constraints: Value must be <code>1150-65535</code></p>
<p>Default: The same port as the original DB instance.</p></td>
</tr>
<tr class="odd">
<td><code
id="rds_restore_db_instance_to_point_in_time_:_AvailabilityZone">AvailabilityZone</code></td>
<td><p>The Availability Zone (AZ) where the DB instance will be
created.</p>
<p>Default: A random, system-chosen Availability Zone.</p>
<p>Constraint: You can't specify the <code>AvailabilityZone</code>
parameter if the DB instance is a Multi-AZ deployment.</p>
<p>Example: <code style="white-space: pre;">⁠us-east-1a⁠</code></p></td>
</tr>
<tr class="even">
<td><code
id="rds_restore_db_instance_to_point_in_time_:_DBSubnetGroupName">DBSubnetGroupName</code></td>
<td><p>The DB subnet group name to use for the new instance.</p>
<p>Constraints: If supplied, must match the name of an existing
DBSubnetGroup.</p>
<p>Example: <code>mydbsubnetgroup</code></p></td>
</tr>
<tr class="odd">
<td><code
id="rds_restore_db_instance_to_point_in_time_:_MultiAZ">MultiAZ</code></td>
<td><p>A value that indicates whether the DB instance is a Multi-AZ
deployment.</p>
<p>This setting doesn't apply to RDS Custom.</p>
<p>Constraint: You can't specify the <code>AvailabilityZone</code>
parameter if the DB instance is a Multi-AZ deployment.</p></td>
</tr>
<tr class="even">
<td><code
id="rds_restore_db_instance_to_point_in_time_:_PubliclyAccessible">PubliclyAccessible</code></td>
<td><p>A value that indicates whether the DB instance is publicly
accessible.</p>
<p>When the DB cluster is publicly accessible, its Domain Name System
(DNS) endpoint resolves to the private IP address from within the DB
cluster's virtual private cloud (VPC). It resolves to the public IP
address from outside of the DB cluster's VPC. Access to the DB cluster
is ultimately controlled by the security group it uses. That public
access isn't permitted if the security group assigned to the DB cluster
doesn't permit it.</p>
<p>When the DB instance isn't publicly accessible, it is an internal DB
instance with a DNS name that resolves to a private IP address.</p>
<p>For more information, see <code>create_db_instance</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="rds_restore_db_instance_to_point_in_time_:_AutoMinorVersionUpgrade">AutoMinorVersionUpgrade</code></td>
<td><p>A value that indicates whether minor version upgrades are applied
automatically to the DB instance during the maintenance window.</p>
<p>This setting doesn't apply to RDS Custom.</p></td>
</tr>
<tr class="even">
<td><code
id="rds_restore_db_instance_to_point_in_time_:_LicenseModel">LicenseModel</code></td>
<td><p>License model information for the restored DB instance.</p>
<p>This setting doesn't apply to RDS Custom.</p>
<p>Default: Same as source.</p>
<p>Valid values: <code>license-included</code> |
<code>bring-your-own-license</code> |
<code>general-public-license</code></p></td>
</tr>
<tr class="odd">
<td><code
id="rds_restore_db_instance_to_point_in_time_:_DBName">DBName</code></td>
<td><p>The database name for the restored DB instance.</p>
<p>This parameter isn't supported for the MySQL or MariaDB engines. It
also doesn't apply to RDS Custom.</p></td>
</tr>
<tr class="even">
<td><code
id="rds_restore_db_instance_to_point_in_time_:_Engine">Engine</code></td>
<td><p>The database engine to use for the new instance.</p>
<p>This setting doesn't apply to RDS Custom.</p>
<p>Default: The same as source</p>
<p>Constraint: Must be compatible with the engine of the source</p>
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
id="rds_restore_db_instance_to_point_in_time_:_Iops">Iops</code></td>
<td><p>The amount of Provisioned IOPS (input/output operations per
second) to be initially allocated for the DB instance.</p>
<p>Constraints: Must be an integer greater than 1000.</p>
<p><strong>SQL Server</strong></p>
<p>Setting the IOPS value for the SQL Server database engine isn't
supported.</p></td>
</tr>
<tr class="even">
<td><code
id="rds_restore_db_instance_to_point_in_time_:_OptionGroupName">OptionGroupName</code></td>
<td><p>The name of the option group to be used for the restored DB
instance.</p>
<p>Permanent options, such as the TDE option for Oracle Advanced
Security TDE, can't be removed from an option group, and that option
group can't be removed from a DB instance after it is associated with a
DB instance</p>
<p>This setting doesn't apply to RDS Custom.</p></td>
</tr>
<tr class="odd">
<td><code
id="rds_restore_db_instance_to_point_in_time_:_CopyTagsToSnapshot">CopyTagsToSnapshot</code></td>
<td><p>A value that indicates whether to copy all tags from the restored
DB instance to snapshots of the DB instance. By default, tags are not
copied.</p></td>
</tr>
<tr class="even">
<td><code
id="rds_restore_db_instance_to_point_in_time_:_Tags">Tags</code></td>
<td></td>
</tr>
<tr class="odd">
<td><code
id="rds_restore_db_instance_to_point_in_time_:_StorageType">StorageType</code></td>
<td><p>Specifies the storage type to be associated with the DB
instance.</p>
<p>Valid values: <code>gp2 | gp3 | io1 | standard</code></p>
<p>If you specify <code>io1</code> or <code>gp3</code>, you must also
include a value for the <code>Iops</code> parameter.</p>
<p>Default: <code>io1</code> if the <code>Iops</code> parameter is
specified, otherwise <code>gp2</code></p></td>
</tr>
<tr class="even">
<td><code
id="rds_restore_db_instance_to_point_in_time_:_TdeCredentialArn">TdeCredentialArn</code></td>
<td><p>The ARN from the key store with which to associate the instance
for TDE encryption.</p>
<p>This setting doesn't apply to RDS Custom.</p></td>
</tr>
<tr class="odd">
<td><code
id="rds_restore_db_instance_to_point_in_time_:_TdeCredentialPassword">TdeCredentialPassword</code></td>
<td><p>The password for the given ARN from the key store in order to
access the device.</p>
<p>This setting doesn't apply to RDS Custom.</p></td>
</tr>
<tr class="even">
<td><code
id="rds_restore_db_instance_to_point_in_time_:_VpcSecurityGroupIds">VpcSecurityGroupIds</code></td>
<td><p>A list of EC2 VPC security groups to associate with this DB
instance.</p>
<p>Default: The default EC2 VPC security group for the DB subnet group's
VPC.</p></td>
</tr>
<tr class="odd">
<td><code
id="rds_restore_db_instance_to_point_in_time_:_Domain">Domain</code></td>
<td><p>Specify the Active Directory directory ID to restore the DB
instance in. Create the domain before running this command. Currently,
you can create only the MySQL, Microsoft SQL Server, Oracle, and
PostgreSQL DB instances in an Active Directory Domain.</p>
<p>This setting doesn't apply to RDS Custom.</p>
<p>For more information, see <a
href="https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/database-authentication.html">Kerberos
Authentication</a> in the <em>Amazon RDS User Guide</em>.</p></td>
</tr>
<tr class="even">
<td><code
id="rds_restore_db_instance_to_point_in_time_:_DomainIAMRoleName">DomainIAMRoleName</code></td>
<td><p>Specify the name of the IAM role to be used when making API calls
to the Directory Service.</p>
<p>This setting doesn't apply to RDS Custom.</p></td>
</tr>
<tr class="odd">
<td><code
id="rds_restore_db_instance_to_point_in_time_:_EnableIAMDatabaseAuthentication">EnableIAMDatabaseAuthentication</code></td>
<td><p>A value that indicates whether to enable mapping of Amazon Web
Services Identity and Access Management (IAM) accounts to database
accounts. By default, mapping isn't enabled.</p>
<p>This setting doesn't apply to RDS Custom.</p>
<p>For more information about IAM database authentication, see <a
href="https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/UsingWithRDS.IAMDBAuth.html">IAM
Database Authentication for MySQL and PostgreSQL</a> in the <em>Amazon
RDS User Guide.</em></p></td>
</tr>
<tr class="even">
<td><code
id="rds_restore_db_instance_to_point_in_time_:_EnableCloudwatchLogsExports">EnableCloudwatchLogsExports</code></td>
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
id="rds_restore_db_instance_to_point_in_time_:_ProcessorFeatures">ProcessorFeatures</code></td>
<td><p>The number of CPU cores and the number of threads per core for
the DB instance class of the DB instance.</p>
<p>This setting doesn't apply to RDS Custom.</p></td>
</tr>
<tr class="even">
<td><code
id="rds_restore_db_instance_to_point_in_time_:_UseDefaultProcessorFeatures">UseDefaultProcessorFeatures</code></td>
<td><p>A value that indicates whether the DB instance class of the DB
instance uses its default processor features.</p>
<p>This setting doesn't apply to RDS Custom.</p></td>
</tr>
<tr class="odd">
<td><code
id="rds_restore_db_instance_to_point_in_time_:_DBParameterGroupName">DBParameterGroupName</code></td>
<td><p>The name of the DB parameter group to associate with this DB
instance.</p>
<p>If you do not specify a value for <code>DBParameterGroupName</code>,
then the default <code>DBParameterGroup</code> for the specified DB
engine is used.</p>
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
id="rds_restore_db_instance_to_point_in_time_:_DeletionProtection">DeletionProtection</code></td>
<td><p>A value that indicates whether the DB instance has deletion
protection enabled. The database can't be deleted when deletion
protection is enabled. By default, deletion protection isn't enabled.
For more information, see <a
href="https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_DeleteInstance.html">Deleting
a DB Instance</a>.</p></td>
</tr>
<tr class="odd">
<td><code
id="rds_restore_db_instance_to_point_in_time_:_SourceDbiResourceId">SourceDbiResourceId</code></td>
<td><p>The resource ID of the source DB instance from which to
restore.</p></td>
</tr>
<tr class="even">
<td><code
id="rds_restore_db_instance_to_point_in_time_:_MaxAllocatedStorage">MaxAllocatedStorage</code></td>
<td><p>The upper limit in gibibytes (GiB) to which Amazon RDS can
automatically scale the storage of the DB instance.</p>
<p>For more information about this setting, including limitations that
apply to it, see <a
href="https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_PIOPS.StorageTypes.html#USER_PIOPS.Autoscaling">Managing
capacity automatically with Amazon RDS storage autoscaling</a> in the
<em>Amazon RDS User Guide</em>.</p>
<p>This setting doesn't apply to RDS Custom.</p></td>
</tr>
<tr class="odd">
<td><code
id="rds_restore_db_instance_to_point_in_time_:_SourceDBInstanceAutomatedBackupsArn">SourceDBInstanceAutomatedBackupsArn</code></td>
<td><p>The Amazon Resource Name (ARN) of the replicated automated
backups from which to restore, for example,
<code>arn:aws:rds:useast-1:123456789012:auto-backup:ab-L2IJCEXJP7XQ7HOJ4SIEXAMPLE</code>.</p>
<p>This setting doesn't apply to RDS Custom.</p></td>
</tr>
<tr class="even">
<td><code
id="rds_restore_db_instance_to_point_in_time_:_EnableCustomerOwnedIp">EnableCustomerOwnedIp</code></td>
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
<tr class="odd">
<td><code
id="rds_restore_db_instance_to_point_in_time_:_CustomIamInstanceProfile">CustomIamInstanceProfile</code></td>
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
<tr class="even">
<td><code
id="rds_restore_db_instance_to_point_in_time_:_BackupTarget">BackupTarget</code></td>
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
<tr class="odd">
<td><code
id="rds_restore_db_instance_to_point_in_time_:_NetworkType">NetworkType</code></td>
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
<tr class="even">
<td><code
id="rds_restore_db_instance_to_point_in_time_:_StorageThroughput">StorageThroughput</code></td>
<td><p>Specifies the storage throughput value for the DB instance.</p>
<p>This setting doesn't apply to RDS Custom or Amazon Aurora.</p></td>
</tr>
<tr class="odd">
<td><code
id="rds_restore_db_instance_to_point_in_time_:_AllocatedStorage">AllocatedStorage</code></td>
<td><p>The amount of storage (in gibibytes) to allocate initially for
the DB instance. Follow the allocation rules specified in
<code>create_db_instance</code>.</p>
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

    svc$restore_db_instance_to_point_in_time(
      SourceDBInstanceIdentifier = "string",
      TargetDBInstanceIdentifier = "string",
      RestoreTime = as.POSIXct(
        "2015-01-01"
      ),
      UseLatestRestorableTime = TRUE|FALSE,
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
      CopyTagsToSnapshot = TRUE|FALSE,
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
      SourceDbiResourceId = "string",
      MaxAllocatedStorage = 123,
      SourceDBInstanceAutomatedBackupsArn = "string",
      EnableCustomerOwnedIp = TRUE|FALSE,
      CustomIamInstanceProfile = "string",
      BackupTarget = "string",
      NetworkType = "string",
      StorageThroughput = 123,
      AllocatedStorage = 123
    )
