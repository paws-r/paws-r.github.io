<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>rds_modify_db_cluster</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Modify the settings for an Amazon Aurora DB cluster or a Multi-AZ DB cluster

### Description

Modify the settings for an Amazon Aurora DB cluster or a Multi-AZ DB
cluster. You can change one or more settings by specifying these
parameters and the new values in the request.

For more information on Amazon Aurora DB clusters, see [What is Amazon
Aurora?](https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/CHAP_AuroraOverview.html)
in the *Amazon Aurora User Guide*.

For more information on Multi-AZ DB clusters, see [Multi-AZ DB cluster
deployments](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/multi-az-db-clusters-concepts.html)
in the *Amazon RDS User Guide*.

### Usage

    rds_modify_db_cluster(DBClusterIdentifier, NewDBClusterIdentifier,
      ApplyImmediately, BackupRetentionPeriod, DBClusterParameterGroupName,
      VpcSecurityGroupIds, Port, MasterUserPassword, OptionGroupName,
      PreferredBackupWindow, PreferredMaintenanceWindow,
      EnableIAMDatabaseAuthentication, BacktrackWindow,
      CloudwatchLogsExportConfiguration, EngineVersion,
      AllowMajorVersionUpgrade, DBInstanceParameterGroupName, Domain,
      DomainIAMRoleName, ScalingConfiguration, DeletionProtection,
      EnableHttpEndpoint, CopyTagsToSnapshot, EnableGlobalWriteForwarding,
      DBClusterInstanceClass, AllocatedStorage, StorageType, Iops,
      AutoMinorVersionUpgrade, MonitoringInterval, MonitoringRoleArn,
      EnablePerformanceInsights, PerformanceInsightsKMSKeyId,
      PerformanceInsightsRetentionPeriod, ServerlessV2ScalingConfiguration,
      NetworkType, ManageMasterUserPassword, RotateMasterUserPassword,
      MasterUserSecretKmsKeyId, EngineMode, AllowEngineModeChange)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="rds_modify_db_cluster_:_DBClusterIdentifier">DBClusterIdentifier</code></td>
