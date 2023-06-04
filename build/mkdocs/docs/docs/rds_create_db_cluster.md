<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>rds_create_db_cluster</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a new Amazon Aurora DB cluster or Multi-AZ DB cluster

### Description

Creates a new Amazon Aurora DB cluster or Multi-AZ DB cluster.

If you create an Aurora DB cluster, the request creates an empty
cluster. You must explicitly create the writer instance for your DB
cluster using the `create_db_instance` operation. If you create a
Multi-AZ DB cluster, the request creates a writer and two reader DB
instances for you, each in a different Availability Zone.

You can use the `ReplicationSourceIdentifier` parameter to create an
Amazon Aurora DB cluster as a read replica of another DB cluster or
Amazon RDS for MySQL or PostgreSQL DB instance. For more information
about Amazon Aurora, see [What is Amazon
Aurora?](https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/CHAP_AuroraOverview.html)
in the *Amazon Aurora User Guide*.

You can also use the `ReplicationSourceIdentifier` parameter to create a
Multi-AZ DB cluster read replica with an RDS for MySQL or PostgreSQL DB
instance as the source. For more information about Multi-AZ DB clusters,
see [Multi-AZ DB cluster
deployments](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/multi-az-db-clusters-concepts.html)
in the *Amazon RDS User Guide*.

### Usage

    rds_create_db_cluster(AvailabilityZones, BackupRetentionPeriod,
      CharacterSetName, DatabaseName, DBClusterIdentifier,
      DBClusterParameterGroupName, VpcSecurityGroupIds, DBSubnetGroupName,
      Engine, EngineVersion, Port, MasterUsername, MasterUserPassword,
      OptionGroupName, PreferredBackupWindow, PreferredMaintenanceWindow,
      ReplicationSourceIdentifier, Tags, StorageEncrypted, KmsKeyId,
      PreSignedUrl, EnableIAMDatabaseAuthentication, BacktrackWindow,
      EnableCloudwatchLogsExports, EngineMode, ScalingConfiguration,
      DeletionProtection, GlobalClusterIdentifier, EnableHttpEndpoint,
      CopyTagsToSnapshot, Domain, DomainIAMRoleName,
      EnableGlobalWriteForwarding, DBClusterInstanceClass, AllocatedStorage,
      StorageType, Iops, PubliclyAccessible, AutoMinorVersionUpgrade,
      MonitoringInterval, MonitoringRoleArn, EnablePerformanceInsights,
      PerformanceInsightsKMSKeyId, PerformanceInsightsRetentionPeriod,
      ServerlessV2ScalingConfiguration, NetworkType, DBSystemId,
      ManageMasterUserPassword, MasterUserSecretKmsKeyId, SourceRegion)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="rds_create_db_cluster_:_AvailabilityZones">AvailabilityZones</code></td>
