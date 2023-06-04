<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>neptune_create_db_cluster</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a new Amazon Neptune DB cluster

### Description

Creates a new Amazon Neptune DB cluster.

You can use the `ReplicationSourceIdentifier` parameter to create the DB
cluster as a Read Replica of another DB cluster or Amazon Neptune DB
instance.

Note that when you create a new cluster using `create_db_cluster`
directly, deletion protection is disabled by default (when you create a
new production cluster in the console, deletion protection is enabled by
default). You can only delete a DB cluster if its `DeletionProtection`
field is set to `false`.

### Usage

    neptune_create_db_cluster(AvailabilityZones, BackupRetentionPeriod,
      CharacterSetName, CopyTagsToSnapshot, DatabaseName, DBClusterIdentifier,
      DBClusterParameterGroupName, VpcSecurityGroupIds, DBSubnetGroupName,
      Engine, EngineVersion, Port, MasterUsername, MasterUserPassword,
      OptionGroupName, PreferredBackupWindow, PreferredMaintenanceWindow,
      ReplicationSourceIdentifier, Tags, StorageEncrypted, KmsKeyId,
      PreSignedUrl, EnableIAMDatabaseAuthentication,
      EnableCloudwatchLogsExports, DeletionProtection,
      ServerlessV2ScalingConfiguration, GlobalClusterIdentifier)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="neptune_create_db_cluster_:_AvailabilityZones">AvailabilityZones</code></td>
