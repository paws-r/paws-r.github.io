<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>neptune_modify_db_instance</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Modifies settings for a DB instance

### Description

Modifies settings for a DB instance. You can change one or more database
configuration parameters by specifying these parameters and the new
values in the request. To learn what modifications you can make to your
DB instance, call `describe_valid_db_instance_modifications` before you
call `modify_db_instance`.

### Usage

    neptune_modify_db_instance(DBInstanceIdentifier, AllocatedStorage,
      DBInstanceClass, DBSubnetGroupName, DBSecurityGroups,
      VpcSecurityGroupIds, ApplyImmediately, MasterUserPassword,
      DBParameterGroupName, BackupRetentionPeriod, PreferredBackupWindow,
      PreferredMaintenanceWindow, MultiAZ, EngineVersion,
      AllowMajorVersionUpgrade, AutoMinorVersionUpgrade, LicenseModel, Iops,
      OptionGroupName, NewDBInstanceIdentifier, StorageType, TdeCredentialArn,
      TdeCredentialPassword, CACertificateIdentifier, Domain,
      CopyTagsToSnapshot, MonitoringInterval, DBPortNumber,
      PubliclyAccessible, MonitoringRoleArn, DomainIAMRoleName, PromotionTier,
      EnableIAMDatabaseAuthentication, EnablePerformanceInsights,
      PerformanceInsightsKMSKeyId, CloudwatchLogsExportConfiguration,
      DeletionProtection)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="neptune_modify_db_instance_:_DBInstanceIdentifier">DBInstanceIdentifier</code></td>