<td><p>[required] The DB cluster identifier for the cluster being
modified. This parameter isn't case-sensitive.</p>
<p>Constraints: This identifier must match the identifier of an existing
DB cluster.</p>
<p>Valid for: Aurora DB clusters and Multi-AZ DB clusters</p></td>
</tr>
<tr class="even">
<td><code
id="rds_modify_db_cluster_:_NewDBClusterIdentifier">NewDBClusterIdentifier</code></td>
<td><p>The new DB cluster identifier for the DB cluster when renaming a
DB cluster. This value is stored as a lowercase string.</p>
<p>Constraints:</p>
<ul>
<li><p>Must contain from 1 to 63 letters, numbers, or hyphens</p></li>
<li><p>The first character must be a letter</p></li>
<li><p>Can't end with a hyphen or contain two consecutive
hyphens</p></li>
</ul>
<p>Example: <code>my-cluster2</code></p>
<p>Valid for: Aurora DB clusters and Multi-AZ DB clusters</p></td>
</tr>
<tr class="odd">
<td><code
id="rds_modify_db_cluster_:_ApplyImmediately">ApplyImmediately</code></td>
<td><p>A value that indicates whether the modifications in this request
and any pending modifications are asynchronously applied as soon as
possible, regardless of the <code>PreferredMaintenanceWindow</code>
setting for the DB cluster. If this parameter is disabled, changes to
the DB cluster are applied during the next maintenance window.</p>
<p>Most modifications can be applied immediately or during the next
scheduled maintenance window. Some modifications, such as turning on
deletion protection and changing the master password, are applied
immediately—regardless of when you choose to apply them.</p>
<p>By default, this parameter is disabled.</p>
<p>Valid for: Aurora DB clusters and Multi-AZ DB clusters</p></td>
</tr>
<tr class="even">
<td><code
id="rds_modify_db_cluster_:_BackupRetentionPeriod">BackupRetentionPeriod</code></td>
<td><p>The number of days for which automated backups are retained.
Specify a minimum value of 1.</p>
<p>Default: 1</p>
<p>Constraints:</p>
<ul>
<li><p>Must be a value from 1 to 35</p></li>
</ul>
<p>Valid for: Aurora DB clusters and Multi-AZ DB clusters</p></td>
</tr>
<tr class="odd">
<td><code
id="rds_modify_db_cluster_:_DBClusterParameterGroupName">DBClusterParameterGroupName</code></td>
<td><p>The name of the DB cluster parameter group to use for the DB
cluster.</p>
<p>Valid for: Aurora DB clusters and Multi-AZ DB clusters</p></td>
</tr>
<tr class="even">
<td><code
id="rds_modify_db_cluster_:_VpcSecurityGroupIds">VpcSecurityGroupIds</code></td>
<td><p>A list of VPC security groups that the DB cluster will belong
to.</p>
<p>Valid for: Aurora DB clusters and Multi-AZ DB clusters</p></td>
</tr>
<tr class="odd">
<td><code id="rds_modify_db_cluster_:_Port">Port</code></td>
<td><p>The port number on which the DB cluster accepts connections.</p>
<p>Constraints: Value must be <code>1150-65535</code></p>
<p>Default: The same port as the original DB cluster.</p>
<p>Valid for: Aurora DB clusters only</p></td>
</tr>
<tr class="even">
<td><code
id="rds_modify_db_cluster_:_MasterUserPassword">MasterUserPassword</code></td>
<td><p>The new password for the master database user. This password can
contain any printable ASCII character except "/", """, or "@".</p>
<p>Constraints:</p>
<ul>
<li><p>Must contain from 8 to 41 characters.</p></li>
<li><p>Can't be specified if <code>ManageMasterUserPassword</code> is
turned on.</p></li>
</ul>
<p>Valid for: Aurora DB clusters and Multi-AZ DB clusters</p></td>
</tr>
<tr class="odd">
<td><code
id="rds_modify_db_cluster_:_OptionGroupName">OptionGroupName</code></td>
<td><p>A value that indicates that the DB cluster should be associated
with the specified option group.</p>
<p>DB clusters are associated with a default option group that can't be
modified.</p></td>
</tr>
<tr class="even">
<td><code
id="rds_modify_db_cluster_:_PreferredBackupWindow">PreferredBackupWindow</code></td>
<td><p>The daily time range during which automated backups are created
if automated backups are enabled, using the
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
<tr class="odd">
<td><code
id="rds_modify_db_cluster_:_PreferredMaintenanceWindow">PreferredMaintenanceWindow</code></td>
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
<tr class="even">
<td><code
id="rds_modify_db_cluster_:_EnableIAMDatabaseAuthentication">EnableIAMDatabaseAuthentication</code></td>
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
id="rds_modify_db_cluster_:_BacktrackWindow">BacktrackWindow</code></td>
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
id="rds_modify_db_cluster_:_CloudwatchLogsExportConfiguration">CloudwatchLogsExportConfiguration</code></td>
<td><p>The configuration setting for the log types to be enabled for
export to CloudWatch Logs for a specific DB cluster. The values in the
list depend on the DB engine being used.</p>
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
id="rds_modify_db_cluster_:_EngineVersion">EngineVersion</code></td>
<td><p>The version number of the database engine to which you want to
upgrade. Changing this parameter results in an outage. The change is
applied during the next maintenance window unless
<code>ApplyImmediately</code> is enabled.</p>
<p>If the cluster that you're modifying has one or more read replicas,
all replicas must be running an engine version that's the same or later
than the version you specify.</p>
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
<p>Valid for: Aurora DB clusters and Multi-AZ DB clusters</p></td>
</tr>
<tr class="even">
<td><code
id="rds_modify_db_cluster_:_AllowMajorVersionUpgrade">AllowMajorVersionUpgrade</code></td>
<td><p>A value that indicates whether major version upgrades are
allowed.</p>
<p>Constraints: You must allow major version upgrades when specifying a
value for the <code>EngineVersion</code> parameter that is a different
major version than the DB cluster's current version.</p>
<p>Valid for: Aurora DB clusters only</p></td>
</tr>
<tr class="odd">
<td><code
id="rds_modify_db_cluster_:_DBInstanceParameterGroupName">DBInstanceParameterGroupName</code></td>
<td><p>The name of the DB parameter group to apply to all instances of
the DB cluster.</p>
<p>When you apply a parameter group using the
<code>DBInstanceParameterGroupName</code> parameter, the DB cluster
isn't rebooted automatically. Also, parameter changes are applied
immediately rather than during the next maintenance window.</p>
<p>Default: The existing name setting</p>
<p>Constraints:</p>
<ul>
<li><p>The DB parameter group must be in the same DB parameter group
family as this DB cluster.</p></li>
<li><p>The <code>DBInstanceParameterGroupName</code> parameter is valid
in combination with the <code>AllowMajorVersionUpgrade</code> parameter
for a major version upgrade only.</p></li>
</ul>
<p>Valid for: Aurora DB clusters only</p></td>
</tr>
<tr class="even">
<td><code id="rds_modify_db_cluster_:_Domain">Domain</code></td>
<td><p>The Active Directory directory ID to move the DB cluster to.
Specify <code>none</code> to remove the cluster from its current domain.
The domain must be created prior to this operation.</p>
<p>For more information, see <a
href="https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/database-authentication.html">Kerberos
Authentication</a> in the <em>Amazon Aurora User Guide</em>.</p>
<p>Valid for: Aurora DB clusters only</p></td>
</tr>
<tr class="odd">
<td><code
id="rds_modify_db_cluster_:_DomainIAMRoleName">DomainIAMRoleName</code></td>
<td><p>Specify the name of the IAM role to be used when making API calls
to the Directory Service.</p>
<p>Valid for: Aurora DB clusters only</p></td>
</tr>
<tr class="even">
<td><code
id="rds_modify_db_cluster_:_ScalingConfiguration">ScalingConfiguration</code></td>
<td><p>The scaling properties of the DB cluster. You can only modify
scaling properties for DB clusters in <code>serverless</code> DB engine
mode.</p>
<p>Valid for: Aurora DB clusters only</p></td>
</tr>
<tr class="odd">
<td><code
id="rds_modify_db_cluster_:_DeletionProtection">DeletionProtection</code></td>
<td><p>A value that indicates whether the DB cluster has deletion
protection enabled. The database can't be deleted when deletion
protection is enabled. By default, deletion protection isn't
enabled.</p>
<p>Valid for: Aurora DB clusters and Multi-AZ DB clusters</p></td>
</tr>
<tr class="even">
<td><code
id="rds_modify_db_cluster_:_EnableHttpEndpoint">EnableHttpEndpoint</code></td>
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
<tr class="odd">
<td><code
id="rds_modify_db_cluster_:_CopyTagsToSnapshot">CopyTagsToSnapshot</code></td>
<td><p>A value that indicates whether to copy all tags from the DB
cluster to snapshots of the DB cluster. The default is not to copy
them.</p>
<p>Valid for: Aurora DB clusters and Multi-AZ DB clusters</p></td>
</tr>
<tr class="even">
<td><code
id="rds_modify_db_cluster_:_EnableGlobalWriteForwarding">EnableGlobalWriteForwarding</code></td>
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
<tr class="odd">
<td><code
id="rds_modify_db_cluster_:_DBClusterInstanceClass">DBClusterInstanceClass</code></td>
<td><p>The compute and memory capacity of each DB instance in the
Multi-AZ DB cluster, for example db.m6gd.xlarge. Not all DB instance
classes are available in all Amazon Web Services Regions, or for all
database engines.</p>
<p>For the full list of DB instance classes and availability for your
engine, see <a
href="https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Concepts.DBInstanceClass.html">DB
Instance Class</a> in the <em>Amazon RDS User Guide</em>.</p>
<p>Valid for: Multi-AZ DB clusters only</p></td>
</tr>
<tr class="even">
<td><code
id="rds_modify_db_cluster_:_AllocatedStorage">AllocatedStorage</code></td>
<td><p>The amount of storage in gibibytes (GiB) to allocate to each DB
instance in the Multi-AZ DB cluster.</p>
<p>Valid for: Multi-AZ DB clusters only</p></td>
</tr>
<tr class="odd">
<td><code
id="rds_modify_db_cluster_:_StorageType">StorageType</code></td>
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
<td><code id="rds_modify_db_cluster_:_Iops">Iops</code></td>
<td><p>The amount of Provisioned IOPS (input/output operations per
second) to be initially allocated for each DB instance in the Multi-AZ
DB cluster.</p>
<p>For information about valid IOPS values, see <a
href="https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/CHAP_Storage.html#USER_PIOPS">Amazon
RDS Provisioned IOPS storage</a> in the <em>Amazon RDS User
Guide</em>.</p>
<p>Constraints: Must be a multiple between .5 and 50 of the storage
amount for the DB cluster.</p>
<p>Valid for: Multi-AZ DB clusters only</p></td>
</tr>
<tr class="odd">
<td><code
id="rds_modify_db_cluster_:_AutoMinorVersionUpgrade">AutoMinorVersionUpgrade</code></td>
<td><p>A value that indicates whether minor engine upgrades are applied
automatically to the DB cluster during the maintenance window. By
default, minor engine upgrades are applied automatically.</p>
<p>Valid for: Multi-AZ DB clusters only</p></td>
</tr>
<tr class="even">
<td><code
id="rds_modify_db_cluster_:_MonitoringInterval">MonitoringInterval</code></td>
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
id="rds_modify_db_cluster_:_MonitoringRoleArn">MonitoringRoleArn</code></td>
<td><p>The Amazon Resource Name (ARN) for the IAM role that permits RDS
to send Enhanced Monitoring metrics to Amazon CloudWatch Logs. An
example is <code>arn:aws:iam:123456789012:role/emaccess</code>. For
information on creating a monitoring role, see <a
href="https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Monitoring.html#USER_Monitoring.OS.IAMRole">To
create an IAM role for Amazon RDS Enhanced Monitoring</a> in the
<em>Amazon RDS User Guide.</em></p>
<p>If <code>MonitoringInterval</code> is set to a value other than 0,
supply a <code>MonitoringRoleArn</code> value.</p>
<p>Valid for: Multi-AZ DB clusters only</p></td>
</tr>
<tr class="even">
<td><code
id="rds_modify_db_cluster_:_EnablePerformanceInsights">EnablePerformanceInsights</code></td>
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
id="rds_modify_db_cluster_:_PerformanceInsightsKMSKeyId">PerformanceInsightsKMSKeyId</code></td>
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
id="rds_modify_db_cluster_:_PerformanceInsightsRetentionPeriod">PerformanceInsightsRetentionPeriod</code></td>
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
id="rds_modify_db_cluster_:_ServerlessV2ScalingConfiguration">ServerlessV2ScalingConfiguration</code></td>
<td></td>
</tr>
<tr class="even">
<td><code
id="rds_modify_db_cluster_:_NetworkType">NetworkType</code></td>
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
<td><code
id="rds_modify_db_cluster_:_ManageMasterUserPassword">ManageMasterUserPassword</code></td>
<td><p>A value that indicates whether to manage the master user password
with Amazon Web Services Secrets Manager.</p>
<p>If the DB cluster doesn't manage the master user password with Amazon
Web Services Secrets Manager, you can turn on this management. In this
case, you can't specify <code>MasterUserPassword</code>.</p>
<p>If the DB cluster already manages the master user password with
Amazon Web Services Secrets Manager, and you specify that the master
user password is not managed with Amazon Web Services Secrets Manager,
then you must specify <code>MasterUserPassword</code>. In this case, RDS
deletes the secret and uses the new password for the master user
specified by <code>MasterUserPassword</code>.</p>
<p>For more information, see <a
href="https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/rds-secrets-manager.html">Password
management with Amazon Web Services Secrets Manager</a> in the
<em>Amazon RDS User Guide</em> and <a
href="https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/rds-secrets-manager.html">Password
management with Amazon Web Services Secrets Manager</a> in the
<em>Amazon Aurora User Guide.</em></p>
<p>Valid for: Aurora DB clusters and Multi-AZ DB clusters</p></td>
</tr>
<tr class="even">
<td><code
id="rds_modify_db_cluster_:_RotateMasterUserPassword">RotateMasterUserPassword</code></td>
<td><p>A value that indicates whether to rotate the secret managed by
Amazon Web Services Secrets Manager for the master user password.</p>
<p>This setting is valid only if the master user password is managed by
RDS in Amazon Web Services Secrets Manager for the DB cluster. The
secret value contains the updated password.</p>
<p>For more information, see <a
href="https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/rds-secrets-manager.html">Password
management with Amazon Web Services Secrets Manager</a> in the
<em>Amazon RDS User Guide</em> and <a
href="https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/rds-secrets-manager.html">Password
management with Amazon Web Services Secrets Manager</a> in the
<em>Amazon Aurora User Guide.</em></p>
<p>Constraints:</p>
<ul>
<li><p>You must apply the change immediately when rotating the master
user password.</p></li>
</ul>
<p>Valid for: Aurora DB clusters and Multi-AZ DB clusters</p></td>
</tr>
<tr class="odd">
<td><code
id="rds_modify_db_cluster_:_MasterUserSecretKmsKeyId">MasterUserSecretKmsKeyId</code></td>
<td><p>The Amazon Web Services KMS key identifier to encrypt a secret
that is automatically generated and managed in Amazon Web Services
Secrets Manager.</p>
<p>This setting is valid only if both of the following conditions are
met:</p>
<ul>
<li><p>The DB cluster doesn't manage the master user password in Amazon
Web Services Secrets Manager.</p>
<p>If the DB cluster already manages the master user password in Amazon
Web Services Secrets Manager, you can't change the KMS key that is used
to encrypt the secret.</p></li>
<li><p>You are turning on <code>ManageMasterUserPassword</code> to
manage the master user password in Amazon Web Services Secrets
Manager.</p>
<p>If you are turning on <code>ManageMasterUserPassword</code> and don't
specify <code>MasterUserSecretKmsKeyId</code>, then the
<code>aws/secretsmanager</code> KMS key is used to encrypt the secret.
If the secret is in a different Amazon Web Services account, then you
can't use the <code>aws/secretsmanager</code> KMS key to encrypt the
secret, and you must use a customer managed KMS key.</p></li>
</ul>
<p>The Amazon Web Services KMS key identifier is the key ARN, key ID,
alias ARN, or alias name for the KMS key. To use a KMS key in a
different Amazon Web Services account, specify the key ARN or alias
ARN.</p>
<p>There is a default KMS key for your Amazon Web Services account. Your
Amazon Web Services account has a different default KMS key for each
Amazon Web Services Region.</p>
<p>Valid for: Aurora DB clusters and Multi-AZ DB clusters</p></td>
</tr>
<tr class="even">
<td><code id="rds_modify_db_cluster_:_EngineMode">EngineMode</code></td>
<td><p>The DB engine mode of the DB cluster, either
<code>provisioned</code> or <code>serverless</code>.</p>
<p>The DB engine mode can be modified only from <code>serverless</code>
to <code>provisioned</code>.</p>
<p>For more information, see <a
href="https://docs.aws.amazon.com/AmazonRDS/latest/APIReference/API_CreateDBCluster.html">CreateDBCluster</a>.</p>
<p>Valid for: Aurora DB clusters only</p></td>
</tr>
<tr class="odd">
<td><code
id="rds_modify_db_cluster_:_AllowEngineModeChange">AllowEngineModeChange</code></td>
<td><p>A value that indicates whether engine mode changes from
<code>serverless</code> to <code>provisioned</code> are allowed.</p>
<p>Constraints: You must allow engine mode changes when specifying a
different value for the <code>EngineMode</code> parameter from the DB
cluster's current engine mode.</p>
<p>Valid for: Aurora Serverless v1 DB clusters only</p></td>
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

    svc$modify_db_cluster(
      DBClusterIdentifier = "string",
      NewDBClusterIdentifier = "string",
      ApplyImmediately = TRUE|FALSE,
      BackupRetentionPeriod = 123,
      DBClusterParameterGroupName = "string",
      VpcSecurityGroupIds = list(
        "string"
      ),
      Port = 123,
      MasterUserPassword = "string",
      OptionGroupName = "string",
      PreferredBackupWindow = "string",
      PreferredMaintenanceWindow = "string",
      EnableIAMDatabaseAuthentication = TRUE|FALSE,
      BacktrackWindow = 123,
      CloudwatchLogsExportConfiguration = list(
        EnableLogTypes = list(
          "string"
        ),
        DisableLogTypes = list(
          "string"
        )
      ),
      EngineVersion = "string",
      AllowMajorVersionUpgrade = TRUE|FALSE,
      DBInstanceParameterGroupName = "string",
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
      DeletionProtection = TRUE|FALSE,
      EnableHttpEndpoint = TRUE|FALSE,
      CopyTagsToSnapshot = TRUE|FALSE,
      EnableGlobalWriteForwarding = TRUE|FALSE,
      DBClusterInstanceClass = "string",
      AllocatedStorage = 123,
      StorageType = "string",
      Iops = 123,
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
      ManageMasterUserPassword = TRUE|FALSE,
      RotateMasterUserPassword = TRUE|FALSE,
      MasterUserSecretKmsKeyId = "string",
      EngineMode = "string",
      AllowEngineModeChange = TRUE|FALSE
    )