<td><p>A list of EC2 Availability Zones that instances in the DB cluster
can be created in.</p></td>
</tr>
<tr class="even">
<td><code
id="neptune_create_db_cluster_:_BackupRetentionPeriod">BackupRetentionPeriod</code></td>
<td><p>The number of days for which automated backups are retained. You
must specify a minimum value of 1.</p>
<p>Default: 1</p>
<p>Constraints:</p>
<ul>
<li><p>Must be a value from 1 to 35</p></li>
</ul></td>
</tr>
<tr class="odd">
<td><code
id="neptune_create_db_cluster_:_CharacterSetName">CharacterSetName</code></td>
<td><p><em>(Not supported by Neptune)</em></p></td>
</tr>
<tr class="even">
<td><code
id="neptune_create_db_cluster_:_CopyTagsToSnapshot">CopyTagsToSnapshot</code></td>
<td><p><em>If set to true, tags are copied to any snapshot of the DB
cluster that is created.</em></p></td>
</tr>
<tr class="odd">
<td><code
id="neptune_create_db_cluster_:_DatabaseName">DatabaseName</code></td>
<td><p>The name for your database of up to 64 alpha-numeric characters.
If you do not provide a name, Amazon Neptune will not create a database
in the DB cluster you are creating.</p></td>
</tr>
<tr class="even">
<td><code
id="neptune_create_db_cluster_:_DBClusterIdentifier">DBClusterIdentifier</code></td>
<td><p>[required] The DB cluster identifier. This parameter is stored as
a lowercase string.</p>
<p>Constraints:</p>
<ul>
<li><p>Must contain from 1 to 63 letters, numbers, or hyphens.</p></li>
<li><p>First character must be a letter.</p></li>
<li><p>Cannot end with a hyphen or contain two consecutive
hyphens.</p></li>
</ul>
<p>Example: <code>my-cluster1</code></p></td>
</tr>
<tr class="odd">
<td><code
id="neptune_create_db_cluster_:_DBClusterParameterGroupName">DBClusterParameterGroupName</code></td>
<td><p>The name of the DB cluster parameter group to associate with this
DB cluster. If this argument is omitted, the default is used.</p>
<p>Constraints:</p>
<ul>
<li><p>If supplied, must match the name of an existing
DBClusterParameterGroup.</p></li>
</ul></td>
</tr>
<tr class="even">
<td><code
id="neptune_create_db_cluster_:_VpcSecurityGroupIds">VpcSecurityGroupIds</code></td>
<td><p>A list of EC2 VPC security groups to associate with this DB
cluster.</p></td>
</tr>
<tr class="odd">
<td><code
id="neptune_create_db_cluster_:_DBSubnetGroupName">DBSubnetGroupName</code></td>
<td><p>A DB subnet group to associate with this DB cluster.</p>
<p>Constraints: Must match the name of an existing DBSubnetGroup. Must
not be default.</p>
<p>Example: <code>mySubnetgroup</code></p></td>
</tr>
<tr class="even">
<td><code id="neptune_create_db_cluster_:_Engine">Engine</code></td>
<td><p>[required] The name of the database engine to be used for this DB
cluster.</p>
<p>Valid Values: <code>neptune</code></p></td>
</tr>
<tr class="odd">
<td><code
id="neptune_create_db_cluster_:_EngineVersion">EngineVersion</code></td>
<td><p>The version number of the database engine to use for the new DB
cluster.</p>
<p>Example: <code style="white-space: pre;">⁠1.0.2.1⁠</code></p></td>
</tr>
<tr class="even">
<td><code id="neptune_create_db_cluster_:_Port">Port</code></td>
<td><p>The port number on which the instances in the DB cluster accept
connections.</p>
<p>Default: <code>8182</code></p></td>
</tr>
<tr class="odd">
<td><code
id="neptune_create_db_cluster_:_MasterUsername">MasterUsername</code></td>
<td><p>Not supported by Neptune.</p></td>
</tr>
<tr class="even">
<td><code
id="neptune_create_db_cluster_:_MasterUserPassword">MasterUserPassword</code></td>
<td><p>Not supported by Neptune.</p></td>
</tr>
<tr class="odd">
<td><code
id="neptune_create_db_cluster_:_OptionGroupName">OptionGroupName</code></td>
<td><p><em>(Not supported by Neptune)</em></p></td>
</tr>
<tr class="even">
<td><code
id="neptune_create_db_cluster_:_PreferredBackupWindow">PreferredBackupWindow</code></td>
<td><p>The daily time range during which automated backups are created
if automated backups are enabled using the
<code>BackupRetentionPeriod</code> parameter.</p>
<p>The default is a 30-minute window selected at random from an 8-hour
block of time for each Amazon Region. To see the time blocks available,
see <a
href="https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/">Adjusting
the Preferred Maintenance Window</a> in the <em>Amazon Neptune User
Guide.</em></p>
<p>Constraints:</p>
<ul>
<li><p>Must be in the format <code>hh24:mi-hh24:mi</code>.</p></li>
<li><p>Must be in Universal Coordinated Time (UTC).</p></li>
<li><p>Must not conflict with the preferred maintenance window.</p></li>
<li><p>Must be at least 30 minutes.</p></li>
</ul></td>
</tr>
<tr class="odd">
<td><code
id="neptune_create_db_cluster_:_PreferredMaintenanceWindow">PreferredMaintenanceWindow</code></td>
<td><p>The weekly time range during which system maintenance can occur,
in Universal Coordinated Time (UTC).</p>
<p>Format: <code>ddd:hh24:mi-ddd:hh24:mi</code></p>
<p>The default is a 30-minute window selected at random from an 8-hour
block of time for each Amazon Region, occurring on a random day of the
week. To see the time blocks available, see <a
href="https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/">Adjusting
the Preferred Maintenance Window</a> in the <em>Amazon Neptune User
Guide.</em></p>
<p>Valid Days: Mon, Tue, Wed, Thu, Fri, Sat, Sun.</p>
<p>Constraints: Minimum 30-minute window.</p></td>
</tr>
<tr class="even">
<td><code
id="neptune_create_db_cluster_:_ReplicationSourceIdentifier">ReplicationSourceIdentifier</code></td>
<td><p>The Amazon Resource Name (ARN) of the source DB instance or DB
cluster if this DB cluster is created as a Read Replica.</p></td>
</tr>
<tr class="odd">
<td><code id="neptune_create_db_cluster_:_Tags">Tags</code></td>
<td><p>The tags to assign to the new DB cluster.</p></td>
</tr>
<tr class="even">
<td><code
id="neptune_create_db_cluster_:_StorageEncrypted">StorageEncrypted</code></td>
<td><p>Specifies whether the DB cluster is encrypted.</p></td>
</tr>
<tr class="odd">
<td><code id="neptune_create_db_cluster_:_KmsKeyId">KmsKeyId</code></td>
<td><p>The Amazon KMS key identifier for an encrypted DB cluster.</p>
<p>The KMS key identifier is the Amazon Resource Name (ARN) for the KMS
encryption key. If you are creating a DB cluster with the same Amazon
account that owns the KMS encryption key used to encrypt the new DB
cluster, then you can use the KMS key alias instead of the ARN for the
KMS encryption key.</p>
<p>If an encryption key is not specified in <code>KmsKeyId</code>:</p>
<ul>
<li><p>If <code>ReplicationSourceIdentifier</code> identifies an
encrypted source, then Amazon Neptune will use the encryption key used
to encrypt the source. Otherwise, Amazon Neptune will use your default
encryption key.</p></li>
<li><p>If the <code>StorageEncrypted</code> parameter is true and
<code>ReplicationSourceIdentifier</code> is not specified, then Amazon
Neptune will use your default encryption key.</p></li>
</ul>
<p>Amazon KMS creates the default encryption key for your Amazon
account. Your Amazon account has a different default encryption key for
each Amazon Region.</p>
<p>If you create a Read Replica of an encrypted DB cluster in another
Amazon Region, you must set <code>KmsKeyId</code> to a KMS key ID that
is valid in the destination Amazon Region. This key is used to encrypt
the Read Replica in that Amazon Region.</p></td>
</tr>
<tr class="even">
<td><code
id="neptune_create_db_cluster_:_PreSignedUrl">PreSignedUrl</code></td>
<td><p>This parameter is not currently supported.</p></td>
</tr>
<tr class="odd">
<td><code
id="neptune_create_db_cluster_:_EnableIAMDatabaseAuthentication">EnableIAMDatabaseAuthentication</code></td>
<td><p>If set to <code>true</code>, enables Amazon Identity and Access
Management (IAM) authentication for the entire DB cluster (this cannot
be set at an instance level).</p>
<p>Default: <code>false</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="neptune_create_db_cluster_:_EnableCloudwatchLogsExports">EnableCloudwatchLogsExports</code></td>
<td><p>The list of log types that need to be enabled for exporting to
CloudWatch Logs.</p></td>
</tr>
<tr class="odd">
<td><code
id="neptune_create_db_cluster_:_DeletionProtection">DeletionProtection</code></td>
<td><p>A value that indicates whether the DB cluster has deletion
protection enabled. The database can't be deleted when deletion
protection is enabled. By default, deletion protection is
enabled.</p></td>
</tr>
<tr class="even">
<td><code
id="neptune_create_db_cluster_:_ServerlessV2ScalingConfiguration">ServerlessV2ScalingConfiguration</code></td>
<td></td>
</tr>
<tr class="odd">
<td><code
id="neptune_create_db_cluster_:_GlobalClusterIdentifier">GlobalClusterIdentifier</code></td>
<td><p>The ID of the Neptune global database to which this new DB
cluster should be added.</p></td>
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
        PercentProgress = "string",
        EarliestRestorableTime = as.POSIXct(
          "2015-01-01"
        ),
        Endpoint = "string",
        ReaderEndpoint = "string",
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
        CopyTagsToSnapshot = TRUE|FALSE,
        EnabledCloudwatchLogsExports = list(
          "string"
        ),
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
          IAMDatabaseAuthenticationEnabled = TRUE|FALSE,
          EngineVersion = "string",
          BackupRetentionPeriod = 123,
          AllocatedStorage = 123,
          Iops = 123
        ),
        DeletionProtection = TRUE|FALSE,
        CrossAccountClone = TRUE|FALSE,
        AutomaticRestartTime = as.POSIXct(
          "2015-01-01"
        ),
        ServerlessV2ScalingConfiguration = list(
          MinCapacity = 123.0,
          MaxCapacity = 123.0
        ),
        GlobalClusterIdentifier = "string"
      )
    )

### Request syntax

    svc$create_db_cluster(
      AvailabilityZones = list(
        "string"
      ),
      BackupRetentionPeriod = 123,
      CharacterSetName = "string",
      CopyTagsToSnapshot = TRUE|FALSE,
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
      EnableCloudwatchLogsExports = list(
        "string"
      ),
      DeletionProtection = TRUE|FALSE,
      ServerlessV2ScalingConfiguration = list(
        MinCapacity = 123.0,
        MaxCapacity = 123.0
      ),
      GlobalClusterIdentifier = "string"
    )
