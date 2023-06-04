<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>neptune_create_db_instance</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a new DB instance

### Description

Creates a new DB instance.

### Usage

    neptune_create_db_instance(DBName, DBInstanceIdentifier,
      AllocatedStorage, DBInstanceClass, Engine, MasterUsername,
      MasterUserPassword, DBSecurityGroups, VpcSecurityGroupIds,
      AvailabilityZone, DBSubnetGroupName, PreferredMaintenanceWindow,
      DBParameterGroupName, BackupRetentionPeriod, PreferredBackupWindow,
      Port, MultiAZ, EngineVersion, AutoMinorVersionUpgrade, LicenseModel,
      Iops, OptionGroupName, CharacterSetName, PubliclyAccessible, Tags,
      DBClusterIdentifier, StorageType, TdeCredentialArn,
      TdeCredentialPassword, StorageEncrypted, KmsKeyId, Domain,
      CopyTagsToSnapshot, MonitoringInterval, MonitoringRoleArn,
      DomainIAMRoleName, PromotionTier, Timezone,
      EnableIAMDatabaseAuthentication, EnablePerformanceInsights,
      PerformanceInsightsKMSKeyId, EnableCloudwatchLogsExports,
      DeletionProtection)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="neptune_create_db_instance_:_DBName">DBName</code></td>