<td><p>[required] The DB instance identifier. This value is stored as a
lowercase string.</p>
<p>Constraints:</p>
<ul>
<li><p>Must match the identifier of an existing DBInstance.</p></li>
</ul></td>
</tr>
<tr class="even">
<td><code
id="neptune_modify_db_instance_:_AllocatedStorage">AllocatedStorage</code></td>
<td><p>Not supported by Neptune.</p></td>
</tr>
<tr class="odd">
<td><code
id="neptune_modify_db_instance_:_DBInstanceClass">DBInstanceClass</code></td>
<td><p>The new compute and memory capacity of the DB instance, for
example, <code>db.m4.large</code>. Not all DB instance classes are
available in all Amazon Regions.</p>
<p>If you modify the DB instance class, an outage occurs during the
change. The change is applied during the next maintenance window, unless
<code>ApplyImmediately</code> is specified as <code>true</code> for this
request.</p>
<p>Default: Uses existing setting</p></td>
</tr>
<tr class="even">
<td><code
id="neptune_modify_db_instance_:_DBSubnetGroupName">DBSubnetGroupName</code></td>
<td><p>The new DB subnet group for the DB instance. You can use this
parameter to move your DB instance to a different VPC.</p>
<p>Changing the subnet group causes an outage during the change. The
change is applied during the next maintenance window, unless you specify
<code>true</code> for the <code>ApplyImmediately</code> parameter.</p>
<p>Constraints: If supplied, must match the name of an existing
DBSubnetGroup.</p>
<p>Example: <code>mySubnetGroup</code></p></td>
</tr>
<tr class="odd">
<td><code
id="neptune_modify_db_instance_:_DBSecurityGroups">DBSecurityGroups</code></td>
<td><p>A list of DB security groups to authorize on this DB instance.
Changing this setting doesn't result in an outage and the change is
asynchronously applied as soon as possible.</p>
<p>Constraints:</p>
<ul>
<li><p>If supplied, must match existing DBSecurityGroups.</p></li>
</ul></td>
</tr>
<tr class="even">
<td><code
id="neptune_modify_db_instance_:_VpcSecurityGroupIds">VpcSecurityGroupIds</code></td>
<td><p>A list of EC2 VPC security groups to authorize on this DB
instance. This change is asynchronously applied as soon as possible.</p>
<p>Not applicable. The associated list of EC2 VPC security groups is
managed by the DB cluster. For more information, see
<code>modify_db_cluster</code>.</p>
<p>Constraints:</p>
<ul>
<li><p>If supplied, must match existing VpcSecurityGroupIds.</p></li>
</ul></td>
</tr>
<tr class="odd">
<td><code
id="neptune_modify_db_instance_:_ApplyImmediately">ApplyImmediately</code></td>
<td><p>Specifies whether the modifications in this request and any
pending modifications are asynchronously applied as soon as possible,
regardless of the <code>PreferredMaintenanceWindow</code> setting for
the DB instance.</p>
<p>If this parameter is set to <code>false</code>, changes to the DB
instance are applied during the next maintenance window. Some parameter
changes can cause an outage and are applied on the next call to
<code>reboot_db_instance</code>, or the next failure reboot.</p>
<p>Default: <code>false</code></p></td>
</tr>
<tr class="even">
<td><code
id="neptune_modify_db_instance_:_MasterUserPassword">MasterUserPassword</code></td>
<td><p>Not supported by Neptune.</p></td>
</tr>
<tr class="odd">
<td><code
id="neptune_modify_db_instance_:_DBParameterGroupName">DBParameterGroupName</code></td>
<td><p>The name of the DB parameter group to apply to the DB instance.
Changing this setting doesn't result in an outage. The parameter group
name itself is changed immediately, but the actual parameter changes are
not applied until you reboot the instance without failover. The db
instance will NOT be rebooted automatically and the parameter changes
will NOT be applied during the next maintenance window.</p>
<p>Default: Uses existing setting</p>
<p>Constraints: The DB parameter group must be in the same DB parameter
group family as this DB instance.</p></td>
</tr>
<tr class="even">
<td><code
id="neptune_modify_db_instance_:_BackupRetentionPeriod">BackupRetentionPeriod</code></td>
<td><p>Not applicable. The retention period for automated backups is
managed by the DB cluster. For more information, see
<code>modify_db_cluster</code>.</p>
<p>Default: Uses existing setting</p></td>
</tr>
<tr class="odd">
<td><code
id="neptune_modify_db_instance_:_PreferredBackupWindow">PreferredBackupWindow</code></td>
<td><p>The daily time range during which automated backups are created
if automated backups are enabled.</p>
<p>Not applicable. The daily time range for creating automated backups
is managed by the DB cluster. For more information, see
<code>modify_db_cluster</code>.</p>
<p>Constraints:</p>
<ul>
<li><p>Must be in the format hh24:mi-hh24:mi</p></li>
<li><p>Must be in Universal Time Coordinated (UTC)</p></li>
<li><p>Must not conflict with the preferred maintenance window</p></li>
<li><p>Must be at least 30 minutes</p></li>
</ul></td>
</tr>
<tr class="even">
<td><code
id="neptune_modify_db_instance_:_PreferredMaintenanceWindow">PreferredMaintenanceWindow</code></td>
<td><p>The weekly time range (in UTC) during which system maintenance
can occur, which might result in an outage. Changing this parameter
doesn't result in an outage, except in the following situation, and the
change is asynchronously applied as soon as possible. If there are
pending actions that cause a reboot, and the maintenance window is
changed to include the current time, then changing this parameter will
cause a reboot of the DB instance. If moving this window to the current
time, there must be at least 30 minutes between the current time and end
of the window to ensure pending changes are applied.</p>
<p>Default: Uses existing setting</p>
<p>Format: ddd:hh24:mi-ddd:hh24:mi</p>
<p>Valid Days: Mon | Tue | Wed | Thu | Fri | Sat | Sun</p>
<p>Constraints: Must be at least 30 minutes</p></td>
</tr>
<tr class="odd">
<td><code id="neptune_modify_db_instance_:_MultiAZ">MultiAZ</code></td>
<td><p>Specifies if the DB instance is a Multi-AZ deployment. Changing
this parameter doesn't result in an outage and the change is applied
during the next maintenance window unless the
<code>ApplyImmediately</code> parameter is set to <code>true</code> for
this request.</p></td>
</tr>
<tr class="even">
<td><code
id="neptune_modify_db_instance_:_EngineVersion">EngineVersion</code></td>
<td><p>The version number of the database engine to upgrade to.
Currently, setting this parameter has no effect. To upgrade your
database engine to the most recent release, use the
<code>apply_pending_maintenance_action</code> API.</p></td>
</tr>
<tr class="odd">
<td><code
id="neptune_modify_db_instance_:_AllowMajorVersionUpgrade">AllowMajorVersionUpgrade</code></td>
<td><p>Indicates that major version upgrades are allowed. Changing this
parameter doesn't result in an outage and the change is asynchronously
applied as soon as possible.</p></td>
</tr>
<tr class="even">
<td><code
id="neptune_modify_db_instance_:_AutoMinorVersionUpgrade">AutoMinorVersionUpgrade</code></td>
<td><p>Indicates that minor version upgrades are applied automatically
to the DB instance during the maintenance window. Changing this
parameter doesn't result in an outage except in the following case and
the change is asynchronously applied as soon as possible. An outage will
result if this parameter is set to <code>true</code> during the
maintenance window, and a newer minor version is available, and Neptune
has enabled auto patching for that engine version.</p></td>
</tr>
<tr class="odd">
<td><code
id="neptune_modify_db_instance_:_LicenseModel">LicenseModel</code></td>
<td><p>Not supported by Neptune.</p></td>
</tr>
<tr class="even">
<td><code id="neptune_modify_db_instance_:_Iops">Iops</code></td>
<td><p>The new Provisioned IOPS (I/O operations per second) value for
the instance.</p>
<p>Changing this setting doesn't result in an outage and the change is
applied during the next maintenance window unless the
<code>ApplyImmediately</code> parameter is set to <code>true</code> for
this request.</p>
<p>Default: Uses existing setting</p></td>
</tr>
<tr class="odd">
<td><code
id="neptune_modify_db_instance_:_OptionGroupName">OptionGroupName</code></td>
<td><p><em>(Not supported by Neptune)</em></p></td>
</tr>
<tr class="even">
<td><code
id="neptune_modify_db_instance_:_NewDBInstanceIdentifier">NewDBInstanceIdentifier</code></td>
<td><p>The new DB instance identifier for the DB instance when renaming
a DB instance. When you change the DB instance identifier, an instance
reboot will occur immediately if you set <code
style="white-space: pre;">⁠Apply Immediately⁠</code> to true, or will
occur during the next maintenance window if <code
style="white-space: pre;">⁠Apply Immediately⁠</code> to false. This value
is stored as a lowercase string.</p>
<p>Constraints:</p>
<ul>
<li><p>Must contain from 1 to 63 letters, numbers, or hyphens.</p></li>
<li><p>The first character must be a letter.</p></li>
<li><p>Cannot end with a hyphen or contain two consecutive
hyphens.</p></li>
</ul>
<p>Example: <code>mydbinstance</code></p></td>
</tr>
<tr class="odd">
<td><code
id="neptune_modify_db_instance_:_StorageType">StorageType</code></td>
<td><p>Not supported.</p></td>
</tr>
<tr class="even">
<td><code
id="neptune_modify_db_instance_:_TdeCredentialArn">TdeCredentialArn</code></td>
<td><p>The ARN from the key store with which to associate the instance
for TDE encryption.</p></td>
</tr>
<tr class="odd">
<td><code
id="neptune_modify_db_instance_:_TdeCredentialPassword">TdeCredentialPassword</code></td>
<td><p>The password for the given ARN from the key store in order to
access the device.</p></td>
</tr>
<tr class="even">
<td><code
id="neptune_modify_db_instance_:_CACertificateIdentifier">CACertificateIdentifier</code></td>
<td><p>Indicates the certificate that needs to be associated with the
instance.</p></td>
</tr>
<tr class="odd">
<td><code id="neptune_modify_db_instance_:_Domain">Domain</code></td>
<td><p>Not supported.</p></td>
</tr>
<tr class="even">
<td><code
id="neptune_modify_db_instance_:_CopyTagsToSnapshot">CopyTagsToSnapshot</code></td>
<td><p>True to copy all tags from the DB instance to snapshots of the DB
instance, and otherwise false. The default is false.</p></td>
</tr>
<tr class="odd">
<td><code
id="neptune_modify_db_instance_:_MonitoringInterval">MonitoringInterval</code></td>
<td><p>The interval, in seconds, between points when Enhanced Monitoring
metrics are collected for the DB instance. To disable collecting
Enhanced Monitoring metrics, specify 0. The default is 0.</p>
<p>If <code>MonitoringRoleArn</code> is specified, then you must also
set <code>MonitoringInterval</code> to a value other than 0.</p>
<p>Valid Values: <code
style="white-space: pre;">⁠0, 1, 5, 10, 15, 30, 60⁠</code></p></td>
</tr>
<tr class="even">
<td><code
id="neptune_modify_db_instance_:_DBPortNumber">DBPortNumber</code></td>
<td><p>The port number on which the database accepts connections.</p>
<p>The value of the <code>DBPortNumber</code> parameter must not match
any of the port values specified for options in the option group for the
DB instance.</p>
<p>Your database will restart when you change the
<code>DBPortNumber</code> value regardless of the value of the
<code>ApplyImmediately</code> parameter.</p>
<p>Default: <code>8182</code></p></td>
</tr>
<tr class="odd">
<td><code
id="neptune_modify_db_instance_:_PubliclyAccessible">PubliclyAccessible</code></td>
<td><p>This flag should no longer be used.</p></td>
</tr>
<tr class="even">
<td><code
id="neptune_modify_db_instance_:_MonitoringRoleArn">MonitoringRoleArn</code></td>
<td><p>The ARN for the IAM role that permits Neptune to send enhanced
monitoring metrics to Amazon CloudWatch Logs. For example,
<code>arn:aws:iam:123456789012:role/emaccess</code>.</p>
<p>If <code>MonitoringInterval</code> is set to a value other than 0,
then you must supply a <code>MonitoringRoleArn</code> value.</p></td>
</tr>
<tr class="odd">
<td><code
id="neptune_modify_db_instance_:_DomainIAMRoleName">DomainIAMRoleName</code></td>
<td><p>Not supported</p></td>
</tr>
<tr class="even">
<td><code
id="neptune_modify_db_instance_:_PromotionTier">PromotionTier</code></td>
<td><p>A value that specifies the order in which a Read Replica is
promoted to the primary instance after a failure of the existing primary
instance.</p>
<p>Default: 1</p>
<p>Valid Values: 0 - 15</p></td>
</tr>
<tr class="odd">
<td><code
id="neptune_modify_db_instance_:_EnableIAMDatabaseAuthentication">EnableIAMDatabaseAuthentication</code></td>
<td><p>True to enable mapping of Amazon Identity and Access Management
(IAM) accounts to database accounts, and otherwise false.</p>
<p>You can enable IAM database authentication for the following database
engines</p>
<p>Not applicable. Mapping Amazon IAM accounts to database accounts is
managed by the DB cluster. For more information, see
<code>modify_db_cluster</code>.</p>
<p>Default: <code>false</code></p></td>
</tr>
<tr class="even">
<td><code
id="neptune_modify_db_instance_:_EnablePerformanceInsights">EnablePerformanceInsights</code></td>
<td><p><em>(Not supported by Neptune)</em></p></td>
</tr>
<tr class="odd">
<td><code
id="neptune_modify_db_instance_:_PerformanceInsightsKMSKeyId">PerformanceInsightsKMSKeyId</code></td>
<td><p><em>(Not supported by Neptune)</em></p></td>
</tr>
<tr class="even">
<td><code
id="neptune_modify_db_instance_:_CloudwatchLogsExportConfiguration">CloudwatchLogsExportConfiguration</code></td>
<td><p>The configuration setting for the log types to be enabled for
export to CloudWatch Logs for a specific DB instance or DB
cluster.</p></td>
</tr>
<tr class="odd">
<td><code
id="neptune_modify_db_instance_:_DeletionProtection">DeletionProtection</code></td>
<td><p>A value that indicates whether the DB instance has deletion
protection enabled. The database can't be deleted when deletion
protection is enabled. By default, deletion protection is disabled. See
<a
href="https://docs.aws.amazon.com/neptune/latest/userguide/manage-console-instances-delete.html">Deleting
a DB Instance</a>.</p></td>
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

    svc$modify_db_instance(
      DBInstanceIdentifier = "string",
      AllocatedStorage = 123,
      DBInstanceClass = "string",
      DBSubnetGroupName = "string",
      DBSecurityGroups = list(
        "string"
      ),
      VpcSecurityGroupIds = list(
        "string"
      ),
      ApplyImmediately = TRUE|FALSE,
      MasterUserPassword = "string",
      DBParameterGroupName = "string",
      BackupRetentionPeriod = 123,
      PreferredBackupWindow = "string",
      PreferredMaintenanceWindow = "string",
      MultiAZ = TRUE|FALSE,
      EngineVersion = "string",
      AllowMajorVersionUpgrade = TRUE|FALSE,
      AutoMinorVersionUpgrade = TRUE|FALSE,
      LicenseModel = "string",
      Iops = 123,
      OptionGroupName = "string",
      NewDBInstanceIdentifier = "string",
      StorageType = "string",
      TdeCredentialArn = "string",
      TdeCredentialPassword = "string",
      CACertificateIdentifier = "string",
      Domain = "string",
      CopyTagsToSnapshot = TRUE|FALSE,
      MonitoringInterval = 123,
      DBPortNumber = 123,
      PubliclyAccessible = TRUE|FALSE,
      MonitoringRoleArn = "string",
      DomainIAMRoleName = "string",
      PromotionTier = 123,
      EnableIAMDatabaseAuthentication = TRUE|FALSE,
      EnablePerformanceInsights = TRUE|FALSE,
      PerformanceInsightsKMSKeyId = "string",
      CloudwatchLogsExportConfiguration = list(
        EnableLogTypes = list(
          "string"
        ),
        DisableLogTypes = list(
          "string"
        )
      ),
      DeletionProtection = TRUE|FALSE
    )
