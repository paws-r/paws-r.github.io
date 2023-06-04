<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>rds_restore_db_instance_from_s3</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Amazon Relational Database Service (Amazon RDS) supports importing MySQL databases by using backup files

### Description

Amazon Relational Database Service (Amazon RDS) supports importing MySQL
databases by using backup files. You can create a backup of your
on-premises database, store it on Amazon Simple Storage Service (Amazon
S3), and then restore the backup file onto a new Amazon RDS DB instance
running MySQL. For more information, see [Importing Data into an Amazon
RDS MySQL DB
Instance](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/MySQL.Procedural.Importing.html)
in the *Amazon RDS User Guide.*

This command doesn't apply to RDS Custom.

### Usage

    rds_restore_db_instance_from_s3(DBName, DBInstanceIdentifier,
      AllocatedStorage, DBInstanceClass, Engine, MasterUsername,
      MasterUserPassword, DBSecurityGroups, VpcSecurityGroupIds,
      AvailabilityZone, DBSubnetGroupName, PreferredMaintenanceWindow,
      DBParameterGroupName, BackupRetentionPeriod, PreferredBackupWindow,
      Port, MultiAZ, EngineVersion, AutoMinorVersionUpgrade, LicenseModel,
      Iops, OptionGroupName, PubliclyAccessible, Tags, StorageType,
      StorageEncrypted, KmsKeyId, CopyTagsToSnapshot, MonitoringInterval,
      MonitoringRoleArn, EnableIAMDatabaseAuthentication, SourceEngine,
      SourceEngineVersion, S3BucketName, S3Prefix, S3IngestionRoleArn,
      EnablePerformanceInsights, PerformanceInsightsKMSKeyId,
      PerformanceInsightsRetentionPeriod, EnableCloudwatchLogsExports,
      ProcessorFeatures, UseDefaultProcessorFeatures, DeletionProtection,
      MaxAllocatedStorage, NetworkType, StorageThroughput,
      ManageMasterUserPassword, MasterUserSecretKmsKeyId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="rds_restore_db_instance_from_s3_:_DBName">DBName</code></td>
<td><p>The name of the database to create when the DB instance is
created. Follow the naming rules specified in
<code>create_db_instance</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="rds_restore_db_instance_from_s3_:_DBInstanceIdentifier">DBInstanceIdentifier</code></td>
<td><p>[required] The DB instance identifier. This parameter is stored
as a lowercase string.</p>
<p>Constraints:</p>
<ul>
<li><p>Must contain from 1 to 63 letters, numbers, or hyphens.</p></li>
<li><p>First character must be a letter.</p></li>
<li><p>Can't end with a hyphen or contain two consecutive
hyphens.</p></li>
</ul>
<p>Example: <code>mydbinstance</code></p></td>
</tr>
<tr class="odd">
<td><code
id="rds_restore_db_instance_from_s3_:_AllocatedStorage">AllocatedStorage</code></td>
<td><p>The amount of storage (in gibibytes) to allocate initially for
the DB instance. Follow the allocation rules specified in
<code>create_db_instance</code>.</p>
<p>Be sure to allocate enough storage for your new DB instance so that
the restore operation can succeed. You can also allocate additional
storage for future growth.</p></td>
</tr>
<tr class="even">
<td><code
id="rds_restore_db_instance_from_s3_:_DBInstanceClass">DBInstanceClass</code></td>
<td><p>[required] The compute and memory capacity of the DB instance,
for example db.m4.large. Not all DB instance classes are available in
all Amazon Web Services Regions, or for all database engines. For the
full list of DB instance classes, and availability for your engine, see
<a
href="https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Concepts.DBInstanceClass.html">DB
Instance Class</a> in the <em>Amazon RDS User Guide.</em></p>
<p>Importing from Amazon S3 isn't supported on the db.t2.micro DB
instance class.</p></td>
</tr>
<tr class="odd">
<td><code
id="rds_restore_db_instance_from_s3_:_Engine">Engine</code></td>
<td><p>[required] The name of the database engine to be used for this
instance.</p>
<p>Valid Values: <code>mysql</code></p></td>
</tr>
<tr class="even">
<td><code
id="rds_restore_db_instance_from_s3_:_MasterUsername">MasterUsername</code></td>
<td><p>The name for the master user.</p>
<p>Constraints:</p>
<ul>
<li><p>Must be 1 to 16 letters or numbers.</p></li>
<li><p>First character must be a letter.</p></li>
<li><p>Can't be a reserved word for the chosen database engine.</p></li>
</ul></td>
</tr>
<tr class="odd">
<td><code
id="rds_restore_db_instance_from_s3_:_MasterUserPassword">MasterUserPassword</code></td>
<td><p>The password for the master user. The password can include any
printable ASCII character except "/", """, or "@".</p>
<p>Constraints: Can't be specified if
<code>ManageMasterUserPassword</code> is turned on.</p>
<p><strong>MariaDB</strong></p>
<p>Constraints: Must contain from 8 to 41 characters.</p>
<p><strong>Microsoft SQL Server</strong></p>
<p>Constraints: Must contain from 8 to 128 characters.</p>
<p><strong>MySQL</strong></p>
<p>Constraints: Must contain from 8 to 41 characters.</p>
<p><strong>Oracle</strong></p>
<p>Constraints: Must contain from 8 to 30 characters.</p>
<p><strong>PostgreSQL</strong></p>
<p>Constraints: Must contain from 8 to 128 characters.</p></td>
</tr>
<tr class="even">
<td><code
id="rds_restore_db_instance_from_s3_:_DBSecurityGroups">DBSecurityGroups</code></td>
<td><p>A list of DB security groups to associate with this DB
instance.</p>
<p>Default: The default DB security group for the database
engine.</p></td>
</tr>
<tr class="odd">
<td><code
id="rds_restore_db_instance_from_s3_:_VpcSecurityGroupIds">VpcSecurityGroupIds</code></td>
<td><p>A list of VPC security groups to associate with this DB
instance.</p></td>
</tr>
<tr class="even">
<td><code
id="rds_restore_db_instance_from_s3_:_AvailabilityZone">AvailabilityZone</code></td>
<td><p>The Availability Zone that the DB instance is created in. For
information about Amazon Web Services Regions and Availability Zones,
see <a
href="https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Concepts.RegionsAndAvailabilityZones.html">Regions
and Availability Zones</a> in the <em>Amazon RDS User Guide.</em></p>
<p>Default: A random, system-chosen Availability Zone in the endpoint's
Amazon Web Services Region.</p>
<p>Example: <code style="white-space: pre;">⁠us-east-1d⁠</code></p>
<p>Constraint: The <code>AvailabilityZone</code> parameter can't be
specified if the DB instance is a Multi-AZ deployment. The specified
Availability Zone must be in the same Amazon Web Services Region as the
current endpoint.</p></td>
</tr>
<tr class="odd">
<td><code
id="rds_restore_db_instance_from_s3_:_DBSubnetGroupName">DBSubnetGroupName</code></td>
<td><p>A DB subnet group to associate with this DB instance.</p>
<p>Constraints: If supplied, must match the name of an existing
DBSubnetGroup.</p>
<p>Example: <code>mydbsubnetgroup</code></p></td>
</tr>
<tr class="even">
<td><code
id="rds_restore_db_instance_from_s3_:_PreferredMaintenanceWindow">PreferredMaintenanceWindow</code></td>
<td><p>The time range each week during which system maintenance can
occur, in Universal Coordinated Time (UTC). For more information, see <a
href="https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_UpgradeDBInstance.Maintenance.html#Concepts.DBMaintenance">Amazon
RDS Maintenance Window</a> in the <em>Amazon RDS User Guide.</em></p>
<p>Constraints:</p>
<ul>
<li><p>Must be in the format
<code>ddd:hh24:mi-ddd:hh24:mi</code>.</p></li>
<li><p>Valid Days: Mon, Tue, Wed, Thu, Fri, Sat, Sun.</p></li>
<li><p>Must be in Universal Coordinated Time (UTC).</p></li>
<li><p>Must not conflict with the preferred backup window.</p></li>
<li><p>Must be at least 30 minutes.</p></li>
</ul></td>
</tr>
<tr class="odd">
<td><code
id="rds_restore_db_instance_from_s3_:_DBParameterGroupName">DBParameterGroupName</code></td>
<td><p>The name of the DB parameter group to associate with this DB
instance.</p>
<p>If you do not specify a value for <code>DBParameterGroupName</code>,
then the default <code>DBParameterGroup</code> for the specified DB
engine is used.</p></td>
</tr>
<tr class="even">
<td><code
id="rds_restore_db_instance_from_s3_:_BackupRetentionPeriod">BackupRetentionPeriod</code></td>
<td><p>The number of days for which automated backups are retained.
Setting this parameter to a positive number enables backups. For more
information, see <code>create_db_instance</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="rds_restore_db_instance_from_s3_:_PreferredBackupWindow">PreferredBackupWindow</code></td>
<td><p>The time range each day during which automated backups are
created if automated backups are enabled. For more information, see <a
href="https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_WorkingWithAutomatedBackups.html#USER_WorkingWithAutomatedBackups.BackupWindow">Backup
window</a> in the <em>Amazon RDS User Guide.</em></p>
<p>Constraints:</p>
<ul>
<li><p>Must be in the format <code>hh24:mi-hh24:mi</code>.</p></li>
<li><p>Must be in Universal Coordinated Time (UTC).</p></li>
<li><p>Must not conflict with the preferred maintenance window.</p></li>
<li><p>Must be at least 30 minutes.</p></li>
</ul></td>
</tr>
<tr class="even">
<td><code id="rds_restore_db_instance_from_s3_:_Port">Port</code></td>
<td><p>The port number on which the database accepts connections.</p>
<p>Type: Integer</p>
<p>Valid Values: <code>1150</code>-<code>65535</code></p>
<p>Default: <code>3306</code></p></td>
</tr>
<tr class="odd">
<td><code
id="rds_restore_db_instance_from_s3_:_MultiAZ">MultiAZ</code></td>
<td><p>A value that indicates whether the DB instance is a Multi-AZ
deployment. If the DB instance is a Multi-AZ deployment, you can't set
the <code>AvailabilityZone</code> parameter.</p></td>
</tr>
<tr class="even">
<td><code
id="rds_restore_db_instance_from_s3_:_EngineVersion">EngineVersion</code></td>
<td><p>The version number of the database engine to use. Choose the
latest minor version of your database engine. For information about
engine versions, see <code>create_db_instance</code>, or call
<code>describe_db_engine_versions</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="rds_restore_db_instance_from_s3_:_AutoMinorVersionUpgrade">AutoMinorVersionUpgrade</code></td>
<td><p>A value that indicates whether minor engine upgrades are applied
automatically to the DB instance during the maintenance window. By
default, minor engine upgrades are not applied automatically.</p></td>
</tr>
<tr class="even">
<td><code
id="rds_restore_db_instance_from_s3_:_LicenseModel">LicenseModel</code></td>
<td><p>The license model for this DB instance. Use
<code>general-public-license</code>.</p></td>
</tr>
<tr class="odd">
<td><code id="rds_restore_db_instance_from_s3_:_Iops">Iops</code></td>
<td><p>The amount of Provisioned IOPS (input/output operations per
second) to allocate initially for the DB instance. For information about
valid IOPS values, see <a
href="https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/CHAP_Storage.html#USER_PIOPS">Amazon
RDS Provisioned IOPS storage</a> in the <em>Amazon RDS User
Guide.</em></p></td>
</tr>
<tr class="even">
<td><code
id="rds_restore_db_instance_from_s3_:_OptionGroupName">OptionGroupName</code></td>
<td><p>The name of the option group to associate with this DB instance.
If this argument is omitted, the default option group for the specified
engine is used.</p></td>
</tr>
<tr class="odd">
<td><code
id="rds_restore_db_instance_from_s3_:_PubliclyAccessible">PubliclyAccessible</code></td>
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
<tr class="even">
<td><code id="rds_restore_db_instance_from_s3_:_Tags">Tags</code></td>
<td><p>A list of tags to associate with this DB instance. For more
information, see <a
href="https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Tagging.html">Tagging
Amazon RDS Resources</a> in the <em>Amazon RDS User Guide.</em></p></td>
</tr>
<tr class="odd">
<td><code
id="rds_restore_db_instance_from_s3_:_StorageType">StorageType</code></td>
<td><p>Specifies the storage type to be associated with the DB
instance.</p>
<p>Valid values: <code>gp2 | gp3 | io1 | standard</code></p>
<p>If you specify <code>io1</code> or <code>gp3</code>, you must also
include a value for the <code>Iops</code> parameter.</p>
<p>Default: <code>io1</code> if the <code>Iops</code> parameter is
specified; otherwise <code>gp2</code></p></td>
</tr>
<tr class="even">
<td><code
id="rds_restore_db_instance_from_s3_:_StorageEncrypted">StorageEncrypted</code></td>
<td><p>A value that indicates whether the new DB instance is encrypted
or not.</p></td>
</tr>
<tr class="odd">
<td><code
id="rds_restore_db_instance_from_s3_:_KmsKeyId">KmsKeyId</code></td>
<td><p>The Amazon Web Services KMS key identifier for an encrypted DB
instance.</p>
<p>The Amazon Web Services KMS key identifier is the key ARN, key ID,
alias ARN, or alias name for the KMS key. To use a KMS key in a
different Amazon Web Services account, specify the key ARN or alias
ARN.</p>
<p>If the <code>StorageEncrypted</code> parameter is enabled, and you do
not specify a value for the <code>KmsKeyId</code> parameter, then Amazon
RDS will use your default KMS key. There is a default KMS key for your
Amazon Web Services account. Your Amazon Web Services account has a
different default KMS key for each Amazon Web Services Region.</p></td>
</tr>
<tr class="even">
<td><code
id="rds_restore_db_instance_from_s3_:_CopyTagsToSnapshot">CopyTagsToSnapshot</code></td>
<td><p>A value that indicates whether to copy all tags from the DB
instance to snapshots of the DB instance. By default, tags are not
copied.</p></td>
</tr>
<tr class="odd">
<td><code
id="rds_restore_db_instance_from_s3_:_MonitoringInterval">MonitoringInterval</code></td>
<td><p>The interval, in seconds, between points when Enhanced Monitoring
metrics are collected for the DB instance. To disable collecting
Enhanced Monitoring metrics, specify 0.</p>
<p>If <code>MonitoringRoleArn</code> is specified, then you must also
set <code>MonitoringInterval</code> to a value other than 0.</p>
<p>Valid Values: 0, 1, 5, 10, 15, 30, 60</p>
<p>Default: <code>0</code></p></td>
</tr>
<tr class="even">
<td><code
id="rds_restore_db_instance_from_s3_:_MonitoringRoleArn">MonitoringRoleArn</code></td>
<td><p>The ARN for the IAM role that permits RDS to send enhanced
monitoring metrics to Amazon CloudWatch Logs. For example,
<code>arn:aws:iam:123456789012:role/emaccess</code>. For information on
creating a monitoring role, see <a
href="https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Monitoring.OS.html#USER_Monitoring.OS.Enabling">Setting
Up and Enabling Enhanced Monitoring</a> in the <em>Amazon RDS User
Guide.</em></p>
<p>If <code>MonitoringInterval</code> is set to a value other than 0,
then you must supply a <code>MonitoringRoleArn</code> value.</p></td>
</tr>
<tr class="odd">
<td><code
id="rds_restore_db_instance_from_s3_:_EnableIAMDatabaseAuthentication">EnableIAMDatabaseAuthentication</code></td>
<td><p>A value that indicates whether to enable mapping of Amazon Web
Services Identity and Access Management (IAM) accounts to database
accounts. By default, mapping isn't enabled.</p>
<p>For more information about IAM database authentication, see <a
href="https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/UsingWithRDS.IAMDBAuth.html">IAM
Database Authentication for MySQL and PostgreSQL</a> in the <em>Amazon
RDS User Guide.</em></p></td>
</tr>
<tr class="even">
<td><code
id="rds_restore_db_instance_from_s3_:_SourceEngine">SourceEngine</code></td>
<td><p>[required] The name of the engine of your source database.</p>
<p>Valid Values: <code>mysql</code></p></td>
</tr>
<tr class="odd">
<td><code
id="rds_restore_db_instance_from_s3_:_SourceEngineVersion">SourceEngineVersion</code></td>
<td><p>[required] The version of the database that the backup files were
created from.</p>
<p>MySQL versions 5.6 and 5.7 are supported.</p>
<p>Example: <code style="white-space: pre;">⁠5.6.40⁠</code></p></td>
</tr>
<tr class="even">
<td><code
id="rds_restore_db_instance_from_s3_:_S3BucketName">S3BucketName</code></td>
<td><p>[required] The name of your Amazon S3 bucket that contains your
database backup file.</p></td>
</tr>
<tr class="odd">
<td><code
id="rds_restore_db_instance_from_s3_:_S3Prefix">S3Prefix</code></td>
<td><p>The prefix of your Amazon S3 bucket.</p></td>
</tr>
<tr class="even">
<td><code
id="rds_restore_db_instance_from_s3_:_S3IngestionRoleArn">S3IngestionRoleArn</code></td>
<td><p>[required] An Amazon Web Services Identity and Access Management
(IAM) role to allow Amazon RDS to access your Amazon S3 bucket.</p></td>
</tr>
<tr class="odd">
<td><code
id="rds_restore_db_instance_from_s3_:_EnablePerformanceInsights">EnablePerformanceInsights</code></td>
<td><p>A value that indicates whether to enable Performance Insights for
the DB instance.</p>
<p>For more information, see <a
href="https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_PerfInsights.html">Using
Amazon Performance Insights</a> in the <em>Amazon RDS User
Guide</em>.</p></td>
</tr>
<tr class="even">
<td><code
id="rds_restore_db_instance_from_s3_:_PerformanceInsightsKMSKeyId">PerformanceInsightsKMSKeyId</code></td>
<td><p>The Amazon Web Services KMS key identifier for encryption of
Performance Insights data.</p>
<p>The Amazon Web Services KMS key identifier is the key ARN, key ID,
alias ARN, or alias name for the KMS key.</p>
<p>If you do not specify a value for
<code>PerformanceInsightsKMSKeyId</code>, then Amazon RDS uses your
default KMS key. There is a default KMS key for your Amazon Web Services
account. Your Amazon Web Services account has a different default KMS
key for each Amazon Web Services Region.</p></td>
</tr>
<tr class="odd">
<td><code
id="rds_restore_db_instance_from_s3_:_PerformanceInsightsRetentionPeriod">PerformanceInsightsRetentionPeriod</code></td>
<td><p>The number of days to retain Performance Insights data. The
default is 7 days. The following values are valid:</p>
<ul>
<li><p>7</p></li>
<li><p><em>month</em> * 31, where <em>month</em> is a number of months
from 1-23</p></li>
<li><p>731</p></li>
</ul>
<p>For example, the following values are valid:</p>
<ul>
<li><p>93 (3 months * 31)</p></li>
<li><p>341 (11 months * 31)</p></li>
<li><p>589 (19 months * 31)</p></li>
<li><p>731</p></li>
</ul>
<p>If you specify a retention period such as 94, which isn't a valid
value, RDS issues an error.</p></td>
</tr>
<tr class="even">
<td><code
id="rds_restore_db_instance_from_s3_:_EnableCloudwatchLogsExports">EnableCloudwatchLogsExports</code></td>
<td><p>The list of logs that the restored DB instance is to export to
CloudWatch Logs. The values in the list depend on the DB engine being
used. For more information, see <a
href="https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_LogAccess.html#USER_LogAccess.Procedural.UploadtoCloudWatch">Publishing
Database Logs to Amazon CloudWatch Logs</a> in the <em>Amazon RDS User
Guide</em>.</p></td>
</tr>
<tr class="odd">
<td><code
id="rds_restore_db_instance_from_s3_:_ProcessorFeatures">ProcessorFeatures</code></td>
<td><p>The number of CPU cores and the number of threads per core for
the DB instance class of the DB instance.</p></td>
</tr>
<tr class="even">
<td><code
id="rds_restore_db_instance_from_s3_:_UseDefaultProcessorFeatures">UseDefaultProcessorFeatures</code></td>
<td><p>A value that indicates whether the DB instance class of the DB
instance uses its default processor features.</p></td>
</tr>
<tr class="odd">
<td><code
id="rds_restore_db_instance_from_s3_:_DeletionProtection">DeletionProtection</code></td>
<td><p>A value that indicates whether the DB instance has deletion
protection enabled. The database can't be deleted when deletion
protection is enabled. By default, deletion protection isn't enabled.
For more information, see <a
href="https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_DeleteInstance.html">Deleting
a DB Instance</a>.</p></td>
</tr>
<tr class="even">
<td><code
id="rds_restore_db_instance_from_s3_:_MaxAllocatedStorage">MaxAllocatedStorage</code></td>
<td><p>The upper limit in gibibytes (GiB) to which Amazon RDS can
automatically scale the storage of the DB instance.</p>
<p>For more information about this setting, including limitations that
apply to it, see <a
href="https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_PIOPS.StorageTypes.html#USER_PIOPS.Autoscaling">Managing
capacity automatically with Amazon RDS storage autoscaling</a> in the
<em>Amazon RDS User Guide</em>.</p></td>
</tr>
<tr class="odd">
<td><code
id="rds_restore_db_instance_from_s3_:_NetworkType">NetworkType</code></td>
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
id="rds_restore_db_instance_from_s3_:_StorageThroughput">StorageThroughput</code></td>
<td><p>Specifies the storage throughput value for the DB instance.</p>
<p>This setting doesn't apply to RDS Custom or Amazon Aurora.</p></td>
</tr>
<tr class="odd">
<td><code
id="rds_restore_db_instance_from_s3_:_ManageMasterUserPassword">ManageMasterUserPassword</code></td>
<td><p>A value that indicates whether to manage the master user password
with Amazon Web Services Secrets Manager.</p>
<p>For more information, see <a
href="https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/rds-secrets-manager.html">Password
management with Amazon Web Services Secrets Manager</a> in the
<em>Amazon RDS User Guide.</em></p>
<p>Constraints:</p>
<ul>
<li><p>Can't manage the master user password with Amazon Web Services
Secrets Manager if <code>MasterUserPassword</code> is
specified.</p></li>
</ul></td>
</tr>
<tr class="even">
<td><code
id="rds_restore_db_instance_from_s3_:_MasterUserSecretKmsKeyId">MasterUserSecretKmsKeyId</code></td>
<td><p>The Amazon Web Services KMS key identifier to encrypt a secret
that is automatically generated and managed in Amazon Web Services
Secrets Manager.</p>
<p>This setting is valid only if the master user password is managed by
RDS in Amazon Web Services Secrets Manager for the DB instance.</p>
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

    svc$restore_db_instance_from_s3(
      DBName = "string",
      DBInstanceIdentifier = "string",
      AllocatedStorage = 123,
      DBInstanceClass = "string",
      Engine = "string",
      MasterUsername = "string",
      MasterUserPassword = "string",
      DBSecurityGroups = list(
        "string"
      ),
      VpcSecurityGroupIds = list(
        "string"
      ),
      AvailabilityZone = "string",
      DBSubnetGroupName = "string",
      PreferredMaintenanceWindow = "string",
      DBParameterGroupName = "string",
      BackupRetentionPeriod = 123,
      PreferredBackupWindow = "string",
      Port = 123,
      MultiAZ = TRUE|FALSE,
      EngineVersion = "string",
      AutoMinorVersionUpgrade = TRUE|FALSE,
      LicenseModel = "string",
      Iops = 123,
      OptionGroupName = "string",
      PubliclyAccessible = TRUE|FALSE,
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      ),
      StorageType = "string",
      StorageEncrypted = TRUE|FALSE,
      KmsKeyId = "string",
      CopyTagsToSnapshot = TRUE|FALSE,
      MonitoringInterval = 123,
      MonitoringRoleArn = "string",
      EnableIAMDatabaseAuthentication = TRUE|FALSE,
      SourceEngine = "string",
      SourceEngineVersion = "string",
      S3BucketName = "string",
      S3Prefix = "string",
      S3IngestionRoleArn = "string",
      EnablePerformanceInsights = TRUE|FALSE,
      PerformanceInsightsKMSKeyId = "string",
      PerformanceInsightsRetentionPeriod = 123,
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
      DeletionProtection = TRUE|FALSE,
      MaxAllocatedStorage = 123,
      NetworkType = "string",
      StorageThroughput = 123,
      ManageMasterUserPassword = TRUE|FALSE,
      MasterUserSecretKmsKeyId = "string"
    )