<td><p>A list of Availability Zones (AZs) where DB instances in the DB
cluster can be created.</p>
<p>For information on Amazon Web Services Regions and Availability
Zones, see <a
href="https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/Concepts.RegionsAndAvailabilityZones.html">Choosing
the Regions and Availability Zones</a> in the <em>Amazon Aurora User
Guide</em>.</p>
<p>Valid for: Aurora DB clusters only</p></td>
</tr>
<tr class="even">
<td><code
id="rds_create_db_cluster_:_BackupRetentionPeriod">BackupRetentionPeriod</code></td>
<td><p>The number of days for which automated backups are retained.</p>
<p>Default: 1</p>
<p>Constraints:</p>
<ul>
<li><p>Must be a value from 1 to 35</p></li>
</ul>
<p>Valid for: Aurora DB clusters and Multi-AZ DB clusters</p></td>
</tr>
<tr class="odd">
<td><code
id="rds_create_db_cluster_:_CharacterSetName">CharacterSetName</code></td>
<td><p>A value that indicates that the DB cluster should be associated
with the specified CharacterSet.</p>
<p>Valid for: Aurora DB clusters only</p></td>
</tr>
<tr class="even">
<td><code
id="rds_create_db_cluster_:_DatabaseName">DatabaseName</code></td>
<td><p>The name for your database of up to 64 alphanumeric characters.
If you do not provide a name, Amazon RDS doesn't create a database in
the DB cluster you are creating.</p>
<p>Valid for: Aurora DB clusters and Multi-AZ DB clusters</p></td>
</tr>
<tr class="odd">
<td><code
id="rds_create_db_cluster_:_DBClusterIdentifier">DBClusterIdentifier</code></td>
<td><p>[required] The DB cluster identifier. This parameter is stored as
a lowercase string.</p>
<p>Constraints:</p>
<ul>
<li><p>Must contain from 1 to 63 letters, numbers, or hyphens.</p></li>
<li><p>First character must be a letter.</p></li>
<li><p>Can't end with a hyphen or contain two consecutive
hyphens.</p></li>
</ul>
<p>Example: <code>my-cluster1</code></p>
<p>Valid for: Aurora DB clusters and Multi-AZ DB clusters</p></td>
</tr>
<tr class="even">
<td><code
id="rds_create_db_cluster_:_DBClusterParameterGroupName">DBClusterParameterGroupName</code></td>
<td><p>The name of the DB cluster parameter group to associate with this
DB cluster. If you do not specify a value, then the default DB cluster
parameter group for the specified DB engine and version is used.</p>
<p>Constraints:</p>
<ul>
<li><p>If supplied, must match the name of an existing DB cluster
parameter group.</p></li>
</ul>
<p>Valid for: Aurora DB clusters and Multi-AZ DB clusters</p></td>
</tr>
<tr class="odd">
<td><code
id="rds_create_db_cluster_:_VpcSecurityGroupIds">VpcSecurityGroupIds</code></td>
<td><p>A list of EC2 VPC security groups to associate with this DB
cluster.</p>
<p>Valid for: Aurora DB clusters and Multi-AZ DB clusters</p></td>
</tr>
<tr class="even">
<td><code
id="rds_create_db_cluster_:_DBSubnetGroupName">DBSubnetGroupName</code></td>
<td><p>A DB subnet group to associate with this DB cluster.</p>
<p>This setting is required to create a Multi-AZ DB cluster.</p>
<p>Constraints: Must match the name of an existing DBSubnetGroup. Must
not be default.</p>
<p>Example: <code>mydbsubnetgroup</code></p>
<p>Valid for: Aurora DB clusters and Multi-AZ DB clusters</p></td>
</tr>
<tr class="odd">
<td><code id="rds_create_db_cluster_:_Engine">Engine</code></td>
<td><p>[required] The name of the database engine to be used for this DB
cluster.</p>
<p>Valid Values:</p>
<ul>
<li><p><code>aurora-mysql</code></p></li>
<li><p><code>aurora-postgresql</code></p></li>
<li><p><code>mysql</code></p></li>
<li><p><code>postgres</code></p></li>
</ul>
<p>Valid for: Aurora DB clusters and Multi-AZ DB clusters</p></td>
</tr>
<tr class="even">
<td><code
id="rds_create_db_cluster_:_EngineVersion">EngineVersion</code></td>
<td><p>The version number of the database engine to use.</p>
<p>To list all of the available engine versions for Aurora MySQL version
2 (5.7-compatible) and version 3 (MySQL 8.0-compatible), use the
following command:</p>
<p><code
style="white-space: pre;">⁠aws rds describe-db-engine-versions --engine aurora-mysql --query "DBEngineVersions[].EngineVersion"⁠</code></p>
<p>You can supply either <code>5.7</code> or <code>8.0</code> to use the
default engine version for Aurora MySQL version 2 or version 3,
respectively.</p>
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
<p>For information, see <a
href="https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/AuroraMySQL.Updates.html">Database
engine updates for Amazon Aurora MySQL</a> in the <em>Amazon Aurora User
Guide</em>.</p>
<p><strong>Aurora PostgreSQL</strong></p>
<p>For information, see <a
href="https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/AuroraPostgreSQL.Updates.20180305.html">Amazon
Aurora PostgreSQL releases and engine versions</a> in the <em>Amazon
Aurora User Guide</em>.</p>
<p><strong>MySQL</strong></p>
<p>For information, see <a
href="https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/CHAP_MySQL.html#MySQL.Concepts.VersionMgmt">Amazon
RDS for MySQL</a> in the <em>Amazon RDS User Guide</em>.</p>
<p><strong>PostgreSQL</strong></p>
<p>For information, see <a
href="https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/CHAP_PostgreSQL.html#PostgreSQL.Concepts">Amazon
RDS for PostgreSQL</a> in the <em>Amazon RDS User Guide</em>.</p>
<p>Valid for: Aurora DB clusters and Multi-AZ DB clusters</p></td>
</tr>
<tr class="odd">
<td><code id="rds_create_db_cluster_:_Port">Port</code></td>
<td><p>The port number on which the instances in the DB cluster accept
connections.</p>
<p><strong>RDS for MySQL and Aurora MySQL</strong></p>
<p>Default: <code>3306</code></p>
<p>Valid values: <code>1150-65535</code></p>
<p><strong>RDS for PostgreSQL and Aurora PostgreSQL</strong></p>
<p>Default: <code>5432</code></p>
<p>Valid values: <code>1150-65535</code></p>
<p>Valid for: Aurora DB clusters and Multi-AZ DB clusters</p></td>
</tr>
<tr class="even">
<td><code
id="rds_create_db_cluster_:_MasterUsername">MasterUsername</code></td>
<td><p>The name of the master user for the DB cluster.</p>
<p>Constraints:</p>
<ul>
<li><p>Must be 1 to 16 letters or numbers.</p></li>
<li><p>First character must be a letter.</p></li>
<li><p>Can't be a reserved word for the chosen database engine.</p></li>
</ul>
<p>Valid for: Aurora DB clusters and Multi-AZ DB clusters</p></td>
</tr>
<tr class="odd">
<td><code
id="rds_create_db_cluster_:_MasterUserPassword">MasterUserPassword</code></td>
<td><p>The password for the master database user. This password can
contain any printable ASCII character except "/", """, or "@".</p>
<p>Constraints:</p>
<ul>
<li><p>Must contain from 8 to 41 characters.</p></li>
<li><p>Can't be specified if <code>ManageMasterUserPassword</code> is
turned on.</p></li>
</ul>
<p>Valid for: Aurora DB clusters and Multi-AZ DB clusters</p></td>
</tr>
<tr class="even">
<td><code
id="rds_create_db_cluster_:_OptionGroupName">OptionGroupName</code></td>
<td><p>A value that indicates that the DB cluster should be associated
with the specified option group.</p>
<p>DB clusters are associated with a default option group that can't be
modified.</p></td>
</tr>
<tr class="odd">
<td><code
id="rds_create_db_cluster_:_PreferredBackupWindow">PreferredBackupWindow</code></td>
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
</ul>
<p>Valid for: Aurora DB clusters and Multi-AZ DB clusters</p></td>
</tr>
<tr class="even">
<td><code
id="rds_create_db_cluster_:_PreferredMaintenanceWindow">PreferredMaintenanceWindow</code></td>
<td><p>The weekly time range during which system maintenance can occur,
in Universal Coordinated Time (UTC).</p>
<p>Format: <code>ddd:hh24:mi-ddd:hh24:mi</code></p>
<p>The default is a 30-minute window selected at random from an 8-hour
block of time for each Amazon Web Services Region, occurring on a random
day of the week. To see the time blocks available, see <a
href="https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/USER_UpgradeDBInstance.Maintenance.html#AdjustingTheMaintenanceWindow.Aurora">Adjusting
the Preferred DB Cluster Maintenance Window</a> in the <em>Amazon Aurora
User Guide</em>.</p>
<p>Valid Days: Mon, Tue, Wed, Thu, Fri, Sat, Sun.</p>
<p>Constraints: Minimum 30-minute window.</p>
<p>Valid for: Aurora DB clusters and Multi-AZ DB clusters</p></td>
</tr>
<tr class="odd">
<td><code
id="rds_create_db_cluster_:_ReplicationSourceIdentifier">ReplicationSourceIdentifier</code></td>
<td><p>The Amazon Resource Name (ARN) of the source DB instance or DB
cluster if this DB cluster is created as a read replica.</p>
<p>Valid for: Aurora DB clusters and Multi-AZ DB clusters</p></td>
</tr>
<tr class="even">
<td><code id="rds_create_db_cluster_:_Tags">Tags</code></td>
<td><p>Tags to assign to the DB cluster.</p>
<p>Valid for: Aurora DB clusters and Multi-AZ DB clusters</p></td>
</tr>
<tr class="odd">
<td><code
id="rds_create_db_cluster_:_StorageEncrypted">StorageEncrypted</code></td>
<td><p>A value that indicates whether the DB cluster is encrypted.</p>
<p>Valid for: Aurora DB clusters and Multi-AZ DB clusters</p></td>
</tr>
<tr class="even">
<td><code id="rds_create_db_cluster_:_KmsKeyId">KmsKeyId</code></td>
<td><p>The Amazon Web Services KMS key identifier for an encrypted DB
cluster.</p>
<p>The Amazon Web Services KMS key identifier is the key ARN, key ID,
alias ARN, or alias name for the KMS key. To use a KMS key in a
different Amazon Web Services account, specify the key ARN or alias
ARN.</p>
<p>When a KMS key isn't specified in <code>KmsKeyId</code>:</p>
<ul>
<li><p>If <code>ReplicationSourceIdentifier</code> identifies an
encrypted source, then Amazon RDS will use the KMS key used to encrypt
the source. Otherwise, Amazon RDS will use your default KMS
key.</p></li>
<li><p>If the <code>StorageEncrypted</code> parameter is enabled and
<code>ReplicationSourceIdentifier</code> isn't specified, then Amazon
RDS will use your default KMS key.</p></li>
</ul>
<p>There is a default KMS key for your Amazon Web Services account. Your
Amazon Web Services account has a different default KMS key for each
Amazon Web Services Region.</p>
<p>If you create a read replica of an encrypted DB cluster in another
Amazon Web Services Region, you must set <code>KmsKeyId</code> to a KMS
key identifier that is valid in the destination Amazon Web Services
Region. This KMS key is used to encrypt the read replica in that Amazon
Web Services Region.</p>
<p>Valid for: Aurora DB clusters and Multi-AZ DB clusters</p></td>
</tr>
<tr class="odd">
<td><code
id="rds_create_db_cluster_:_PreSignedUrl">PreSignedUrl</code></td>
<td><p>When you are replicating a DB cluster from one Amazon Web
Services GovCloud (US) Region to another, an URL that contains a
Signature Version 4 signed request for the
<code>create_db_cluster</code> operation to be called in the source
Amazon Web Services Region where the DB cluster is replicated from.
Specify <code>PreSignedUrl</code> only when you are performing
cross-Region replication from an encrypted DB cluster.</p>
<p>The presigned URL must be a valid request for the
<code>create_db_cluster</code> API operation that can run in the source
Amazon Web Services Region that contains the encrypted DB cluster to
copy.</p>
<p>The presigned URL request must contain the following parameter
values:</p>
<ul>
<li><p><code>KmsKeyId</code> - The KMS key identifier for the KMS key to
use to encrypt the copy of the DB cluster in the destination Amazon Web
Services Region. This should refer to the same KMS key for both the
<code>create_db_cluster</code> operation that is called in the
destination Amazon Web Services Region, and the operation contained in
the presigned URL.</p></li>
<li><p><code>DestinationRegion</code> - The name of the Amazon Web
Services Region that Aurora read replica will be created in.</p></li>
<li><p><code>ReplicationSourceIdentifier</code> - The DB cluster
identifier for the encrypted DB cluster to be copied. This identifier
must be in the Amazon Resource Name (ARN) format for the source Amazon
Web Services Region. For example, if you are copying an encrypted DB
cluster from the us-west-2 Amazon Web Services Region, then your
<code>ReplicationSourceIdentifier</code> would look like Example:
<code>arn:aws:rds:us-west-2:123456789012:cluster:aurora-cluster1</code>.</p></li>
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
<p>Valid for: Aurora DB clusters only</p>
<p>If you supply a value for this operation's <code>SourceRegion</code>
parameter, a pre-signed URL will be calculated on your behalf.</p></td>
</tr>
<tr class="even">
<td><code
id="rds_create_db_cluster_:_EnableIAMDatabaseAuthentication">EnableIAMDatabaseAuthentication</code></td>
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
id="rds_create_db_cluster_:_BacktrackWindow">BacktrackWindow</code></td>
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
id="rds_create_db_cluster_:_EnableCloudwatchLogsExports">EnableCloudwatchLogsExports</code></td>
<td><p>The list of log types that need to be enabled for exporting to
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
<td><code id="rds_create_db_cluster_:_EngineMode">EngineMode</code></td>
<td><p>The DB engine mode of the DB cluster, either
<code>provisioned</code> or <code>serverless</code>.</p>
<p>The <code>serverless</code> engine mode only applies for Aurora
Serverless v1 DB clusters.</p>
<p>For information about limitations and requirements for Serverless DB
clusters, see the following sections in the <em>Amazon Aurora User
Guide</em>:</p>
<ul>
<li><p><a
href="https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/aurora-serverless.html#aurora-serverless.limitations">Limitations
of Aurora Serverless v1</a></p></li>
<li><p><a
href="https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/aurora-serverless-v2.requirements.html">Requirements
for Aurora Serverless v2</a></p></li>
</ul>
<p>Valid for: Aurora DB clusters only</p></td>
</tr>
<tr class="even">
<td><code
id="rds_create_db_cluster_:_ScalingConfiguration">ScalingConfiguration</code></td>
<td><p>For DB clusters in <code>serverless</code> DB engine mode, the
scaling properties of the DB cluster.</p>
<p>Valid for: Aurora DB clusters only</p></td>
</tr>
<tr class="odd">
<td><code
id="rds_create_db_cluster_:_DeletionProtection">DeletionProtection</code></td>
<td><p>A value that indicates whether the DB cluster has deletion
protection enabled. The database can't be deleted when deletion
protection is enabled. By default, deletion protection isn't
enabled.</p>
<p>Valid for: Aurora DB clusters and Multi-AZ DB clusters</p></td>
</tr>
<tr class="even">
<td><code
id="rds_create_db_cluster_:_GlobalClusterIdentifier">GlobalClusterIdentifier</code></td>
<td><p>The global cluster ID of an Aurora cluster that becomes the
primary cluster in the new global database cluster.</p>
<p>Valid for: Aurora DB clusters only</p></td>
</tr>
<tr class="odd">
<td><code
id="rds_create_db_cluster_:_EnableHttpEndpoint">EnableHttpEndpoint</code></td>
<td><p>A value that indicates whether to enable the HTTP endpoint for an
Aurora Serverless v1 DB cluster. By default, the HTTP endpoint is
disabled.</p>
<p>When enabled, the HTTP endpoint provides a connectionless web service
API for running SQL queries on the Aurora Serverless v1 DB cluster. You
can also query your database from inside the RDS console with the query
editor.</p>
<p>For more information, see <a
href="https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/data-api.html">Using
the Data API for Aurora Serverless v1</a> in the <em>Amazon Aurora User
Guide</em>.</p>
<p>Valid for: Aurora DB clusters only</p></td>
</tr>
<tr class="even">
<td><code
id="rds_create_db_cluster_:_CopyTagsToSnapshot">CopyTagsToSnapshot</code></td>
<td><p>A value that indicates whether to copy all tags from the DB
cluster to snapshots of the DB cluster. The default is not to copy
them.</p>
<p>Valid for: Aurora DB clusters and Multi-AZ DB clusters</p></td>
</tr>
<tr class="odd">
<td><code id="rds_create_db_cluster_:_Domain">Domain</code></td>
<td><p>The Active Directory directory ID to create the DB cluster
in.</p>
<p>For Amazon Aurora DB clusters, Amazon RDS can use Kerberos
authentication to authenticate users that connect to the DB cluster.</p>
<p>For more information, see <a
href="https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/database-authentication.html">Kerberos
authentication</a> in the <em>Amazon Aurora User Guide</em>.</p>
<p>Valid for: Aurora DB clusters only</p></td>
</tr>
<tr class="even">
<td><code
id="rds_create_db_cluster_:_DomainIAMRoleName">DomainIAMRoleName</code></td>
<td><p>Specify the name of the IAM role to be used when making API calls
to the Directory Service.</p>
<p>Valid for: Aurora DB clusters only</p></td>
</tr>
<tr class="odd">
<td><code
id="rds_create_db_cluster_:_EnableGlobalWriteForwarding">EnableGlobalWriteForwarding</code></td>
<td><p>A value that indicates whether to enable this DB cluster to
forward write operations to the primary cluster of an Aurora global
database (GlobalCluster). By default, write operations are not allowed
on Aurora DB clusters that are secondary clusters in an Aurora global
database.</p>
<p>You can set this value only on Aurora DB clusters that are members of
an Aurora global database. With this parameter enabled, a secondary
cluster can forward writes to the current primary cluster and the
resulting changes are replicated back to this cluster. For the primary
DB cluster of an Aurora global database, this value is used immediately
if the primary is demoted by the <code>failover_global_cluster</code>
API operation, but it does nothing until then.</p>
<p>Valid for: Aurora DB clusters only</p></td>
</tr>
<tr class="even">
<td><code
id="rds_create_db_cluster_:_DBClusterInstanceClass">DBClusterInstanceClass</code></td>
<td><p>The compute and memory capacity of each DB instance in the
Multi-AZ DB cluster, for example db.m6gd.xlarge. Not all DB instance
classes are available in all Amazon Web Services Regions, or for all
database engines.</p>
<p>For the full list of DB instance classes and availability for your
engine, see <a
href="https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Concepts.DBInstanceClass.html">DB
instance class</a> in the <em>Amazon RDS User Guide</em>.</p>
<p>This setting is required to create a Multi-AZ DB cluster.</p>
<p>Valid for: Multi-AZ DB clusters only</p></td>
</tr>
<tr class="odd">
<td><code
id="rds_create_db_cluster_:_AllocatedStorage">AllocatedStorage</code></td>
<td><p>The amount of storage in gibibytes (GiB) to allocate to each DB
instance in the Multi-AZ DB cluster.</p>
<p>This setting is required to create a Multi-AZ DB cluster.</p>
<p>Valid for: Multi-AZ DB clusters only</p></td>
</tr>
<tr class="even">
<td><code
id="rds_create_db_cluster_:_StorageType">StorageType</code></td>
<td><p>Specifies the storage type to be associated with the DB
cluster.</p>
<p>This setting is required to create a Multi-AZ DB cluster.</p>
<p>When specified for a Multi-AZ DB cluster, a value for the
<code>Iops</code> parameter is required.</p>
<p>Valid values: <code>aurora</code>, <code>aurora-iopt1</code> (Aurora
DB clusters); <code>io1</code> (Multi-AZ DB clusters)</p>
<p>Default: <code>aurora</code> (Aurora DB clusters); <code>io1</code>
(Multi-AZ DB clusters)</p>
<p>Valid for: Aurora DB clusters and Multi-AZ DB clusters</p></td>
</tr>
<tr class="odd">
<td><code id="rds_create_db_cluster_:_Iops">Iops</code></td>
<td><p>The amount of Provisioned IOPS (input/output operations per
second) to be initially allocated for each DB instance in the Multi-AZ
DB cluster.</p>
<p>For information about valid IOPS values, see <a
href="https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/CHAP_Storage.html#USER_PIOPS">Provisioned
IOPS storage</a> in the <em>Amazon RDS User Guide</em>.</p>
<p>This setting is required to create a Multi-AZ DB cluster.</p>
<p>Constraints: Must be a multiple between .5 and 50 of the storage
amount for the DB cluster.</p>
<p>Valid for: Multi-AZ DB clusters only</p></td>
</tr>
<tr class="even">
<td><code
id="rds_create_db_cluster_:_PubliclyAccessible">PubliclyAccessible</code></td>
<td><p>A value that indicates whether the DB cluster is publicly
accessible.</p>
<p>When the DB cluster is publicly accessible, its Domain Name System
(DNS) endpoint resolves to the private IP address from within the DB
cluster's virtual private cloud (VPC). It resolves to the public IP
address from outside of the DB cluster's VPC. Access to the DB cluster
is ultimately controlled by the security group it uses. That public
access isn't permitted if the security group assigned to the DB cluster
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
id="rds_create_db_cluster_:_AutoMinorVersionUpgrade">AutoMinorVersionUpgrade</code></td>
<td><p>A value that indicates whether minor engine upgrades are applied
automatically to the DB cluster during the maintenance window. By
default, minor engine upgrades are applied automatically.</p>
<p>Valid for: Multi-AZ DB clusters only</p></td>
</tr>
<tr class="even">
<td><code
id="rds_create_db_cluster_:_MonitoringInterval">MonitoringInterval</code></td>
<td><p>The interval, in seconds, between points when Enhanced Monitoring
metrics are collected for the DB cluster. To turn off collecting
Enhanced Monitoring metrics, specify 0. The default is 0.</p>
<p>If <code>MonitoringRoleArn</code> is specified, also set
<code>MonitoringInterval</code> to a value other than 0.</p>
<p>Valid Values: <code
style="white-space: pre;">⁠0, 1, 5, 10, 15, 30, 60⁠</code></p>
<p>Valid for: Multi-AZ DB clusters only</p></td>
</tr>
<tr class="odd">
<td><code
id="rds_create_db_cluster_:_MonitoringRoleArn">MonitoringRoleArn</code></td>
<td><p>The Amazon Resource Name (ARN) for the IAM role that permits RDS
to send Enhanced Monitoring metrics to Amazon CloudWatch Logs. An
example is <code>arn:aws:iam:123456789012:role/emaccess</code>. For
information on creating a monitoring role, see <a
href="https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Monitoring.OS.html#USER_Monitoring.OS.Enabling">Setting
up and enabling Enhanced Monitoring</a> in the <em>Amazon RDS User
Guide</em>.</p>
<p>If <code>MonitoringInterval</code> is set to a value other than 0,
supply a <code>MonitoringRoleArn</code> value.</p>
<p>Valid for: Multi-AZ DB clusters only</p></td>
</tr>
<tr class="even">
<td><code
id="rds_create_db_cluster_:_EnablePerformanceInsights">EnablePerformanceInsights</code></td>
<td><p>A value that indicates whether to turn on Performance Insights
for the DB cluster.</p>
<p>For more information, see <a
href="https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_PerfInsights.html">Using
Amazon Performance Insights</a> in the <em>Amazon RDS User
Guide</em>.</p>
<p>Valid for: Multi-AZ DB clusters only</p></td>
</tr>
<tr class="odd">
<td><code
id="rds_create_db_cluster_:_PerformanceInsightsKMSKeyId">PerformanceInsightsKMSKeyId</code></td>
<td><p>The Amazon Web Services KMS key identifier for encryption of
Performance Insights data.</p>
<p>The Amazon Web Services KMS key identifier is the key ARN, key ID,
alias ARN, or alias name for the KMS key.</p>
<p>If you don't specify a value for
<code>PerformanceInsightsKMSKeyId</code>, then Amazon RDS uses your
default KMS key. There is a default KMS key for your Amazon Web Services
account. Your Amazon Web Services account has a different default KMS
key for each Amazon Web Services Region.</p>
<p>Valid for: Multi-AZ DB clusters only</p></td>
</tr>
<tr class="even">
<td><code
id="rds_create_db_cluster_:_PerformanceInsightsRetentionPeriod">PerformanceInsightsRetentionPeriod</code></td>
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
<p>Valid for: Multi-AZ DB clusters only</p></td>
</tr>
<tr class="odd">
<td><code
id="rds_create_db_cluster_:_ServerlessV2ScalingConfiguration">ServerlessV2ScalingConfiguration</code></td>
<td></td>
</tr>
<tr class="even">
<td><code
id="rds_create_db_cluster_:_NetworkType">NetworkType</code></td>
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
<tr class="odd">
<td><code id="rds_create_db_cluster_:_DBSystemId">DBSystemId</code></td>
<td><p>Reserved for future use.</p></td>
</tr>
<tr class="even">
<td><code
id="rds_create_db_cluster_:_ManageMasterUserPassword">ManageMasterUserPassword</code></td>
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
</ul>
<p>Valid for: Aurora DB clusters and Multi-AZ DB clusters</p></td>
</tr>
<tr class="odd">
<td><code
id="rds_create_db_cluster_:_MasterUserSecretKmsKeyId">MasterUserSecretKmsKeyId</code></td>
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
Amazon Web Services Region.</p>
<p>Valid for: Aurora DB clusters and Multi-AZ DB clusters</p></td>
</tr>
<tr class="even">
<td><code
id="rds_create_db_cluster_:_SourceRegion">SourceRegion</code></td>
<td><p>The ID of the region that contains the source for the read
replica.</p></td>
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

    svc$create_db_cluster(
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
      ReplicationSourceIdentifier = "string",
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      ),
      StorageEncrypted = TRUE|FALSE,
      KmsKeyId = "string",
      PreSignedUrl = "string",
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
      DeletionProtection = TRUE|FALSE,
      GlobalClusterIdentifier = "string",
      EnableHttpEndpoint = TRUE|FALSE,
      CopyTagsToSnapshot = TRUE|FALSE,
      Domain = "string",
      DomainIAMRoleName = "string",
      EnableGlobalWriteForwarding = TRUE|FALSE,
      DBClusterInstanceClass = "string",
      AllocatedStorage = 123,
      StorageType = "string",
      Iops = 123,
      PubliclyAccessible = TRUE|FALSE,
      AutoMinorVersionUpgrade = TRUE|FALSE,
      MonitoringInterval = 123,
      MonitoringRoleArn = "string",
      EnablePerformanceInsights = TRUE|FALSE,
      PerformanceInsightsKMSKeyId = "string",
      PerformanceInsightsRetentionPeriod = 123,
      ServerlessV2ScalingConfiguration = list(
        MinCapacity = 123.0,
        MaxCapacity = 123.0
      ),
      NetworkType = "string",
      DBSystemId = "string",
      ManageMasterUserPassword = TRUE|FALSE,
      MasterUserSecretKmsKeyId = "string",
      SourceRegion = "string"
    )
