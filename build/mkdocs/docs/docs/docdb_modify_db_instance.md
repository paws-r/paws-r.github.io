<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>docdb_modify_db_instance</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Modifies settings for an instance

### Description

Modifies settings for an instance. You can change one or more database
configuration parameters by specifying these parameters and the new
values in the request.

### Usage

    docdb_modify_db_instance(DBInstanceIdentifier, DBInstanceClass,
      ApplyImmediately, PreferredMaintenanceWindow, AutoMinorVersionUpgrade,
      NewDBInstanceIdentifier, CACertificateIdentifier, CopyTagsToSnapshot,
      PromotionTier, EnablePerformanceInsights, PerformanceInsightsKMSKeyId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="docdb_modify_db_instance_:_DBInstanceIdentifier">DBInstanceIdentifier</code></td>
<td><p>[required] The instance identifier. This value is stored as a
lowercase string.</p>
<p>Constraints:</p>
<ul>
<li><p>Must match the identifier of an existing
<code>DBInstance</code>.</p></li>
</ul></td>
</tr>
<tr class="even">
<td><code
id="docdb_modify_db_instance_:_DBInstanceClass">DBInstanceClass</code></td>
<td><p>The new compute and memory capacity of the instance; for example,
<code>db.r5.large</code>. Not all instance classes are available in all
Amazon Web Services Regions.</p>
<p>If you modify the instance class, an outage occurs during the change.
The change is applied during the next maintenance window, unless
<code>ApplyImmediately</code> is specified as <code>true</code> for this
request.</p>
<p>Default: Uses existing setting.</p></td>
</tr>
<tr class="odd">
<td><code
id="docdb_modify_db_instance_:_ApplyImmediately">ApplyImmediately</code></td>
<td><p>Specifies whether the modifications in this request and any
pending modifications are asynchronously applied as soon as possible,
regardless of the <code>PreferredMaintenanceWindow</code> setting for
the instance.</p>
<p>If this parameter is set to <code>false</code>, changes to the
instance are applied during the next maintenance window. Some parameter
changes can cause an outage and are applied on the next reboot.</p>
<p>Default: <code>false</code></p></td>
</tr>
<tr class="even">
<td><code
id="docdb_modify_db_instance_:_PreferredMaintenanceWindow">PreferredMaintenanceWindow</code></td>
<td><p>The weekly time range (in UTC) during which system maintenance
can occur, which might result in an outage. Changing this parameter
doesn't result in an outage except in the following situation, and the
change is asynchronously applied as soon as possible. If there are
pending actions that cause a reboot, and the maintenance window is
changed to include the current time, changing this parameter causes a
reboot of the instance. If you are moving this window to the current
time, there must be at least 30 minutes between the current time and end
of the window to ensure that pending changes are applied.</p>
<p>Default: Uses existing setting.</p>
<p>Format: <code>ddd:hh24:mi-ddd:hh24:mi</code></p>
<p>Valid days: Mon, Tue, Wed, Thu, Fri, Sat, Sun</p>
<p>Constraints: Must be at least 30 minutes.</p></td>
</tr>
<tr class="odd">
<td><code
id="docdb_modify_db_instance_:_AutoMinorVersionUpgrade">AutoMinorVersionUpgrade</code></td>
<td><p>This parameter does not apply to Amazon DocumentDB. Amazon
DocumentDB does not perform minor version upgrades regardless of the
value set.</p></td>
</tr>
<tr class="even">
<td><code
id="docdb_modify_db_instance_:_NewDBInstanceIdentifier">NewDBInstanceIdentifier</code></td>
<td><p>The new instance identifier for the instance when renaming an
instance. When you change the instance identifier, an instance reboot
occurs immediately if you set <code
style="white-space: pre;">⁠Apply Immediately⁠</code> to <code>true</code>.
It occurs during the next maintenance window if you set <code
style="white-space: pre;">⁠Apply Immediately⁠</code> to
<code>false</code>. This value is stored as a lowercase string.</p>
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
id="docdb_modify_db_instance_:_CACertificateIdentifier">CACertificateIdentifier</code></td>
<td><p>Indicates the certificate that needs to be associated with the
instance.</p></td>
</tr>
<tr class="even">
<td><code
id="docdb_modify_db_instance_:_CopyTagsToSnapshot">CopyTagsToSnapshot</code></td>
<td><p>A value that indicates whether to copy all tags from the DB
instance to snapshots of the DB instance. By default, tags are not
copied.</p></td>
</tr>
<tr class="odd">
<td><code
id="docdb_modify_db_instance_:_PromotionTier">PromotionTier</code></td>
<td><p>A value that specifies the order in which an Amazon DocumentDB
replica is promoted to the primary instance after a failure of the
existing primary instance.</p>
<p>Default: 1</p>
<p>Valid values: 0-15</p></td>
</tr>
<tr class="even">
<td><code
id="docdb_modify_db_instance_:_EnablePerformanceInsights">EnablePerformanceInsights</code></td>
<td><p>A value that indicates whether to enable Performance Insights for
the DB Instance. For more information, see <a
href="https://docs.aws.amazon.com/documentdb/latest/developerguide/performance-insights.html">Using
Amazon Performance Insights</a>.</p></td>
</tr>
<tr class="odd">
<td><code
id="docdb_modify_db_instance_:_PerformanceInsightsKMSKeyId">PerformanceInsightsKMSKeyId</code></td>
<td><p>The KMS key identifier for encryption of Performance Insights
data.</p>
<p>The KMS key identifier is the key ARN, key ID, alias ARN, or alias
name for the KMS key.</p>
<p>If you do not specify a value for PerformanceInsightsKMSKeyId, then
Amazon DocumentDB uses your default KMS key. There is a default KMS key
for your Amazon Web Services account. Your Amazon Web Services account
has a different default KMS key for each Amazon Web Services
region.</p></td>
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
        Endpoint = list(
          Address = "string",
          Port = 123,
          HostedZoneId = "string"
        ),
        InstanceCreateTime = as.POSIXct(
          "2015-01-01"
        ),
        PreferredBackupWindow = "string",
        BackupRetentionPeriod = 123,
        VpcSecurityGroups = list(
          list(
            VpcSecurityGroupId = "string",
            Status = "string"
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
        EngineVersion = "string",
        AutoMinorVersionUpgrade = TRUE|FALSE,
        PubliclyAccessible = TRUE|FALSE,
        StatusInfos = list(
          list(
            StatusType = "string",
            Normal = TRUE|FALSE,
            Status = "string",
            Message = "string"
          )
        ),
        DBClusterIdentifier = "string",
        StorageEncrypted = TRUE|FALSE,
        KmsKeyId = "string",
        DbiResourceId = "string",
        CACertificateIdentifier = "string",
        CopyTagsToSnapshot = TRUE|FALSE,
        PromotionTier = 123,
        DBInstanceArn = "string",
        EnabledCloudwatchLogsExports = list(
          "string"
        )
      )
    )

### Request syntax

    svc$modify_db_instance(
      DBInstanceIdentifier = "string",
      DBInstanceClass = "string",
      ApplyImmediately = TRUE|FALSE,
      PreferredMaintenanceWindow = "string",
      AutoMinorVersionUpgrade = TRUE|FALSE,
      NewDBInstanceIdentifier = "string",
      CACertificateIdentifier = "string",
      CopyTagsToSnapshot = TRUE|FALSE,
      PromotionTier = 123,
      EnablePerformanceInsights = TRUE|FALSE,
      PerformanceInsightsKMSKeyId = "string"
    )
