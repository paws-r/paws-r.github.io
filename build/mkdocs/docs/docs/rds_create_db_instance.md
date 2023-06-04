<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>rds_create_db_instance</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a new DB instance

### Description

Creates a new DB instance.

The new DB instance can be an RDS DB instance, or it can be a DB
instance in an Aurora DB cluster. For an Aurora DB cluster, you can call
this operation multiple times to add more than one DB instance to the
cluster.

For more information about creating an RDS DB instance, see [Creating an
Amazon RDS DB
instance](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_CreateDBInstance.html)
in the *Amazon RDS User Guide*.

For more information about creating a DB instance in an Aurora DB
cluster, see [Creating an Amazon Aurora DB
cluster](https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/Aurora.CreateInstance.html)
in the *Amazon Aurora User Guide*.

### Usage

    rds_create_db_instance(DBName, DBInstanceIdentifier, AllocatedStorage,
      DBInstanceClass, Engine, MasterUsername, MasterUserPassword,
      DBSecurityGroups, VpcSecurityGroupIds, AvailabilityZone,
      DBSubnetGroupName, PreferredMaintenanceWindow, DBParameterGroupName,
      BackupRetentionPeriod, PreferredBackupWindow, Port, MultiAZ,
      EngineVersion, AutoMinorVersionUpgrade, LicenseModel, Iops,
      OptionGroupName, CharacterSetName, NcharCharacterSetName,
      PubliclyAccessible, Tags, DBClusterIdentifier, StorageType,
      TdeCredentialArn, TdeCredentialPassword, StorageEncrypted, KmsKeyId,
      Domain, CopyTagsToSnapshot, MonitoringInterval, MonitoringRoleArn,
      DomainIAMRoleName, PromotionTier, Timezone,
      EnableIAMDatabaseAuthentication, EnablePerformanceInsights,
      PerformanceInsightsKMSKeyId, PerformanceInsightsRetentionPeriod,
      EnableCloudwatchLogsExports, ProcessorFeatures, DeletionProtection,
      MaxAllocatedStorage, EnableCustomerOwnedIp, CustomIamInstanceProfile,
      BackupTarget, NetworkType, StorageThroughput, ManageMasterUserPassword,
      MasterUserSecretKmsKeyId, CACertificateIdentifier)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="rds_create_db_instance_:_DBName">DBName</code></td>
