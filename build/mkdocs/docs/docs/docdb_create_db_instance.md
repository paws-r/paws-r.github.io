<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>docdb_create_db_instance</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a new instance

### Description

Creates a new instance.

### Usage

    docdb_create_db_instance(DBInstanceIdentifier, DBInstanceClass, Engine,
      AvailabilityZone, PreferredMaintenanceWindow, AutoMinorVersionUpgrade,
      Tags, DBClusterIdentifier, CopyTagsToSnapshot, PromotionTier,
      EnablePerformanceInsights, PerformanceInsightsKMSKeyId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="docdb_create_db_instance_:_DBInstanceIdentifier">DBInstanceIdentifier</code></td>
<td><p>[required] The instance identifier. This parameter is stored as a
lowercase string.</p>
<p>Constraints:</p>
<ul>
<li><p>Must contain from 1 to 63 letters, numbers, or hyphens.</p></li>
<li><p>The first character must be a letter.</p></li>
<li><p>Cannot end with a hyphen or contain two consecutive
hyphens.</p></li>
</ul>
<p>Example: <code>mydbinstance</code></p></td>
</tr>
<tr class="even">
<td><code
id="docdb_create_db_instance_:_DBInstanceClass">DBInstanceClass</code></td>
<td><p>[required] The compute and memory capacity of the instance; for
example, <code>db.r5.large</code>.</p></td>
</tr>
<tr class="odd">
<td><code id="docdb_create_db_instance_:_Engine">Engine</code></td>
<td><p>[required] The name of the database engine to be used for this
instance.</p>
<p>Valid value: <code>docdb</code></p></td>
</tr>
<tr class="even">
<td><code
id="docdb_create_db_instance_:_AvailabilityZone">AvailabilityZone</code></td>
<td><p>The Amazon EC2 Availability Zone that the instance is created
in.</p>
<p>Default: A random, system-chosen Availability Zone in the endpoint's
Amazon Web Services Region.</p>
<p>Example: <code style="white-space: pre;">⁠us-east-1d⁠</code></p></td>
</tr>
<tr class="odd">
<td><code
id="docdb_create_db_instance_:_PreferredMaintenanceWindow">PreferredMaintenanceWindow</code></td>
<td><p>The time range each week during which system maintenance can
occur, in Universal Coordinated Time (UTC).</p>
<p>Format: <code>ddd:hh24:mi-ddd:hh24:mi</code></p>
<p>The default is a 30-minute window selected at random from an 8-hour
block of time for each Amazon Web Services Region, occurring on a random
day of the week.</p>
<p>Valid days: Mon, Tue, Wed, Thu, Fri, Sat, Sun</p>
<p>Constraints: Minimum 30-minute window.</p></td>
</tr>
<tr class="even">
<td><code
id="docdb_create_db_instance_:_AutoMinorVersionUpgrade">AutoMinorVersionUpgrade</code></td>
<td><p>This parameter does not apply to Amazon DocumentDB. Amazon
DocumentDB does not perform minor version upgrades regardless of the
value set.</p>
<p>Default: <code>false</code></p></td>
</tr>
<tr class="odd">
<td><code id="docdb_create_db_instance_:_Tags">Tags</code></td>
<td><p>The tags to be assigned to the instance. You can assign up to 10
tags to an instance.</p></td>
</tr>
<tr class="even">
<td><code
id="docdb_create_db_instance_:_DBClusterIdentifier">DBClusterIdentifier</code></td>
<td><p>[required] The identifier of the cluster that the instance will
belong to.</p></td>
</tr>
<tr class="odd">
<td><code
id="docdb_create_db_instance_:_CopyTagsToSnapshot">CopyTagsToSnapshot</code></td>
<td><p>A value that indicates whether to copy tags from the DB instance
to snapshots of the DB instance. By default, tags are not
copied.</p></td>
</tr>
<tr class="even">
<td><code
id="docdb_create_db_instance_:_PromotionTier">PromotionTier</code></td>
<td><p>A value that specifies the order in which an Amazon DocumentDB
replica is promoted to the primary instance after a failure of the
existing primary instance.</p>
<p>Default: 1</p>
<p>Valid values: 0-15</p></td>
</tr>
<tr class="odd">
<td><code
id="docdb_create_db_instance_:_EnablePerformanceInsights">EnablePerformanceInsights</code></td>
<td><p>A value that indicates whether to enable Performance Insights for
the DB Instance. For more information, see <a
href="https://docs.aws.amazon.com/documentdb/latest/developerguide/performance-insights.html">Using
Amazon Performance Insights</a>.</p></td>
</tr>
<tr class="even">
<td><code
id="docdb_create_db_instance_:_PerformanceInsightsKMSKeyId">PerformanceInsightsKMSKeyId</code></td>
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

    svc$create_db_instance(
      DBInstanceIdentifier = "string",
      DBInstanceClass = "string",
      Engine = "string",
      AvailabilityZone = "string",
      PreferredMaintenanceWindow = "string",
      AutoMinorVersionUpgrade = TRUE|FALSE,
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      ),
      DBClusterIdentifier = "string",
      CopyTagsToSnapshot = TRUE|FALSE,
      PromotionTier = 123,
      EnablePerformanceInsights = TRUE|FALSE,
      PerformanceInsightsKMSKeyId = "string"
    )
