<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>neptune_modify_db_cluster</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Modify a setting for a DB cluster

### Description

Modify a setting for a DB cluster. You can change one or more database
configuration parameters by specifying these parameters and the new
values in the request.

### Usage

    neptune_modify_db_cluster(DBClusterIdentifier, NewDBClusterIdentifier,
      ApplyImmediately, BackupRetentionPeriod, DBClusterParameterGroupName,
      VpcSecurityGroupIds, Port, MasterUserPassword, OptionGroupName,
      PreferredBackupWindow, PreferredMaintenanceWindow,
      EnableIAMDatabaseAuthentication, CloudwatchLogsExportConfiguration,
      EngineVersion, AllowMajorVersionUpgrade, DBInstanceParameterGroupName,
      DeletionProtection, CopyTagsToSnapshot,
      ServerlessV2ScalingConfiguration)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="neptune_modify_db_cluster_:_DBClusterIdentifier">DBClusterIdentifier</code></td>
<td><p>[required] The DB cluster identifier for the cluster being
modified. This parameter is not case-sensitive.</p>
<p>Constraints:</p>
<ul>
<li><p>Must match the identifier of an existing DBCluster.</p></li>
</ul></td>
</tr>
<tr class="even">
<td><code
id="neptune_modify_db_cluster_:_NewDBClusterIdentifier">NewDBClusterIdentifier</code></td>
<td><p>The new DB cluster identifier for the DB cluster when renaming a
DB cluster. This value is stored as a lowercase string.</p>
<p>Constraints:</p>
<ul>
<li><p>Must contain from 1 to 63 letters, numbers, or hyphens</p></li>
<li><p>The first character must be a letter</p></li>
<li><p>Cannot end with a hyphen or contain two consecutive
hyphens</p></li>
</ul>
<p>Example: <code>my-cluster2</code></p></td>
</tr>
<tr class="odd">
<td><code
id="neptune_modify_db_cluster_:_ApplyImmediately">ApplyImmediately</code></td>
<td><p>A value that specifies whether the modifications in this request
and any pending modifications are asynchronously applied as soon as
possible, regardless of the <code>PreferredMaintenanceWindow</code>
setting for the DB cluster. If this parameter is set to
<code>false</code>, changes to the DB cluster are applied during the
next maintenance window.</p>
<p>The <code>ApplyImmediately</code> parameter only affects
<code>NewDBClusterIdentifier</code> values. If you set the
<code>ApplyImmediately</code> parameter value to false, then changes to
<code>NewDBClusterIdentifier</code> values are applied during the next
maintenance window. All other changes are applied immediately,
regardless of the value of the <code>ApplyImmediately</code>
parameter.</p>
<p>Default: <code>false</code></p></td>
</tr>
<tr class="even">
<td><code
id="neptune_modify_db_cluster_:_BackupRetentionPeriod">BackupRetentionPeriod</code></td>
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
id="neptune_modify_db_cluster_:_DBClusterParameterGroupName">DBClusterParameterGroupName</code></td>
<td><p>The name of the DB cluster parameter group to use for the DB
cluster.</p></td>
</tr>
<tr class="even">
<td><code
id="neptune_modify_db_cluster_:_VpcSecurityGroupIds">VpcSecurityGroupIds</code></td>
<td><p>A list of VPC security groups that the DB cluster will belong
to.</p></td>
</tr>
<tr class="odd">
<td><code id="neptune_modify_db_cluster_:_Port">Port</code></td>
<td><p>The port number on which the DB cluster accepts connections.</p>
<p>Constraints: Value must be <code>1150-65535</code></p>
<p>Default: The same port as the original DB cluster.</p></td>
</tr>
<tr class="even">
<td><code
id="neptune_modify_db_cluster_:_MasterUserPassword">MasterUserPassword</code></td>
<td><p>Not supported by Neptune.</p></td>
</tr>
<tr class="odd">
<td><code
id="neptune_modify_db_cluster_:_OptionGroupName">OptionGroupName</code></td>
<td><p><em>Not supported by Neptune.</em></p></td>
</tr>
<tr class="even">
<td><code
id="neptune_modify_db_cluster_:_PreferredBackupWindow">PreferredBackupWindow</code></td>
<td><p>The daily time range during which automated backups are created
if automated backups are enabled, using the
<code>BackupRetentionPeriod</code> parameter.</p>
<p>The default is a 30-minute window selected at random from an 8-hour
block of time for each Amazon Region.</p>
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
id="neptune_modify_db_cluster_:_PreferredMaintenanceWindow">PreferredMaintenanceWindow</code></td>
<td><p>The weekly time range during which system maintenance can occur,
in Universal Coordinated Time (UTC).</p>
<p>Format: <code>ddd:hh24:mi-ddd:hh24:mi</code></p>
<p>The default is a 30-minute window selected at random from an 8-hour
block of time for each Amazon Region, occurring on a random day of the
week.</p>
<p>Valid Days: Mon, Tue, Wed, Thu, Fri, Sat, Sun.</p>
<p>Constraints: Minimum 30-minute window.</p></td>
</tr>
<tr class="even">
<td><code
id="neptune_modify_db_cluster_:_EnableIAMDatabaseAuthentication">EnableIAMDatabaseAuthentication</code></td>
<td><p>True to enable mapping of Amazon Identity and Access Management
(IAM) accounts to database accounts, and otherwise false.</p>
<p>Default: <code>false</code></p></td>
</tr>
<tr class="odd">
<td><code
id="neptune_modify_db_cluster_:_CloudwatchLogsExportConfiguration">CloudwatchLogsExportConfiguration</code></td>
<td><p>The configuration setting for the log types to be enabled for
export to CloudWatch Logs for a specific DB cluster.</p></td>
</tr>
<tr class="even">
<td><code
id="neptune_modify_db_cluster_:_EngineVersion">EngineVersion</code></td>
<td><p>The version number of the database engine to which you want to
upgrade. Changing this parameter results in an outage. The change is
applied during the next maintenance window unless the
<code>ApplyImmediately</code> parameter is set to true.</p>
<p>For a list of valid engine versions, see <a
href="https://docs.aws.amazon.com/neptune/latest/userguide/engine-releases.html">Engine
Releases for Amazon Neptune</a>, or call
<code>describe_db_engine_versions</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="neptune_modify_db_cluster_:_AllowMajorVersionUpgrade">AllowMajorVersionUpgrade</code></td>
<td><p>A value that indicates whether upgrades between different major
versions are allowed.</p>
<p>Constraints: You must set the allow-major-version-upgrade flag when
providing an <code>EngineVersion</code> parameter that uses a different
major version than the DB cluster's current version.</p></td>
</tr>
<tr class="even">
<td><code
id="neptune_modify_db_cluster_:_DBInstanceParameterGroupName">DBInstanceParameterGroupName</code></td>
<td><p>The name of the DB parameter group to apply to all instances of
the DB cluster.</p>
<p>When you apply a parameter group using
<code>DBInstanceParameterGroupName</code>, parameter changes aren't
applied during the next maintenance window but instead are applied
immediately.</p>
<p>Default: The existing name setting</p>
<p>Constraints:</p>
<ul>
<li><p>The DB parameter group must be in the same DB parameter group
family as the target DB cluster version.</p></li>
<li><p>The <code>DBInstanceParameterGroupName</code> parameter is only
valid in combination with the <code>AllowMajorVersionUpgrade</code>
parameter.</p></li>
</ul></td>
</tr>
<tr class="odd">
<td><code
id="neptune_modify_db_cluster_:_DeletionProtection">DeletionProtection</code></td>
<td><p>A value that indicates whether the DB cluster has deletion
protection enabled. The database can't be deleted when deletion
protection is enabled. By default, deletion protection is
disabled.</p></td>
</tr>
<tr class="even">
<td><code
id="neptune_modify_db_cluster_:_CopyTagsToSnapshot">CopyTagsToSnapshot</code></td>
<td><p><em>If set to true, tags are copied to any snapshot of the DB
cluster that is created.</em></p></td>
</tr>
<tr class="odd">
<td><code
id="neptune_modify_db_cluster_:_ServerlessV2ScalingConfiguration">ServerlessV2ScalingConfiguration</code></td>
<td></td>
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
      DeletionProtection = TRUE|FALSE,
      CopyTagsToSnapshot = TRUE|FALSE,
      ServerlessV2ScalingConfiguration = list(
        MinCapacity = 123.0,
        MaxCapacity = 123.0
      )
    )