<td><p>The meaning of this parameter differs according to the database
engine you use.</p>
<p><strong>MySQL</strong></p>
<p>The name of the database to create when the DB instance is created.
If this parameter isn't specified, no database is created in the DB
instance.</p>
<p>Constraints:</p>
<ul>
<li><p>Must contain 1 to 64 letters or numbers.</p></li>
<li><p>Must begin with a letter. Subsequent characters can be letters,
underscores, or digits (0-9).</p></li>
<li><p>Can't be a word reserved by the specified database
engine</p></li>
</ul>
<p><strong>MariaDB</strong></p>
<p>The name of the database to create when the DB instance is created.
If this parameter isn't specified, no database is created in the DB
instance.</p>
<p>Constraints:</p>
<ul>
<li><p>Must contain 1 to 64 letters or numbers.</p></li>
<li><p>Must begin with a letter. Subsequent characters can be letters,
underscores, or digits (0-9).</p></li>
<li><p>Can't be a word reserved by the specified database
engine</p></li>
</ul>
<p><strong>PostgreSQL</strong></p>
<p>The name of the database to create when the DB instance is created.
If this parameter isn't specified, a database named
<code>postgres</code> is created in the DB instance.</p>
<p>Constraints:</p>
<ul>
<li><p>Must contain 1 to 63 letters, numbers, or underscores.</p></li>
<li><p>Must begin with a letter. Subsequent characters can be letters,
underscores, or digits (0-9).</p></li>
<li><p>Can't be a word reserved by the specified database
engine</p></li>
</ul>
<p><strong>Oracle</strong></p>
<p>The Oracle System ID (SID) of the created DB instance. If you specify
<code>null</code>, the default value <code>ORCL</code> is used. You
can't specify the string NULL, or any other reserved word, for
<code>DBName</code>.</p>
<p>Default: <code>ORCL</code></p>
<p>Constraints:</p>
<ul>
<li><p>Can't be longer than 8 characters</p></li>
</ul>
<p><strong>Amazon RDS Custom for Oracle</strong></p>
<p>The Oracle System ID (SID) of the created RDS Custom DB instance. If
you don't specify a value, the default value is <code>ORCL</code>.</p>
<p>Default: <code>ORCL</code></p>
<p>Constraints:</p>
<ul>
<li><p>It must contain 1 to 8 alphanumeric characters.</p></li>
<li><p>It must contain a letter.</p></li>
<li><p>It can't be a word reserved by the database engine.</p></li>
</ul>
<p><strong>Amazon RDS Custom for SQL Server</strong></p>
<p>Not applicable. Must be null.</p>
<p><strong>SQL Server</strong></p>
<p>Not applicable. Must be null.</p>
<p><strong>Amazon Aurora MySQL</strong></p>
<p>The name of the database to create when the primary DB instance of
the Aurora MySQL DB cluster is created. If this parameter isn't
specified for an Aurora MySQL DB cluster, no database is created in the
DB cluster.</p>
<p>Constraints:</p>
<ul>
<li><p>It must contain 1 to 64 alphanumeric characters.</p></li>
<li><p>It can't be a word reserved by the database engine.</p></li>
</ul>
<p><strong>Amazon Aurora PostgreSQL</strong></p>
<p>The name of the database to create when the primary DB instance of
the Aurora PostgreSQL DB cluster is created. If this parameter isn't
specified for an Aurora PostgreSQL DB cluster, a database named
<code>postgres</code> is created in the DB cluster.</p>
<p>Constraints:</p>
<ul>
<li><p>It must contain 1 to 63 alphanumeric characters.</p></li>
<li><p>It must begin with a letter. Subsequent characters can be
letters, underscores, or digits (0 to 9).</p></li>
<li><p>It can't be a word reserved by the database engine.</p></li>
</ul></td>
</tr>
<tr class="even">
<td><code
id="rds_create_db_instance_:_DBInstanceIdentifier">DBInstanceIdentifier</code></td>
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
id="rds_create_db_instance_:_AllocatedStorage">AllocatedStorage</code></td>
<td><p>The amount of storage in gibibytes (GiB) to allocate for the DB
instance.</p>
<p>Type: Integer</p>
<p><strong>Amazon Aurora</strong></p>
<p>Not applicable. Aurora cluster volumes automatically grow as the
amount of data in your database increases, though you are only charged
for the space that you use in an Aurora cluster volume.</p>
<p><strong>Amazon RDS Custom</strong></p>
<p>Constraints to the amount of storage for each storage type are the
following:</p>
<ul>
<li><p>General Purpose (SSD) storage (gp2, gp3): Must be an integer from
40 to 65536 for RDS Custom for Oracle, 16384 for RDS Custom for SQL
Server.</p></li>
<li><p>Provisioned IOPS storage (io1): Must be an integer from 40 to
65536 for RDS Custom for Oracle, 16384 for RDS Custom for SQL
Server.</p></li>
</ul>
<p><strong>MySQL</strong></p>
<p>Constraints to the amount of storage for each storage type are the
following:</p>
<ul>
<li><p>General Purpose (SSD) storage (gp2, gp3): Must be an integer from
20 to 65536.</p></li>
<li><p>Provisioned IOPS storage (io1): Must be an integer from 100 to
65536.</p></li>
<li><p>Magnetic storage (standard): Must be an integer from 5 to
3072.</p></li>
</ul>
<p><strong>MariaDB</strong></p>
<p>Constraints to the amount of storage for each storage type are the
following:</p>
<ul>
<li><p>General Purpose (SSD) storage (gp2, gp3): Must be an integer from
20 to 65536.</p></li>
<li><p>Provisioned IOPS storage (io1): Must be an integer from 100 to
65536.</p></li>
<li><p>Magnetic storage (standard): Must be an integer from 5 to
3072.</p></li>
</ul>
<p><strong>PostgreSQL</strong></p>
<p>Constraints to the amount of storage for each storage type are the
following:</p>
<ul>
<li><p>General Purpose (SSD) storage (gp2, gp3): Must be an integer from
20 to 65536.</p></li>
<li><p>Provisioned IOPS storage (io1): Must be an integer from 100 to
65536.</p></li>
<li><p>Magnetic storage (standard): Must be an integer from 5 to
3072.</p></li>
</ul>
<p><strong>Oracle</strong></p>
<p>Constraints to the amount of storage for each storage type are the
following:</p>
<ul>
<li><p>General Purpose (SSD) storage (gp2, gp3): Must be an integer from
20 to 65536.</p></li>
<li><p>Provisioned IOPS storage (io1): Must be an integer from 100 to
65536.</p></li>
<li><p>Magnetic storage (standard): Must be an integer from 10 to
3072.</p></li>
</ul>
<p><strong>SQL Server</strong></p>
<p>Constraints to the amount of storage for each storage type are the
following:</p>
<ul>
<li><p>General Purpose (SSD) storage (gp2, gp3):</p>
<ul>
<li><p>Enterprise and Standard editions: Must be an integer from 20 to
16384.</p></li>
<li><p>Web and Express editions: Must be an integer from 20 to
16384.</p></li>
</ul></li>
<li><p>Provisioned IOPS storage (io1):</p>
<ul>
<li><p>Enterprise and Standard editions: Must be an integer from 100 to
16384.</p></li>
<li><p>Web and Express editions: Must be an integer from 100 to
16384.</p></li>
</ul></li>
<li><p>Magnetic storage (standard):</p>
<ul>
<li><p>Enterprise and Standard editions: Must be an integer from 20 to
1024.</p></li>
<li><p>Web and Express editions: Must be an integer from 20 to
1024.</p></li>
</ul></li>
</ul></td>
</tr>
<tr class="even">
<td><code
id="rds_create_db_instance_:_DBInstanceClass">DBInstanceClass</code></td>
<td><p>[required] The compute and memory capacity of the DB instance,
for example db.m5.large. Not all DB instance classes are available in
all Amazon Web Services Regions, or for all database engines. For the
full list of DB instance classes, and availability for your engine, see
<a
href="https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Concepts.DBInstanceClass.html">DB
instance classes</a> in the <em>Amazon RDS User Guide</em> or <a
href="https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/Concepts.DBInstanceClass.html">Aurora
DB instance classes</a> in the <em>Amazon Aurora User
Guide</em>.</p></td>
</tr>
<tr class="odd">
<td><code id="rds_create_db_instance_:_Engine">Engine</code></td>
<td><p>[required] The name of the database engine to be used for this
instance.</p>
<p>Not every database engine is available for every Amazon Web Services
Region.</p>
<p>Valid Values:</p>
<ul>
<li><p><code>aurora-mysql</code> (for Aurora MySQL DB
instances)</p></li>
<li><p><code>aurora-postgresql</code> (for Aurora PostgreSQL DB
instances)</p></li>
<li><p><code
style="white-space: pre;">⁠custom-oracle-ee (for RDS Custom for Oracle DB instances)⁠</code></p></li>
<li><p><code
style="white-space: pre;">⁠custom-oracle-ee-cdb (for RDS Custom for Oracle DB instances)⁠</code></p></li>
<li><p><code
style="white-space: pre;">⁠custom-sqlserver-ee (for RDS Custom for SQL Server DB instances)⁠</code></p></li>
<li><p><code
style="white-space: pre;">⁠custom-sqlserver-se (for RDS Custom for SQL Server DB instances)⁠</code></p></li>
<li><p><code
style="white-space: pre;">⁠custom-sqlserver-web (for RDS Custom for SQL Server DB instances)⁠</code></p></li>
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
<tr class="even">
<td><code
id="rds_create_db_instance_:_MasterUsername">MasterUsername</code></td>
<td><p>The name for the master user.</p>
<p><strong>Amazon Aurora</strong></p>
<p>Not applicable. The name for the master user is managed by the DB
cluster.</p>
<p><strong>Amazon RDS</strong></p>
<p>Constraints:</p>
<ul>
<li><p>Required.</p></li>
<li><p>Must be 1 to 16 letters, numbers, or underscores.</p></li>
<li><p>First character must be a letter.</p></li>
<li><p>Can't be a reserved word for the chosen database engine.</p></li>
</ul></td>
</tr>
<tr class="odd">
<td><code
id="rds_create_db_instance_:_MasterUserPassword">MasterUserPassword</code></td>
<td><p>The password for the master user. The password can include any
printable ASCII character except "/", """, or "@".</p>
<p><strong>Amazon Aurora</strong></p>
<p>Not applicable. The password for the master user is managed by the DB
cluster.</p>
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
id="rds_create_db_instance_:_DBSecurityGroups">DBSecurityGroups</code></td>
<td><p>A list of DB security groups to associate with this DB
instance.</p>
<p>This setting applies to the legacy EC2-Classic platform, which is no
longer used to create new DB instances. Use the
<code>VpcSecurityGroupIds</code> setting instead.</p></td>
</tr>
<tr class="odd">
<td><code
id="rds_create_db_instance_:_VpcSecurityGroupIds">VpcSecurityGroupIds</code></td>
<td><p>A list of Amazon EC2 VPC security groups to associate with this
DB instance.</p>
<p><strong>Amazon Aurora</strong></p>
<p>Not applicable. The associated list of EC2 VPC security groups is
managed by the DB cluster.</p>
<p>Default: The default EC2 VPC security group for the DB subnet group's
VPC.</p></td>
</tr>
<tr class="even">
<td><code
id="rds_create_db_instance_:_AvailabilityZone">AvailabilityZone</code></td>
<td><p>The Availability Zone (AZ) where the database will be created.
For information on Amazon Web Services Regions and Availability Zones,
see <a
href="https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Concepts.RegionsAndAvailabilityZones.html">Regions
and Availability Zones</a>.</p>
<p><strong>Amazon Aurora</strong></p>
<p>Each Aurora DB cluster hosts copies of its storage in three separate
Availability Zones. Specify one of these Availability Zones. Aurora
automatically chooses an appropriate Availability Zone if you don't
specify one.</p>
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
id="rds_create_db_instance_:_DBSubnetGroupName">DBSubnetGroupName</code></td>
<td><p>A DB subnet group to associate with this DB instance.</p>
<p>Constraints: Must match the name of an existing DBSubnetGroup. Must
not be default.</p>
<p>Example: <code>mydbsubnetgroup</code></p></td>
</tr>
<tr class="even">
<td><code
id="rds_create_db_instance_:_PreferredMaintenanceWindow">PreferredMaintenanceWindow</code></td>
<td><p>The time range each week during which system maintenance can
occur, in Universal Coordinated Time (UTC). For more information, see <a
href="https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_UpgradeDBInstance.Maintenance.html#Concepts.DBMaintenance">Amazon
RDS Maintenance Window</a>.</p>
<p>Format: <code>ddd:hh24:mi-ddd:hh24:mi</code></p>
<p>The default is a 30-minute window selected at random from an 8-hour
block of time for each Amazon Web Services Region, occurring on a random
day of the week.</p>
<p>Valid Days: Mon, Tue, Wed, Thu, Fri, Sat, Sun.</p>
<p>Constraints: Minimum 30-minute window.</p></td>
</tr>
<tr class="odd">
<td><code
id="rds_create_db_instance_:_DBParameterGroupName">DBParameterGroupName</code></td>
<td><p>The name of the DB parameter group to associate with this DB
instance. If you do not specify a value, then the default DB parameter
group for the specified DB engine and version is used.</p>
<p>This setting doesn't apply to RDS Custom.</p>
<p>Constraints:</p>
<ul>
<li><p>It must be 1 to 255 letters, numbers, or hyphens.</p></li>
<li><p>The first character must be a letter.</p></li>
<li><p>It can't end with a hyphen or contain two consecutive
hyphens.</p></li>
</ul></td>
</tr>
<tr class="even">
<td><code
id="rds_create_db_instance_:_BackupRetentionPeriod">BackupRetentionPeriod</code></td>
<td><p>The number of days for which automated backups are retained.
Setting this parameter to a positive number enables backups. Setting
this parameter to 0 disables automated backups.</p>
<p><strong>Amazon Aurora</strong></p>
<p>Not applicable. The retention period for automated backups is managed
by the DB cluster.</p>
<p>Default: 1</p>
<p>Constraints:</p>
<ul>
<li><p>Must be a value from 0 to 35</p></li>
<li><p>Can't be set to 0 if the DB instance is a source to read
replicas</p></li>
<li><p>Can't be set to 0 for an RDS Custom for Oracle DB
instance</p></li>
</ul></td>
</tr>
<tr class="odd">
<td><code
id="rds_create_db_instance_:_PreferredBackupWindow">PreferredBackupWindow</code></td>
<td><p>The daily time range during which automated backups are created
if automated backups are enabled, using the
<code>BackupRetentionPeriod</code> parameter. The default is a 30-minute
window selected at random from an 8-hour block of time for each Amazon
Web Services Region. For more information, see <a
href="https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_WorkingWithAutomatedBackups.html#USER_WorkingWithAutomatedBackups.BackupWindow">Backup
window</a> in the <em>Amazon RDS User Guide</em>.</p>
<p><strong>Amazon Aurora</strong></p>
<p>Not applicable. The daily time range for creating automated backups
is managed by the DB cluster.</p>
<p>Constraints:</p>
<ul>
<li><p>Must be in the format <code>hh24:mi-hh24:mi</code>.</p></li>
<li><p>Must be in Universal Coordinated Time (UTC).</p></li>
<li><p>Must not conflict with the preferred maintenance window.</p></li>
<li><p>Must be at least 30 minutes.</p></li>
</ul></td>
</tr>
<tr class="even">
<td><code id="rds_create_db_instance_:_Port">Port</code></td>
<td><p>The port number on which the database accepts connections.</p>
<p><strong>MySQL</strong></p>
<p>Default: <code>3306</code></p>
<p>Valid values: <code>1150-65535</code></p>
<p>Type: Integer</p>
<p><strong>MariaDB</strong></p>
<p>Default: <code>3306</code></p>
<p>Valid values: <code>1150-65535</code></p>
<p>Type: Integer</p>
<p><strong>PostgreSQL</strong></p>
<p>Default: <code>5432</code></p>
<p>Valid values: <code>1150-65535</code></p>
<p>Type: Integer</p>
<p><strong>Oracle</strong></p>
<p>Default: <code>1521</code></p>
<p>Valid values: <code>1150-65535</code></p>
<p><strong>SQL Server</strong></p>
<p>Default: <code>1433</code></p>
<p>Valid values: <code>1150-65535</code> except <code>1234</code>,
<code>1434</code>, <code>3260</code>, <code>3343</code>,
<code>3389</code>, <code>47001</code>, and <code>49152-49156</code>.</p>
<p><strong>Amazon Aurora</strong></p>
<p>Default: <code>3306</code></p>
<p>Valid values: <code>1150-65535</code></p>
<p>Type: Integer</p></td>
</tr>
<tr class="odd">
<td><code id="rds_create_db_instance_:_MultiAZ">MultiAZ</code></td>
<td><p>A value that indicates whether the DB instance is a Multi-AZ
deployment. You can't set the <code>AvailabilityZone</code> parameter if
the DB instance is a Multi-AZ deployment.</p>
<p>This setting doesn't apply to RDS Custom.</p>
<p><strong>Amazon Aurora</strong></p>
<p>Not applicable. DB instance Availability Zones (AZs) are managed by
the DB cluster.</p></td>
</tr>
<tr class="even">
<td><code
id="rds_create_db_instance_:_EngineVersion">EngineVersion</code></td>
<td><p>The version number of the database engine to use.</p>
<p>For a list of valid engine versions, use the
<code>describe_db_engine_versions</code> operation.</p>
<p>The following are the database engines and links to information about
the major and minor versions that are available with Amazon RDS. Not
every database engine is available for every Amazon Web Services
Region.</p>
<p><strong>Amazon Aurora</strong></p>
<p>Not applicable. The version number of the database engine to be used
by the DB instance is managed by the DB cluster.</p>
<p><strong>Amazon RDS Custom for Oracle</strong></p>
<p>A custom engine version (CEV) that you have previously created. This
setting is required for RDS Custom for Oracle. The CEV name has the
following format: 19.<em>customized_string</em>. A valid CEV name is
<code style="white-space: pre;">⁠19.my_cev1⁠</code>. For more information,
see <a
href="https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/custom-creating.html#custom-creating.create">Creating
an RDS Custom for Oracle DB instance</a> in the <em>Amazon RDS User
Guide</em>.</p>
<p><strong>Amazon RDS Custom for SQL Server</strong></p>
<p>See <a
href="https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/custom-reqs-limits-MS.html">RDS
Custom for SQL Server general requirements</a> in the <em>Amazon RDS
User Guide</em>.</p>
<p><strong>MariaDB</strong></p>
<p>For information, see <a
href="https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/CHAP_MariaDB.html#MariaDB.Concepts.VersionMgmt">MariaDB
on Amazon RDS Versions</a> in the <em>Amazon RDS User Guide</em>.</p>
<p><strong>Microsoft SQL Server</strong></p>
<p>For information, see <a
href="https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/CHAP_SQLServer.html#SQLServer.Concepts.General.VersionSupport">Microsoft
SQL Server Versions on Amazon RDS</a> in the <em>Amazon RDS User
Guide</em>.</p>
<p><strong>MySQL</strong></p>
<p>For information, see <a
href="https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/CHAP_MySQL.html#MySQL.Concepts.VersionMgmt">MySQL
on Amazon RDS Versions</a> in the <em>Amazon RDS User Guide</em>.</p>
<p><strong>Oracle</strong></p>
<p>For information, see <a
href="https://docs.aws.amazon.com/AmazonRDS/latest/OracleReleaseNotes/Welcome.html">Oracle
Database Engine Release Notes</a> in the <em>Amazon RDS User
Guide</em>.</p>
<p><strong>PostgreSQL</strong></p>
<p>For information, see <a
href="https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/CHAP_PostgreSQL.html#PostgreSQL.Concepts">Amazon
RDS for PostgreSQL versions and extensions</a> in the <em>Amazon RDS
User Guide</em>.</p></td>
</tr>
<tr class="odd">
<td><code
id="rds_create_db_instance_:_AutoMinorVersionUpgrade">AutoMinorVersionUpgrade</code></td>
<td><p>A value that indicates whether minor engine upgrades are applied
automatically to the DB instance during the maintenance window. By
default, minor engine upgrades are applied automatically.</p>
<p>If you create an RDS Custom DB instance, you must set
<code>AutoMinorVersionUpgrade</code> to <code>false</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="rds_create_db_instance_:_LicenseModel">LicenseModel</code></td>
<td><p>License model information for this DB instance.</p>
<p>Valid values: <code>license-included</code> |
<code>bring-your-own-license</code> |
<code>general-public-license</code></p>
<p>This setting doesn't apply to RDS Custom.</p>
<p><strong>Amazon Aurora</strong></p>
<p>Not applicable.</p></td>
</tr>
<tr class="odd">
<td><code id="rds_create_db_instance_:_Iops">Iops</code></td>
<td><p>The amount of Provisioned IOPS (input/output operations per
second) to be initially allocated for the DB instance. For information
about valid IOPS values, see <a
href="https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/CHAP_Storage.html">Amazon
RDS DB instance storage</a> in the <em>Amazon RDS User Guide</em>.</p>
<p>Constraints: For MariaDB, MySQL, Oracle, and PostgreSQL DB instances,
must be a multiple between .5 and 50 of the storage amount for the DB
instance. For SQL Server DB instances, must be a multiple between 1 and
50 of the storage amount for the DB instance.</p>
<p><strong>Amazon Aurora</strong></p>
<p>Not applicable. Storage is managed by the DB cluster.</p></td>
</tr>
<tr class="even">
<td><code
id="rds_create_db_instance_:_OptionGroupName">OptionGroupName</code></td>
<td><p>A value that indicates that the DB instance should be associated
with the specified option group.</p>
<p>Permanent options, such as the TDE option for Oracle Advanced
Security TDE, can't be removed from an option group. Also, that option
group can't be removed from a DB instance after it is associated with a
DB instance.</p>
<p>This setting doesn't apply to RDS Custom.</p>
<p><strong>Amazon Aurora</strong></p>
<p>Not applicable.</p></td>
</tr>
<tr class="odd">
<td><code
id="rds_create_db_instance_:_CharacterSetName">CharacterSetName</code></td>
<td><p>For supported engines, this value indicates that the DB instance
should be associated with the specified <code>CharacterSet</code>.</p>
<p>This setting doesn't apply to RDS Custom. However, if you need to
change the character set, you can change it on the database itself.</p>
<p><strong>Amazon Aurora</strong></p>
<p>Not applicable. The character set is managed by the DB cluster. For
more information, see <code>create_db_cluster</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="rds_create_db_instance_:_NcharCharacterSetName">NcharCharacterSetName</code></td>
<td><p>The name of the NCHAR character set for the Oracle DB
instance.</p>
<p>This parameter doesn't apply to RDS Custom.</p></td>
</tr>
<tr class="odd">
<td><code
id="rds_create_db_instance_:_PubliclyAccessible">PubliclyAccessible</code></td>
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
<p>Default: The default behavior varies depending on whether
<code>DBSubnetGroupName</code> is specified.</p>
<p>If <code>DBSubnetGroupName</code> isn't specified, and
<code>PubliclyAccessible</code> isn't specified, the following
applies:</p>
<ul>
<li><p>If the default VPC in the target Region doesn’t have an internet
gateway attached to it, the DB instance is private.</p></li>
<li><p>If the default VPC in the target Region has an internet gateway
attached to it, the DB instance is public.</p></li>
</ul>
<p>If <code>DBSubnetGroupName</code> is specified, and
<code>PubliclyAccessible</code> isn't specified, the following
applies:</p>
<ul>
<li><p>If the subnets are part of a VPC that doesn’t have an internet
gateway attached to it, the DB instance is private.</p></li>
<li><p>If the subnets are part of a VPC that has an internet gateway
attached to it, the DB instance is public.</p></li>
</ul></td>
</tr>
<tr class="even">
<td><code id="rds_create_db_instance_:_Tags">Tags</code></td>
<td><p>Tags to assign to the DB instance.</p></td>
</tr>
<tr class="odd">
<td><code
id="rds_create_db_instance_:_DBClusterIdentifier">DBClusterIdentifier</code></td>
<td><p>The identifier of the DB cluster that the instance will belong
to.</p>
<p>This setting doesn't apply to RDS Custom.</p></td>
</tr>
<tr class="even">
<td><code
id="rds_create_db_instance_:_StorageType">StorageType</code></td>
<td><p>Specifies the storage type to be associated with the DB
instance.</p>
<p>Valid values: <code>gp2 | gp3 | io1 | standard</code></p>
<p>If you specify <code>io1</code> or <code>gp3</code>, you must also
include a value for the <code>Iops</code> parameter.</p>
<p>Default: <code>io1</code> if the <code>Iops</code> parameter is
specified, otherwise <code>gp2</code></p>
<p><strong>Amazon Aurora</strong></p>
<p>Not applicable. Storage is managed by the DB cluster.</p></td>
</tr>
<tr class="odd">
<td><code
id="rds_create_db_instance_:_TdeCredentialArn">TdeCredentialArn</code></td>
<td><p>The ARN from the key store with which to associate the instance
for TDE encryption.</p>
<p>This setting doesn't apply to RDS Custom.</p>
<p><strong>Amazon Aurora</strong></p>
<p>Not applicable.</p></td>
</tr>
<tr class="even">
<td><code
id="rds_create_db_instance_:_TdeCredentialPassword">TdeCredentialPassword</code></td>
<td><p>The password for the given ARN from the key store in order to
access the device.</p>
<p>This setting doesn't apply to RDS Custom.</p></td>
</tr>
<tr class="odd">
<td><code
id="rds_create_db_instance_:_StorageEncrypted">StorageEncrypted</code></td>
<td><p>A value that indicates whether the DB instance is encrypted. By
default, it isn't encrypted.</p>
<p>For RDS Custom instances, either set this parameter to
<code>true</code> or leave it unset. If you set this parameter to
<code>false</code>, RDS reports an error.</p>
<p><strong>Amazon Aurora</strong></p>
<p>Not applicable. The encryption for DB instances is managed by the DB
cluster.</p></td>
</tr>
<tr class="even">
<td><code id="rds_create_db_instance_:_KmsKeyId">KmsKeyId</code></td>
<td><p>The Amazon Web Services KMS key identifier for an encrypted DB
instance.</p>
<p>The Amazon Web Services KMS key identifier is the key ARN, key ID,
alias ARN, or alias name for the KMS key. To use a KMS key in a
different Amazon Web Services account, specify the key ARN or alias
ARN.</p>
<p><strong>Amazon Aurora</strong></p>
<p>Not applicable. The Amazon Web Services KMS key identifier is managed
by the DB cluster. For more information, see
<code>create_db_cluster</code>.</p>
<p>If <code>StorageEncrypted</code> is enabled, and you do not specify a
value for the <code>KmsKeyId</code> parameter, then Amazon RDS uses your
default KMS key. There is a default KMS key for your Amazon Web Services
account. Your Amazon Web Services account has a different default KMS
key for each Amazon Web Services Region.</p>
<p><strong>Amazon RDS Custom</strong></p>
<p>A KMS key is required for RDS Custom instances. For most RDS engines,
if you leave this parameter empty while enabling
<code>StorageEncrypted</code>, the engine uses the default KMS key.
However, RDS Custom doesn't use the default key when this parameter is
empty. You must explicitly specify a key.</p></td>
</tr>
<tr class="odd">
<td><code id="rds_create_db_instance_:_Domain">Domain</code></td>
<td><p>The Active Directory directory ID to create the DB instance in.
Currently, only MySQL, Microsoft SQL Server, Oracle, and PostgreSQL DB
instances can be created in an Active Directory Domain.</p>
<p>For more information, see <a
href="https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/database-authentication.html">Kerberos
Authentication</a> in the <em>Amazon RDS User Guide</em>.</p>
<p>This setting doesn't apply to RDS Custom.</p>
<p><strong>Amazon Aurora</strong></p>
<p>Not applicable. The domain is managed by the DB cluster.</p></td>
</tr>
<tr class="even">
<td><code
id="rds_create_db_instance_:_CopyTagsToSnapshot">CopyTagsToSnapshot</code></td>
<td><p>A value that indicates whether to copy tags from the DB instance
to snapshots of the DB instance. By default, tags are not copied.</p>
<p><strong>Amazon Aurora</strong></p>
<p>Not applicable. Copying tags to snapshots is managed by the DB
cluster. Setting this value for an Aurora DB instance has no effect on
the DB cluster setting.</p></td>
</tr>
<tr class="odd">
<td><code
id="rds_create_db_instance_:_MonitoringInterval">MonitoringInterval</code></td>
<td><p>The interval, in seconds, between points when Enhanced Monitoring
metrics are collected for the DB instance. To disable collection of
Enhanced Monitoring metrics, specify 0. The default is 0.</p>
<p>If <code>MonitoringRoleArn</code> is specified, then you must set
<code>MonitoringInterval</code> to a value other than 0.</p>
<p>This setting doesn't apply to RDS Custom.</p>
<p>Valid Values: <code
style="white-space: pre;">⁠0, 1, 5, 10, 15, 30, 60⁠</code></p></td>
</tr>
<tr class="even">
<td><code
id="rds_create_db_instance_:_MonitoringRoleArn">MonitoringRoleArn</code></td>
<td><p>The ARN for the IAM role that permits RDS to send enhanced
monitoring metrics to Amazon CloudWatch Logs. For example,
<code>arn:aws:iam:123456789012:role/emaccess</code>. For information on
creating a monitoring role, see <a
href="https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Monitoring.OS.html#USER_Monitoring.OS.Enabling">Setting
Up and Enabling Enhanced Monitoring</a> in the <em>Amazon RDS User
Guide</em>.</p>
<p>If <code>MonitoringInterval</code> is set to a value other than 0,
then you must supply a <code>MonitoringRoleArn</code> value.</p>
<p>This setting doesn't apply to RDS Custom.</p></td>
</tr>
<tr class="odd">
<td><code
id="rds_create_db_instance_:_DomainIAMRoleName">DomainIAMRoleName</code></td>
<td><p>Specify the name of the IAM role to be used when making API calls
to the Directory Service.</p>
<p>This setting doesn't apply to RDS Custom.</p>
<p><strong>Amazon Aurora</strong></p>
<p>Not applicable. The domain is managed by the DB cluster.</p></td>
</tr>
<tr class="even">
<td><code
id="rds_create_db_instance_:_PromotionTier">PromotionTier</code></td>
<td><p>A value that specifies the order in which an Aurora Replica is
promoted to the primary instance after a failure of the existing primary
instance. For more information, see <a
href="https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/Aurora.Managing.Backups.html#Aurora.Managing.FaultTolerance">Fault
Tolerance for an Aurora DB Cluster</a> in the <em>Amazon Aurora User
Guide</em>.</p>
<p>This setting doesn't apply to RDS Custom.</p>
<p>Default: 1</p>
<p>Valid Values: 0 - 15</p></td>
</tr>
<tr class="odd">
<td><code id="rds_create_db_instance_:_Timezone">Timezone</code></td>
<td><p>The time zone of the DB instance. The time zone parameter is
currently supported only by <a
href="https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/CHAP_SQLServer.html#SQLServer.Concepts.General.TimeZone">Microsoft
SQL Server</a>.</p></td>
</tr>
<tr class="even">
<td><code
id="rds_create_db_instance_:_EnableIAMDatabaseAuthentication">EnableIAMDatabaseAuthentication</code></td>
<td><p>A value that indicates whether to enable mapping of Amazon Web
Services Identity and Access Management (IAM) accounts to database
accounts. By default, mapping isn't enabled.</p>
<p>For more information, see <a
href="https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/UsingWithRDS.IAMDBAuth.html">IAM
Database Authentication for MySQL and PostgreSQL</a> in the <em>Amazon
RDS User Guide</em>.</p>
<p>This setting doesn't apply to RDS Custom.</p>
<p><strong>Amazon Aurora</strong></p>
<p>Not applicable. Mapping Amazon Web Services IAM accounts to database
accounts is managed by the DB cluster.</p></td>
</tr>
<tr class="odd">
<td><code
id="rds_create_db_instance_:_EnablePerformanceInsights">EnablePerformanceInsights</code></td>
<td><p>A value that indicates whether to enable Performance Insights for
the DB instance. For more information, see <a
href="https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_PerfInsights.html">Using
Amazon Performance Insights</a> in the <em>Amazon RDS User
Guide</em>.</p>
<p>This setting doesn't apply to RDS Custom.</p></td>
</tr>
<tr class="even">
<td><code
id="rds_create_db_instance_:_PerformanceInsightsKMSKeyId">PerformanceInsightsKMSKeyId</code></td>
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
<tr class="odd">
<td><code
id="rds_create_db_instance_:_PerformanceInsightsRetentionPeriod">PerformanceInsightsRetentionPeriod</code></td>
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
<tr class="even">
<td><code
id="rds_create_db_instance_:_EnableCloudwatchLogsExports">EnableCloudwatchLogsExports</code></td>
<td><p>The list of log types that need to be enabled for exporting to
CloudWatch Logs. The values in the list depend on the DB engine. For
more information, see <a
href="https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_LogAccess.html#USER_LogAccess.Procedural.UploadtoCloudWatch">Publishing
Database Logs to Amazon CloudWatch Logs</a> in the <em>Amazon RDS User
Guide</em>.</p>
<p><strong>Amazon Aurora</strong></p>
<p>Not applicable. CloudWatch Logs exports are managed by the DB
cluster.</p>
<p><strong>RDS Custom</strong></p>
<p>Not applicable.</p>
<p><strong>MariaDB</strong></p>
<p>Possible values are <code>audit</code>, <code>error</code>,
<code>general</code>, and <code>slowquery</code>.</p>
<p><strong>Microsoft SQL Server</strong></p>
<p>Possible values are <code>agent</code> and <code>error</code>.</p>
<p><strong>MySQL</strong></p>
<p>Possible values are <code>audit</code>, <code>error</code>,
<code>general</code>, and <code>slowquery</code>.</p>
<p><strong>Oracle</strong></p>
<p>Possible values are <code>alert</code>, <code>audit</code>,
<code>listener</code>, <code>trace</code>, and
<code>oemagent</code>.</p>
<p><strong>PostgreSQL</strong></p>
<p>Possible values are <code>postgresql</code> and
<code>upgrade</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="rds_create_db_instance_:_ProcessorFeatures">ProcessorFeatures</code></td>
<td><p>The number of CPU cores and the number of threads per core for
the DB instance class of the DB instance.</p>
<p>This setting doesn't apply to RDS Custom.</p>
<p><strong>Amazon Aurora</strong></p>
<p>Not applicable.</p></td>
</tr>
<tr class="even">
<td><code
id="rds_create_db_instance_:_DeletionProtection">DeletionProtection</code></td>
<td><p>A value that indicates whether the DB instance has deletion
protection enabled. The database can't be deleted when deletion
protection is enabled. By default, deletion protection isn't enabled.
For more information, see <a
href="https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_DeleteInstance.html">Deleting
a DB Instance</a>.</p>
<p><strong>Amazon Aurora</strong></p>
<p>Not applicable. You can enable or disable deletion protection for the
DB cluster. For more information, see <code>create_db_cluster</code>. DB
instances in a DB cluster can be deleted even when deletion protection
is enabled for the DB cluster.</p></td>
</tr>
<tr class="odd">
<td><code
id="rds_create_db_instance_:_MaxAllocatedStorage">MaxAllocatedStorage</code></td>
<td><p>The upper limit in gibibytes (GiB) to which Amazon RDS can
automatically scale the storage of the DB instance.</p>
<p>For more information about this setting, including limitations that
apply to it, see <a
href="https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_PIOPS.StorageTypes.html#USER_PIOPS.Autoscaling">Managing
capacity automatically with Amazon RDS storage autoscaling</a> in the
<em>Amazon RDS User Guide</em>.</p>
<p>This setting doesn't apply to RDS Custom.</p>
<p><strong>Amazon Aurora</strong></p>
<p>Not applicable. Storage is managed by the DB cluster.</p></td>
</tr>
<tr class="even">
<td><code
id="rds_create_db_instance_:_EnableCustomerOwnedIp">EnableCustomerOwnedIp</code></td>
<td><p>A value that indicates whether to enable a customer-owned IP
address (CoIP) for an RDS on Outposts DB instance.</p>
<p>A <em>CoIP</em> provides local or external connectivity to resources
in your Outpost subnets through your on-premises network. For some use
cases, a CoIP can provide lower latency for connections to the DB
instance from outside of its virtual private cloud (VPC) on your local
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
id="rds_create_db_instance_:_CustomIamInstanceProfile">CustomIamInstanceProfile</code></td>
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
id="rds_create_db_instance_:_BackupTarget">BackupTarget</code></td>
<td><p>Specifies where automated backups and manual snapshots are
stored.</p>
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
id="rds_create_db_instance_:_NetworkType">NetworkType</code></td>
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
id="rds_create_db_instance_:_StorageThroughput">StorageThroughput</code></td>
<td><p>Specifies the storage throughput value for the DB instance.</p>
<p>This setting applies only to the <code>gp3</code> storage type.</p>
<p>This setting doesn't apply to RDS Custom or Amazon Aurora.</p></td>
</tr>
<tr class="odd">
<td><code
id="rds_create_db_instance_:_ManageMasterUserPassword">ManageMasterUserPassword</code></td>
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
id="rds_create_db_instance_:_MasterUserSecretKmsKeyId">MasterUserSecretKmsKeyId</code></td>
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
<tr class="odd">
<td><code
id="rds_create_db_instance_:_CACertificateIdentifier">CACertificateIdentifier</code></td>
<td><p>Specifies the CA certificate identifier to use for the DB
instance’s server certificate.</p>
<p>This setting doesn't apply to RDS Custom.</p>
<p>For more information, see <a
href="https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/UsingWithRDS.SSL.html">Using
SSL/TLS to encrypt a connection to a DB instance</a> in the <em>Amazon
RDS User Guide</em> and <a
href="https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/UsingWithRDS.SSL.html">Using
SSL/TLS to encrypt a connection to a DB cluster</a> in the <em>Amazon
Aurora User Guide</em>.</p></td>
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

    svc$create_db_instance(
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
      CharacterSetName = "string",
      NcharCharacterSetName = "string",
      PubliclyAccessible = TRUE|FALSE,
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      ),
      DBClusterIdentifier = "string",
      StorageType = "string",
      TdeCredentialArn = "string",
      TdeCredentialPassword = "string",
      StorageEncrypted = TRUE|FALSE,
      KmsKeyId = "string",
      Domain = "string",
      CopyTagsToSnapshot = TRUE|FALSE,
      MonitoringInterval = 123,
      MonitoringRoleArn = "string",
      DomainIAMRoleName = "string",
      PromotionTier = 123,
      Timezone = "string",
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
      DeletionProtection = TRUE|FALSE,
      MaxAllocatedStorage = 123,
      EnableCustomerOwnedIp = TRUE|FALSE,
      CustomIamInstanceProfile = "string",
      BackupTarget = "string",
      NetworkType = "string",
      StorageThroughput = 123,
      ManageMasterUserPassword = TRUE|FALSE,
      MasterUserSecretKmsKeyId = "string",
      CACertificateIdentifier = "string"
    )