<td><p>Not supported.</p></td>
</tr>
<tr class="even">
<td><code
id="neptune_create_db_instance_:_DBInstanceIdentifier">DBInstanceIdentifier</code></td>
<td><p>[required] The DB instance identifier. This parameter is stored
as a lowercase string.</p>
<p>Constraints:</p>
<ul>
<li><p>Must contain from 1 to 63 letters, numbers, or hyphens.</p></li>
<li><p>First character must be a letter.</p></li>
<li><p>Cannot end with a hyphen or contain two consecutive
hyphens.</p></li>
</ul>
<p>Example: <code>mydbinstance</code></p></td>
</tr>
<tr class="odd">
<td><code
id="neptune_create_db_instance_:_AllocatedStorage">AllocatedStorage</code></td>
<td><p>Not supported by Neptune.</p></td>
</tr>
<tr class="even">
<td><code
id="neptune_create_db_instance_:_DBInstanceClass">DBInstanceClass</code></td>
<td><p>[required] The compute and memory capacity of the DB instance,
for example, <code>db.m4.large</code>. Not all DB instance classes are
available in all Amazon Regions.</p></td>
</tr>
<tr class="odd">
<td><code id="neptune_create_db_instance_:_Engine">Engine</code></td>
<td><p>[required] The name of the database engine to be used for this
instance.</p>
<p>Valid Values: <code>neptune</code></p></td>
</tr>
<tr class="even">
<td><code
id="neptune_create_db_instance_:_MasterUsername">MasterUsername</code></td>
<td><p>Not supported by Neptune.</p></td>
</tr>
<tr class="odd">
<td><code
id="neptune_create_db_instance_:_MasterUserPassword">MasterUserPassword</code></td>
<td><p>Not supported by Neptune.</p></td>
</tr>
<tr class="even">
<td><code
id="neptune_create_db_instance_:_DBSecurityGroups">DBSecurityGroups</code></td>
<td><p>A list of DB security groups to associate with this DB
instance.</p>
<p>Default: The default DB security group for the database
engine.</p></td>
</tr>
<tr class="odd">
<td><code
id="neptune_create_db_instance_:_VpcSecurityGroupIds">VpcSecurityGroupIds</code></td>
<td><p>A list of EC2 VPC security groups to associate with this DB
instance.</p>
<p>Not applicable. The associated list of EC2 VPC security groups is
managed by the DB cluster. For more information, see
<code>create_db_cluster</code>.</p>
<p>Default: The default EC2 VPC security group for the DB subnet group's
VPC.</p></td>
</tr>
<tr class="even">
<td><code
id="neptune_create_db_instance_:_AvailabilityZone">AvailabilityZone</code></td>
<td><p>The EC2 Availability Zone that the DB instance is created in</p>
<p>Default: A random, system-chosen Availability Zone in the endpoint's
Amazon Region.</p>
<p>Example: <code style="white-space: pre;">⁠us-east-1d⁠</code></p>
<p>Constraint: The AvailabilityZone parameter can't be specified if the
MultiAZ parameter is set to <code>true</code>. The specified
Availability Zone must be in the same Amazon Region as the current
endpoint.</p></td>
</tr>
<tr class="odd">
<td><code
id="neptune_create_db_instance_:_DBSubnetGroupName">DBSubnetGroupName</code></td>
<td><p>A DB subnet group to associate with this DB instance.</p>
<p>If there is no DB subnet group, then it is a non-VPC DB
instance.</p></td>
</tr>
<tr class="even">
<td><code
id="neptune_create_db_instance_:_PreferredMaintenanceWindow">PreferredMaintenanceWindow</code></td>
<td><p>The time range each week during which system maintenance can
occur, in Universal Coordinated Time (UTC).</p>
<p>Format: <code>ddd:hh24:mi-ddd:hh24:mi</code></p>
<p>The default is a 30-minute window selected at random from an 8-hour
block of time for each Amazon Region, occurring on a random day of the
week.</p>
<p>Valid Days: Mon, Tue, Wed, Thu, Fri, Sat, Sun.</p>
<p>Constraints: Minimum 30-minute window.</p></td>
</tr>
<tr class="odd">
<td><code
id="neptune_create_db_instance_:_DBParameterGroupName">DBParameterGroupName</code></td>
<td><p>The name of the DB parameter group to associate with this DB
instance. If this argument is omitted, the default DBParameterGroup for
the specified engine is used.</p>
<p>Constraints:</p>
<ul>
<li><p>Must be 1 to 255 letters, numbers, or hyphens.</p></li>
<li><p>First character must be a letter</p></li>
<li><p>Cannot end with a hyphen or contain two consecutive
hyphens</p></li>
</ul></td>
</tr>
<tr class="even">
<td><code
id="neptune_create_db_instance_:_BackupRetentionPeriod">BackupRetentionPeriod</code></td>
<td><p>The number of days for which automated backups are retained.</p>
<p>Not applicable. The retention period for automated backups is managed
by the DB cluster. For more information, see
<code>create_db_cluster</code>.</p>
<p>Default: 1</p>
<p>Constraints:</p>
<ul>
<li><p>Must be a value from 0 to 35</p></li>
<li><p>Cannot be set to 0 if the DB instance is a source to Read
Replicas</p></li>
</ul></td>
</tr>
<tr class="odd">
<td><code
id="neptune_create_db_instance_:_PreferredBackupWindow">PreferredBackupWindow</code></td>
<td><p>The daily time range during which automated backups are
created.</p>
<p>Not applicable. The daily time range for creating automated backups
is managed by the DB cluster. For more information, see
<code>create_db_cluster</code>.</p></td>
</tr>
<tr class="even">
<td><code id="neptune_create_db_instance_:_Port">Port</code></td>
<td><p>The port number on which the database accepts connections.</p>
<p>Not applicable. The port is managed by the DB cluster. For more
information, see <code>create_db_cluster</code>.</p>
<p>Default: <code>8182</code></p>
<p>Type: Integer</p></td>
</tr>
<tr class="odd">
<td><code id="neptune_create_db_instance_:_MultiAZ">MultiAZ</code></td>
<td><p>Specifies if the DB instance is a Multi-AZ deployment. You can't
set the AvailabilityZone parameter if the MultiAZ parameter is set to
true.</p></td>
</tr>
<tr class="even">
<td><code
id="neptune_create_db_instance_:_EngineVersion">EngineVersion</code></td>
<td><p>The version number of the database engine to use. Currently,
setting this parameter has no effect.</p></td>
</tr>
<tr class="odd">
<td><code
id="neptune_create_db_instance_:_AutoMinorVersionUpgrade">AutoMinorVersionUpgrade</code></td>
<td><p>Indicates that minor engine upgrades are applied automatically to
the DB instance during the maintenance window.</p>
<p>Default: <code>true</code></p></td>
</tr>
<tr class="even">
<td><code
id="neptune_create_db_instance_:_LicenseModel">LicenseModel</code></td>
<td><p>License model information for this DB instance.</p>
<p>Valid values: <code>license-included</code> |
<code>bring-your-own-license</code> |
<code>general-public-license</code></p></td>
</tr>
<tr class="odd">
<td><code id="neptune_create_db_instance_:_Iops">Iops</code></td>
<td><p>The amount of Provisioned IOPS (input/output operations per
second) to be initially allocated for the DB instance.</p></td>
</tr>
<tr class="even">
<td><code
id="neptune_create_db_instance_:_OptionGroupName">OptionGroupName</code></td>
<td><p><em>(Not supported by Neptune)</em></p></td>
</tr>
<tr class="odd">
<td><code
id="neptune_create_db_instance_:_CharacterSetName">CharacterSetName</code></td>
<td><p><em>(Not supported by Neptune)</em></p></td>
</tr>
<tr class="even">
<td><code
id="neptune_create_db_instance_:_PubliclyAccessible">PubliclyAccessible</code></td>
<td><p>This flag should no longer be used.</p></td>
</tr>
<tr class="odd">
<td><code id="neptune_create_db_instance_:_Tags">Tags</code></td>
<td><p>The tags to assign to the new instance.</p></td>
</tr>
<tr class="even">
<td><code
id="neptune_create_db_instance_:_DBClusterIdentifier">DBClusterIdentifier</code></td>
<td><p>[required] The identifier of the DB cluster that the instance
will belong to.</p>
<p>For information on creating a DB cluster, see
<code>create_db_cluster</code>.</p>
<p>Type: String</p></td>
</tr>
<tr class="odd">
<td><code
id="neptune_create_db_instance_:_StorageType">StorageType</code></td>
<td><p>Specifies the storage type to be associated with the DB
instance.</p>
<p>Not applicable. Storage is managed by the DB Cluster.</p></td>
</tr>
<tr class="even">
<td><code
id="neptune_create_db_instance_:_TdeCredentialArn">TdeCredentialArn</code></td>
<td><p>The ARN from the key store with which to associate the instance
for TDE encryption.</p></td>
</tr>
<tr class="odd">
<td><code
id="neptune_create_db_instance_:_TdeCredentialPassword">TdeCredentialPassword</code></td>
<td><p>The password for the given ARN from the key store in order to
access the device.</p></td>
</tr>
<tr class="even">
<td><code
id="neptune_create_db_instance_:_StorageEncrypted">StorageEncrypted</code></td>
<td><p>Specifies whether the DB instance is encrypted.</p>
<p>Not applicable. The encryption for DB instances is managed by the DB
cluster. For more information, see <code>create_db_cluster</code>.</p>
<p>Default: false</p></td>
</tr>
<tr class="odd">
<td><code
id="neptune_create_db_instance_:_KmsKeyId">KmsKeyId</code></td>
<td><p>The Amazon KMS key identifier for an encrypted DB instance.</p>
<p>The KMS key identifier is the Amazon Resource Name (ARN) for the KMS
encryption key. If you are creating a DB instance with the same Amazon
account that owns the KMS encryption key used to encrypt the new DB
instance, then you can use the KMS key alias instead of the ARN for the
KM encryption key.</p>
<p>Not applicable. The KMS key identifier is managed by the DB cluster.
For more information, see <code>create_db_cluster</code>.</p>
<p>If the <code>StorageEncrypted</code> parameter is true, and you do
not specify a value for the <code>KmsKeyId</code> parameter, then Amazon
Neptune will use your default encryption key. Amazon KMS creates the
default encryption key for your Amazon account. Your Amazon account has
a different default encryption key for each Amazon Region.</p></td>
</tr>
<tr class="even">
<td><code id="neptune_create_db_instance_:_Domain">Domain</code></td>
<td><p>Specify the Active Directory Domain to create the instance
in.</p></td>
</tr>
<tr class="odd">
<td><code
id="neptune_create_db_instance_:_CopyTagsToSnapshot">CopyTagsToSnapshot</code></td>
<td><p>True to copy all tags from the DB instance to snapshots of the DB
instance, and otherwise false. The default is false.</p></td>
</tr>
<tr class="even">
<td><code
id="neptune_create_db_instance_:_MonitoringInterval">MonitoringInterval</code></td>
<td><p>The interval, in seconds, between points when Enhanced Monitoring
metrics are collected for the DB instance. To disable collecting
Enhanced Monitoring metrics, specify 0. The default is 0.</p>
<p>If <code>MonitoringRoleArn</code> is specified, then you must also
set <code>MonitoringInterval</code> to a value other than 0.</p>
<p>Valid Values: <code
style="white-space: pre;">⁠0, 1, 5, 10, 15, 30, 60⁠</code></p></td>
</tr>
<tr class="odd">
<td><code
id="neptune_create_db_instance_:_MonitoringRoleArn">MonitoringRoleArn</code></td>
<td><p>The ARN for the IAM role that permits Neptune to send enhanced
monitoring metrics to Amazon CloudWatch Logs. For example,
<code>arn:aws:iam:123456789012:role/emaccess</code>.</p>
<p>If <code>MonitoringInterval</code> is set to a value other than 0,
then you must supply a <code>MonitoringRoleArn</code> value.</p></td>
</tr>
<tr class="even">
<td><code
id="neptune_create_db_instance_:_DomainIAMRoleName">DomainIAMRoleName</code></td>
<td><p>Specify the name of the IAM role to be used when making API calls
to the Directory Service.</p></td>
</tr>
<tr class="odd">
<td><code
id="neptune_create_db_instance_:_PromotionTier">PromotionTier</code></td>
<td><p>A value that specifies the order in which an Read Replica is
promoted to the primary instance after a failure of the existing primary
instance.</p>
<p>Default: 1</p>
<p>Valid Values: 0 - 15</p></td>
</tr>
<tr class="even">
<td><code
id="neptune_create_db_instance_:_Timezone">Timezone</code></td>
<td><p>The time zone of the DB instance.</p></td>
</tr>
<tr class="odd">
<td><code
id="neptune_create_db_instance_:_EnableIAMDatabaseAuthentication">EnableIAMDatabaseAuthentication</code></td>
<td><p>Not supported by Neptune (ignored).</p></td>
</tr>
<tr class="even">
<td><code
id="neptune_create_db_instance_:_EnablePerformanceInsights">EnablePerformanceInsights</code></td>
<td><p><em>(Not supported by Neptune)</em></p></td>
</tr>
<tr class="odd">
<td><code
id="neptune_create_db_instance_:_PerformanceInsightsKMSKeyId">PerformanceInsightsKMSKeyId</code></td>
<td><p><em>(Not supported by Neptune)</em></p></td>
</tr>
<tr class="even">
<td><code
id="neptune_create_db_instance_:_EnableCloudwatchLogsExports">EnableCloudwatchLogsExports</code></td>
<td><p>The list of log types that need to be enabled for exporting to
CloudWatch Logs.</p></td>
</tr>
<tr class="odd">
<td><code
id="neptune_create_db_instance_:_DeletionProtection">DeletionProtection</code></td>
<td><p>A value that indicates whether the DB instance has deletion
protection enabled. The database can't be deleted when deletion
protection is enabled. By default, deletion protection is disabled. See
<a
href="https://docs.aws.amazon.com/neptune/latest/userguide/manage-console-instances-delete.html">Deleting
a DB Instance</a>.</p>
<p>DB instances in a DB cluster can be deleted even when deletion
protection is enabled in their parent DB cluster.</p></td>
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
              SubnetStatus = "string"
            )
          ),
          DBSubnetGroupArn = "string"
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
          )
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
        LicenseModel = "string",
        Iops = 123,
        OptionGroupMemberships = list(
          list(
            OptionGroupName = "string",
            Status = "string"
          )
        ),
        CharacterSetName = "string",
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
        EnabledCloudwatchLogsExports = list(
          "string"
        ),
        DeletionProtection = TRUE|FALSE
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
      EnableCloudwatchLogsExports = list(
        "string"
      ),
      DeletionProtection = TRUE|FALSE
    )
