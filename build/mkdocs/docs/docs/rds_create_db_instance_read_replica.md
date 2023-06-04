<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>rds_create_db_instance_read_replica</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a new DB instance that acts as a read replica for an existing source DB instance or Multi-AZ DB cluster

### Description

Creates a new DB instance that acts as a read replica for an existing
source DB instance or Multi-AZ DB cluster. You can create a read replica
for a DB instance running MySQL, MariaDB, Oracle, PostgreSQL, or SQL
Server. You can create a read replica for a Multi-AZ DB cluster running
MySQL or PostgreSQL. For more information, see [Working with read
replicas](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_ReadRepl.html)
and [Migrating from a Multi-AZ DB cluster to a DB instance using a read
replica](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/multi-az-db-clusters-concepts.html#multi-az-db-clusters-migrating-to-instance-with-read-replica)
in the *Amazon RDS User Guide*.

Amazon Aurora doesn't support this operation. Call the
`create_db_instance` operation to create a DB instance for an Aurora DB
cluster.

All read replica DB instances are created with backups disabled. All
other attributes (including DB security groups and DB parameter groups)
are inherited from the source DB instance or cluster, except as
specified.

Your source DB instance or cluster must have backup retention enabled.

### Usage

    rds_create_db_instance_read_replica(DBInstanceIdentifier,
      SourceDBInstanceIdentifier, DBInstanceClass, AvailabilityZone, Port,
      MultiAZ, AutoMinorVersionUpgrade, Iops, OptionGroupName,
      DBParameterGroupName, PubliclyAccessible, Tags, DBSubnetGroupName,
      VpcSecurityGroupIds, StorageType, CopyTagsToSnapshot,
      MonitoringInterval, MonitoringRoleArn, KmsKeyId, PreSignedUrl,
      EnableIAMDatabaseAuthentication, EnablePerformanceInsights,
      PerformanceInsightsKMSKeyId, PerformanceInsightsRetentionPeriod,
      EnableCloudwatchLogsExports, ProcessorFeatures,
      UseDefaultProcessorFeatures, DeletionProtection, Domain,
      DomainIAMRoleName, ReplicaMode, MaxAllocatedStorage,
      CustomIamInstanceProfile, NetworkType, StorageThroughput,
      EnableCustomerOwnedIp, AllocatedStorage, SourceDBClusterIdentifier,
      SourceRegion)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="rds_create_db_instance_read_replica_:_DBInstanceIdentifier">DBInstanceIdentifier</code></td>
<td><p>[required] The DB instance identifier of the read replica. This
identifier is the unique key that identifies a DB instance. This
parameter is stored as a lowercase string.</p></td>
</tr>
<tr class="even">
<td><code
id="rds_create_db_instance_read_replica_:_SourceDBInstanceIdentifier">SourceDBInstanceIdentifier</code></td>
<td><p>The identifier of the DB instance that will act as the source for
the read replica. Each DB instance can have up to 15 read replicas, with
the exception of Oracle and SQL Server, which can have up to five.</p>
<p>Constraints:</p>
<ul>
<li><p>Must be the identifier of an existing MySQL, MariaDB, Oracle,
PostgreSQL, or SQL Server DB instance.</p></li>
<li><p>Can't be specified if the <code>SourceDBClusterIdentifier</code>
parameter is also specified.</p></li>
<li><p>For the limitations of Oracle read replicas, see <a
href="https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/oracle-read-replicas.limitations.html#oracle-read-replicas.limitations.versions-and-licenses">Version
and licensing considerations for RDS for Oracle replicas</a> in the
<em>Amazon RDS User Guide</em>.</p></li>
<li><p>For the limitations of SQL Server read replicas, see <a
href="https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/SQLServer.ReadReplicas.html#SQLServer.ReadReplicas.Limitations">Read
replica limitations with SQL Server</a> in the <em>Amazon RDS User
Guide</em>.</p></li>
<li><p>The specified DB instance must have automatic backups enabled,
that is, its backup retention period must be greater than 0.</p></li>
<li><p>If the source DB instance is in the same Amazon Web Services
Region as the read replica, specify a valid DB instance
identifier.</p></li>
<li><p>If the source DB instance is in a different Amazon Web Services
Region from the read replica, specify a valid DB instance ARN. For more
information, see <a
href="https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Tagging.ARN.html#USER_Tagging.ARN.Constructing">Constructing
an ARN for Amazon RDS</a> in the <em>Amazon RDS User Guide</em>. This
doesn't apply to SQL Server or RDS Custom, which don't support
cross-Region replicas.</p></li>
</ul></td>
</tr>
<tr class="odd">
<td><code
id="rds_create_db_instance_read_replica_:_DBInstanceClass">DBInstanceClass</code></td>
<td><p>The compute and memory capacity of the read replica, for example
db.m4.large. Not all DB instance classes are available in all Amazon Web
Services Regions, or for all database engines. For the full list of DB
instance classes, and availability for your engine, see <a
href="https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Concepts.DBInstanceClass.html">DB
Instance Class</a> in the <em>Amazon RDS User Guide</em>.</p>
<p>Default: Inherits from the source DB instance.</p></td>
</tr>
<tr class="even">
<td><code
id="rds_create_db_instance_read_replica_:_AvailabilityZone">AvailabilityZone</code></td>
<td><p>The Availability Zone (AZ) where the read replica will be
created.</p>
<p>Default: A random, system-chosen Availability Zone in the endpoint's
Amazon Web Services Region.</p>
<p>Example: <code style="white-space: pre;">⁠us-east-1d⁠</code></p></td>
</tr>
<tr class="odd">
<td><code
id="rds_create_db_instance_read_replica_:_Port">Port</code></td>
<td><p>The port number that the DB instance uses for connections.</p>
<p>Default: Inherits from the source DB instance</p>
<p>Valid Values: <code>1150-65535</code></p></td>
</tr>
<tr class="even">
<td><code
id="rds_create_db_instance_read_replica_:_MultiAZ">MultiAZ</code></td>
<td><p>A value that indicates whether the read replica is in a Multi-AZ
deployment.</p>
<p>You can create a read replica as a Multi-AZ DB instance. RDS creates
a standby of your replica in another Availability Zone for failover
support for the replica. Creating your read replica as a Multi-AZ DB
instance is independent of whether the source is a Multi-AZ DB instance
or a Multi-AZ DB cluster.</p>
<p>This setting doesn't apply to RDS Custom.</p></td>
</tr>
<tr class="odd">
<td><code
id="rds_create_db_instance_read_replica_:_AutoMinorVersionUpgrade">AutoMinorVersionUpgrade</code></td>
<td><p>A value that indicates whether minor engine upgrades are applied
automatically to the read replica during the maintenance window.</p>
<p>This setting doesn't apply to RDS Custom.</p>
<p>Default: Inherits from the source DB instance</p></td>
</tr>
<tr class="even">
<td><code
id="rds_create_db_instance_read_replica_:_Iops">Iops</code></td>
<td><p>The amount of Provisioned IOPS (input/output operations per
second) to be initially allocated for the DB instance.</p></td>
</tr>
<tr class="odd">
<td><code
id="rds_create_db_instance_read_replica_:_OptionGroupName">OptionGroupName</code></td>
<td><p>The option group the DB instance is associated with. If omitted,
the option group associated with the source instance or cluster is
used.</p>
<p>For SQL Server, you must use the option group associated with the
source.</p>
<p>This setting doesn't apply to RDS Custom.</p></td>
</tr>
<tr class="even">
<td><code
id="rds_create_db_instance_read_replica_:_DBParameterGroupName">DBParameterGroupName</code></td>
<td><p>The name of the DB parameter group to associate with this DB
instance.</p>
<p>If you do not specify a value for <code>DBParameterGroupName</code>,
then Amazon RDS uses the <code>DBParameterGroup</code> of source DB
instance for a same Region read replica, or the default
<code>DBParameterGroup</code> for the specified DB engine for a
cross-Region read replica.</p>
<p>Specifying a parameter group for this operation is only supported for
MySQL and Oracle DB instances. It isn't supported for RDS Custom.</p>
<p>Constraints:</p>
<ul>
<li><p>Must be 1 to 255 letters, numbers, or hyphens.</p></li>
<li><p>First character must be a letter</p></li>
<li><p>Can't end with a hyphen or contain two consecutive
hyphens</p></li>
</ul></td>
</tr>
<tr class="odd">
<td><code
id="rds_create_db_instance_read_replica_:_PubliclyAccessible">PubliclyAccessible</code></td>
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
<tr class="even">
<td><code
id="rds_create_db_instance_read_replica_:_Tags">Tags</code></td>
<td></td>
</tr>
<tr class="odd">
<td><code
id="rds_create_db_instance_read_replica_:_DBSubnetGroupName">DBSubnetGroupName</code></td>
<td><p>Specifies a DB subnet group for the DB instance. The new DB
instance is created in the VPC associated with the DB subnet group. If
no DB subnet group is specified, then the new DB instance isn't created
in a VPC.</p>
<p>Constraints:</p>
<ul>
<li><p>If supplied, must match the name of an existing
DBSubnetGroup.</p></li>
<li><p>The specified DB subnet group must be in the same Amazon Web
Services Region in which the operation is running.</p></li>
<li><p>All read replicas in one Amazon Web Services Region that are
created from the same source DB instance must either:\&gt;</p>
<ul>
<li><p>Specify DB subnet groups from the same VPC. All these read
replicas are created in the same VPC.</p></li>
<li><p>Not specify a DB subnet group. All these read replicas are
created outside of any VPC.</p></li>
</ul></li>
</ul>
<p>Example: <code>mydbsubnetgroup</code></p></td>
</tr>
<tr class="even">
<td><code
id="rds_create_db_instance_read_replica_:_VpcSecurityGroupIds">VpcSecurityGroupIds</code></td>
<td><p>A list of Amazon EC2 VPC security groups to associate with the
read replica.</p>
<p>This setting doesn't apply to RDS Custom.</p>
<p>Default: The default EC2 VPC security group for the DB subnet group's
VPC.</p></td>
</tr>
<tr class="odd">
<td><code
id="rds_create_db_instance_read_replica_:_StorageType">StorageType</code></td>
<td><p>Specifies the storage type to be associated with the read
replica.</p>
<p>Valid values: <code>gp2 | gp3 | io1 | standard</code></p>
<p>If you specify <code>io1</code> or <code>gp3</code>, you must also
include a value for the <code>Iops</code> parameter.</p>
<p>Default: <code>io1</code> if the <code>Iops</code> parameter is
specified, otherwise <code>gp2</code></p></td>
</tr>
<tr class="even">
<td><code
id="rds_create_db_instance_read_replica_:_CopyTagsToSnapshot">CopyTagsToSnapshot</code></td>
<td><p>A value that indicates whether to copy all tags from the read
replica to snapshots of the read replica. By default, tags are not
copied.</p></td>
</tr>
<tr class="odd">
<td><code
id="rds_create_db_instance_read_replica_:_MonitoringInterval">MonitoringInterval</code></td>
<td><p>The interval, in seconds, between points when Enhanced Monitoring
metrics are collected for the read replica. To disable collecting
Enhanced Monitoring metrics, specify 0. The default is 0.</p>
<p>If <code>MonitoringRoleArn</code> is specified, then you must also
set <code>MonitoringInterval</code> to a value other than 0.</p>
<p>This setting doesn't apply to RDS Custom.</p>
<p>Valid Values: <code
style="white-space: pre;">⁠0, 1, 5, 10, 15, 30, 60⁠</code></p></td>
</tr>
<tr class="even">
<td><code
id="rds_create_db_instance_read_replica_:_MonitoringRoleArn">MonitoringRoleArn</code></td>
<td><p>The ARN for the IAM role that permits RDS to send enhanced
monitoring metrics to Amazon CloudWatch Logs. For example,
<code>arn:aws:iam:123456789012:role/emaccess</code>. For information on
creating a monitoring role, go to <a
href="https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Monitoring.html#USER_Monitoring.OS.IAMRole">To
create an IAM role for Amazon RDS Enhanced Monitoring</a> in the
<em>Amazon RDS User Guide</em>.</p>
<p>If <code>MonitoringInterval</code> is set to a value other than 0,
then you must supply a <code>MonitoringRoleArn</code> value.</p>
<p>This setting doesn't apply to RDS Custom.</p></td>
</tr>
<tr class="odd">
<td><code
id="rds_create_db_instance_read_replica_:_KmsKeyId">KmsKeyId</code></td>
<td><p>The Amazon Web Services KMS key identifier for an encrypted read
replica.</p>
<p>The Amazon Web Services KMS key identifier is the key ARN, key ID,
alias ARN, or alias name for the KMS key.</p>
<p>If you create an encrypted read replica in the same Amazon Web
Services Region as the source DB instance or Multi-AZ DB cluster, don't
specify a value for this parameter. A read replica in the same Amazon
Web Services Region is always encrypted with the same KMS key as the
source DB instance or cluster.</p>
<p>If you create an encrypted read replica in a different Amazon Web
Services Region, then you must specify a KMS key identifier for the
destination Amazon Web Services Region. KMS keys are specific to the
Amazon Web Services Region that they are created in, and you can't use
KMS keys from one Amazon Web Services Region in another Amazon Web
Services Region.</p>
<p>You can't create an encrypted read replica from an unencrypted DB
instance or Multi-AZ DB cluster.</p>
<p>This setting doesn't apply to RDS Custom, which uses the same KMS key
as the primary replica.</p></td>
</tr>
<tr class="even">
<td><code
id="rds_create_db_instance_read_replica_:_PreSignedUrl">PreSignedUrl</code></td>
<td><p>When you are creating a read replica from one Amazon Web Services
GovCloud (US) Region to another or from one China Amazon Web Services
Region to another, the URL that contains a Signature Version 4 signed
request for the <code>create_db_instance_read_replica</code> API
operation in the source Amazon Web Services Region that contains the
source DB instance.</p>
<p>This setting applies only to Amazon Web Services GovCloud (US)
Regions and China Amazon Web Services Regions. It's ignored in other
Amazon Web Services Regions.</p>
<p>This setting applies only when replicating from a source DB
<em>instance</em>. Source DB clusters aren't supported in Amazon Web
Services GovCloud (US) Regions and China Amazon Web Services
Regions.</p>
<p>You must specify this parameter when you create an encrypted read
replica from another Amazon Web Services Region by using the Amazon RDS
API. Don't specify <code>PreSignedUrl</code> when you are creating an
encrypted read replica in the same Amazon Web Services Region.</p>
<p>The presigned URL must be a valid request for the
<code>create_db_instance_read_replica</code> API operation that can run
in the source Amazon Web Services Region that contains the encrypted
source DB instance. The presigned URL request must contain the following
parameter values:</p>
<ul>
<li><p><code>DestinationRegion</code> - The Amazon Web Services Region
that the encrypted read replica is created in. This Amazon Web Services
Region is the same one where the
<code>create_db_instance_read_replica</code> operation is called that
contains this presigned URL.</p>
<p>For example, if you create an encrypted DB instance in the us-west-1
Amazon Web Services Region, from a source DB instance in the us-east-2
Amazon Web Services Region, then you call the
<code>create_db_instance_read_replica</code> operation in the us-east-1
Amazon Web Services Region and provide a presigned URL that contains a
call to the <code>create_db_instance_read_replica</code> operation in
the us-west-2 Amazon Web Services Region. For this example, the
<code>DestinationRegion</code> in the presigned URL must be set to the
us-east-1 Amazon Web Services Region.</p></li>
<li><p><code>KmsKeyId</code> - The KMS key identifier for the key to use
to encrypt the read replica in the destination Amazon Web Services
Region. This is the same identifier for both the
<code>create_db_instance_read_replica</code> operation that is called in
the destination Amazon Web Services Region, and the operation contained
in the presigned URL.</p></li>
<li><p><code>SourceDBInstanceIdentifier</code> - The DB instance
identifier for the encrypted DB instance to be replicated. This
identifier must be in the Amazon Resource Name (ARN) format for the
source Amazon Web Services Region. For example, if you are creating an
encrypted read replica from a DB instance in the us-west-2 Amazon Web
Services Region, then your <code>SourceDBInstanceIdentifier</code> looks
like the following example:
<code>arn:aws:rds:us-west-2:123456789012:instance:mysql-instance1-20161115</code>.</p></li>
</ul>
<p>To learn how to generate a Signature Version 4 signed request, see <a
href="https://docs.aws.amazon.com/AmazonS3/latest/API/sigv4-query-string-auth.html">Authenticating
Requests: Using Query Parameters (Amazon Web Services Signature Version
4)</a> and <a
href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html">Signature
Version 4 Signing Process</a>.</p>
<p>If you are using an Amazon Web Services SDK tool or the CLI, you can
specify <code>SourceRegion</code> (or <code>--source-region</code> for
the CLI) instead of specifying <code>PreSignedUrl</code> manually.
Specifying <code>SourceRegion</code> autogenerates a presigned URL that
is a valid request for the operation that can run in the source Amazon
Web Services Region.</p>
<p><code>SourceRegion</code> isn't supported for SQL Server, because
Amazon RDS for SQL Server doesn't support cross-Region read
replicas.</p>
<p>This setting doesn't apply to RDS Custom.</p>
<p>If you supply a value for this operation's <code>SourceRegion</code>
parameter, a pre-signed URL will be calculated on your behalf.</p></td>
</tr>
<tr class="odd">
<td><code
id="rds_create_db_instance_read_replica_:_EnableIAMDatabaseAuthentication">EnableIAMDatabaseAuthentication</code></td>
<td><p>A value that indicates whether to enable mapping of Amazon Web
Services Identity and Access Management (IAM) accounts to database
accounts. By default, mapping isn't enabled.</p>
<p>For more information about IAM database authentication, see <a
href="https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/UsingWithRDS.IAMDBAuth.html">IAM
Database Authentication for MySQL and PostgreSQL</a> in the <em>Amazon
RDS User Guide</em>.</p>
<p>This setting doesn't apply to RDS Custom.</p></td>
</tr>
<tr class="even">
<td><code
id="rds_create_db_instance_read_replica_:_EnablePerformanceInsights">EnablePerformanceInsights</code></td>
<td><p>A value that indicates whether to enable Performance Insights for
the read replica.</p>
<p>For more information, see <a
href="https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_PerfInsights.html">Using
Amazon Performance Insights</a> in the <em>Amazon RDS User
Guide</em>.</p>
<p>This setting doesn't apply to RDS Custom.</p></td>
</tr>
<tr class="odd">
<td><code
id="rds_create_db_instance_read_replica_:_PerformanceInsightsKMSKeyId">PerformanceInsightsKMSKeyId</code></td>
<td><p>The Amazon Web Services KMS key identifier for encryption of
Performance Insights data.</p>
<p>The Amazon Web Services KMS key identifier is the key ARN, key ID,
alias ARN, or alias name for the KMS key.</p>
<p>If you do not specify a value for
<code>PerformanceInsightsKMSKeyId</code>, then Amazon RDS uses your
default KMS key. There is a default KMS key for your Amazon Web Services
account. Your Amazon Web Services account has a different default KMS
key for each Amazon Web Services Region.</p>
<p>This setting doesn't apply to RDS Custom.</p></td>
</tr>
<tr class="even">
<td><code
id="rds_create_db_instance_read_replica_:_PerformanceInsightsRetentionPeriod">PerformanceInsightsRetentionPeriod</code></td>
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
value, RDS issues an error.</p>
<p>This setting doesn't apply to RDS Custom.</p></td>
</tr>
<tr class="odd">
<td><code
id="rds_create_db_instance_read_replica_:_EnableCloudwatchLogsExports">EnableCloudwatchLogsExports</code></td>
<td><p>The list of logs that the new DB instance is to export to
CloudWatch Logs. The values in the list depend on the DB engine being
used. For more information, see <a
href="https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_LogAccess.html#USER_LogAccess.Procedural.UploadtoCloudWatch">Publishing
Database Logs to Amazon CloudWatch Logs</a> in the <em>Amazon RDS User
Guide</em>.</p>
<p>This setting doesn't apply to RDS Custom.</p></td>
</tr>
<tr class="even">
<td><code
id="rds_create_db_instance_read_replica_:_ProcessorFeatures">ProcessorFeatures</code></td>
<td><p>The number of CPU cores and the number of threads per core for
the DB instance class of the DB instance.</p>
<p>This setting doesn't apply to RDS Custom.</p></td>
</tr>
<tr class="odd">
<td><code
id="rds_create_db_instance_read_replica_:_UseDefaultProcessorFeatures">UseDefaultProcessorFeatures</code></td>
<td><p>A value that indicates whether the DB instance class of the DB
instance uses its default processor features.</p>
<p>This setting doesn't apply to RDS Custom.</p></td>
</tr>
<tr class="even">
<td><code
id="rds_create_db_instance_read_replica_:_DeletionProtection">DeletionProtection</code></td>
<td><p>A value that indicates whether the DB instance has deletion
protection enabled. The database can't be deleted when deletion
protection is enabled. By default, deletion protection isn't enabled.
For more information, see <a
href="https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_DeleteInstance.html">Deleting
a DB Instance</a>.</p></td>
</tr>
<tr class="odd">
<td><code
id="rds_create_db_instance_read_replica_:_Domain">Domain</code></td>
<td><p>The Active Directory directory ID to create the DB instance in.
Currently, only MySQL, Microsoft SQL Server, Oracle, and PostgreSQL DB
instances can be created in an Active Directory Domain.</p>
<p>For more information, see <a
href="https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/database-authentication.html">Kerberos
Authentication</a> in the <em>Amazon RDS User Guide</em>.</p>
<p>This setting doesn't apply to RDS Custom.</p></td>
</tr>
<tr class="even">
<td><code
id="rds_create_db_instance_read_replica_:_DomainIAMRoleName">DomainIAMRoleName</code></td>
<td><p>The name of the IAM role to be used when making API calls to the
Directory Service.</p>
<p>This setting doesn't apply to RDS Custom.</p></td>
</tr>
<tr class="odd">
<td><code
id="rds_create_db_instance_read_replica_:_ReplicaMode">ReplicaMode</code></td>
<td><p>The open mode of the replica database: mounted or read-only.</p>
<p>This parameter is only supported for Oracle DB instances.</p>
<p>Mounted DB replicas are included in Oracle Database Enterprise
Edition. The main use case for mounted replicas is cross-Region disaster
recovery. The primary database doesn't use Active Data Guard to transmit
information to the mounted replica. Because it doesn't accept user
connections, a mounted replica can't serve a read-only workload.</p>
<p>You can create a combination of mounted and read-only DB replicas for
the same primary DB instance. For more information, see <a
href="https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/oracle-read-replicas.html">Working
with Oracle Read Replicas for Amazon RDS</a> in the <em>Amazon RDS User
Guide</em>.</p>
<p>For RDS Custom, you must specify this parameter and set it to
<code>mounted</code>. The value won't be set by default. After replica
creation, you can manage the open mode manually.</p></td>
</tr>
<tr class="even">
<td><code
id="rds_create_db_instance_read_replica_:_MaxAllocatedStorage">MaxAllocatedStorage</code></td>
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
id="rds_create_db_instance_read_replica_:_CustomIamInstanceProfile">CustomIamInstanceProfile</code></td>
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
id="rds_create_db_instance_read_replica_:_NetworkType">NetworkType</code></td>
<td><p>The network type of the DB instance.</p>
<p>Valid values:</p>
<ul>
<li><p><code>IPV4</code></p></li>
<li><p><code>DUAL</code></p></li>
</ul>
<p>The network type is determined by the <code>DBSubnetGroup</code>
specified for read replica. A <code>DBSubnetGroup</code> can support
only the IPv4 protocol or the IPv4 and the IPv6 protocols
(<code>DUAL</code>).</p>
<p>For more information, see <a
href="https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_VPC.WorkingWithRDSInstanceinaVPC.html">Working
with a DB instance in a VPC</a> in the <em>Amazon RDS User
Guide.</em></p></td>
</tr>
<tr class="odd">
<td><code
id="rds_create_db_instance_read_replica_:_StorageThroughput">StorageThroughput</code></td>
<td><p>Specifies the storage throughput value for the read replica.</p>
<p>This setting doesn't apply to RDS Custom or Amazon Aurora.</p></td>
</tr>
<tr class="even">
<td><code
id="rds_create_db_instance_read_replica_:_EnableCustomerOwnedIp">EnableCustomerOwnedIp</code></td>
<td><p>A value that indicates whether to enable a customer-owned IP
address (CoIP) for an RDS on Outposts read replica.</p>
<p>A <em>CoIP</em> provides local or external connectivity to resources
in your Outpost subnets through your on-premises network. For some use
cases, a CoIP can provide lower latency for connections to the read
replica from outside of its virtual private cloud (VPC) on your local
network.</p>
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
id="rds_create_db_instance_read_replica_:_AllocatedStorage">AllocatedStorage</code></td>
<td><p>The amount of storage (in gibibytes) to allocate initially for
the read replica. Follow the allocation rules specified in
<code>create_db_instance</code>.</p>
<p>Be sure to allocate enough storage for your read replica so that the
create operation can succeed. You can also allocate additional storage
for future growth.</p></td>
</tr>
<tr class="even">
<td><code
id="rds_create_db_instance_read_replica_:_SourceDBClusterIdentifier">SourceDBClusterIdentifier</code></td>
<td><p>The identifier of the Multi-AZ DB cluster that will act as the
source for the read replica. Each DB cluster can have up to 15 read
replicas.</p>
<p>Constraints:</p>
<ul>
<li><p>Must be the identifier of an existing Multi-AZ DB
cluster.</p></li>
<li><p>Can't be specified if the <code>SourceDBInstanceIdentifier</code>
parameter is also specified.</p></li>
<li><p>The specified DB cluster must have automatic backups enabled,
that is, its backup retention period must be greater than 0.</p></li>
<li><p>The source DB cluster must be in the same Amazon Web Services
Region as the read replica. Cross-Region replication isn't
supported.</p></li>
</ul></td>
</tr>
<tr class="odd">
<td><code
id="rds_create_db_instance_read_replica_:_SourceRegion">SourceRegion</code></td>
<td><p>The ID of the region that contains the source for the read
replica.</p></td>
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

    svc$create_db_instance_read_replica(
      DBInstanceIdentifier = "string",
      SourceDBInstanceIdentifier = "string",
      DBInstanceClass = "string",
      AvailabilityZone = "string",
      Port = 123,
      MultiAZ = TRUE|FALSE,
      AutoMinorVersionUpgrade = TRUE|FALSE,
      Iops = 123,
      OptionGroupName = "string",
      DBParameterGroupName = "string",
      PubliclyAccessible = TRUE|FALSE,
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      ),
      DBSubnetGroupName = "string",
      VpcSecurityGroupIds = list(
        "string"
      ),
      StorageType = "string",
      CopyTagsToSnapshot = TRUE|FALSE,
      MonitoringInterval = 123,
      MonitoringRoleArn = "string",
      KmsKeyId = "string",
      PreSignedUrl = "string",
      EnableIAMDatabaseAuthentication = TRUE|FALSE,
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
      Domain = "string",
      DomainIAMRoleName = "string",
      ReplicaMode = "open-read-only"|"mounted",
      MaxAllocatedStorage = 123,
      CustomIamInstanceProfile = "string",
      NetworkType = "string",
      StorageThroughput = 123,
      EnableCustomerOwnedIp = TRUE|FALSE,
      AllocatedStorage = 123,
      SourceDBClusterIdentifier = "string",
      SourceRegion = "string"
    )
