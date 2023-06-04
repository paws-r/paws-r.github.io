<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>docdb_modify_db_cluster</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Modifies a setting for an Amazon DocumentDB cluster

### Description

Modifies a setting for an Amazon DocumentDB cluster. You can change one
or more database configuration parameters by specifying these parameters
and the new values in the request.

### Usage

    docdb_modify_db_cluster(DBClusterIdentifier, NewDBClusterIdentifier,
      ApplyImmediately, BackupRetentionPeriod, DBClusterParameterGroupName,
      VpcSecurityGroupIds, Port, MasterUserPassword, PreferredBackupWindow,
      PreferredMaintenanceWindow, CloudwatchLogsExportConfiguration,
      EngineVersion, DeletionProtection)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="docdb_modify_db_cluster_:_DBClusterIdentifier">DBClusterIdentifier</code></td>
<td><p>[required] The cluster identifier for the cluster that is being
modified. This parameter is not case sensitive.</p>
<p>Constraints:</p>
<ul>
<li><p>Must match the identifier of an existing
<code>DBCluster</code>.</p></li>
</ul></td>
</tr>
<tr class="even">
<td><code
id="docdb_modify_db_cluster_:_NewDBClusterIdentifier">NewDBClusterIdentifier</code></td>
<td><p>The new cluster identifier for the cluster when renaming a
cluster. This value is stored as a lowercase string.</p>
<p>Constraints:</p>
<ul>
<li><p>Must contain from 1 to 63 letters, numbers, or hyphens.</p></li>
<li><p>The first character must be a letter.</p></li>
<li><p>Cannot end with a hyphen or contain two consecutive
hyphens.</p></li>
</ul>
<p>Example: <code>my-cluster2</code></p></td>
</tr>
<tr class="odd">
<td><code
id="docdb_modify_db_cluster_:_ApplyImmediately">ApplyImmediately</code></td>
<td><p>A value that specifies whether the changes in this request and
any pending changes are asynchronously applied as soon as possible,
regardless of the <code>PreferredMaintenanceWindow</code> setting for
the cluster. If this parameter is set to <code>false</code>, changes to
the cluster are applied during the next maintenance window.</p>
<p>The <code>ApplyImmediately</code> parameter affects only the
<code>NewDBClusterIdentifier</code> and <code>MasterUserPassword</code>
values. If you set this parameter value to <code>false</code>, the
changes to the <code>NewDBClusterIdentifier</code> and
<code>MasterUserPassword</code> values are applied during the next
maintenance window. All other changes are applied immediately,
regardless of the value of the <code>ApplyImmediately</code>
parameter.</p>
<p>Default: <code>false</code></p></td>
</tr>
<tr class="even">
<td><code
id="docdb_modify_db_cluster_:_BackupRetentionPeriod">BackupRetentionPeriod</code></td>
<td><p>The number of days for which automated backups are retained. You
must specify a minimum value of 1.</p>
<p>Default: 1</p>
<p>Constraints:</p>
<ul>
<li><p>Must be a value from 1 to 35.</p></li>
</ul></td>
</tr>
<tr class="odd">
<td><code
id="docdb_modify_db_cluster_:_DBClusterParameterGroupName">DBClusterParameterGroupName</code></td>
<td><p>The name of the cluster parameter group to use for the
cluster.</p></td>
</tr>
<tr class="even">
<td><code
id="docdb_modify_db_cluster_:_VpcSecurityGroupIds">VpcSecurityGroupIds</code></td>
<td><p>A list of virtual private cloud (VPC) security groups that the
cluster will belong to.</p></td>
</tr>
<tr class="odd">
<td><code id="docdb_modify_db_cluster_:_Port">Port</code></td>
<td><p>The port number on which the cluster accepts connections.</p>
<p>Constraints: Must be a value from <code>1150</code> to
<code>65535</code>.</p>
<p>Default: The same port as the original cluster.</p></td>
</tr>
<tr class="even">
<td><code
id="docdb_modify_db_cluster_:_MasterUserPassword">MasterUserPassword</code></td>
<td><p>The password for the master database user. This password can
contain any printable ASCII character except forward slash (/), double
quote ("), or the "at" symbol (@).</p>
<p>Constraints: Must contain from 8 to 100 characters.</p></td>
</tr>
<tr class="odd">
<td><code
id="docdb_modify_db_cluster_:_PreferredBackupWindow">PreferredBackupWindow</code></td>
<td><p>The daily time range during which automated backups are created
if automated backups are enabled, using the
<code>BackupRetentionPeriod</code> parameter.</p>
<p>The default is a 30-minute window selected at random from an 8-hour
block of time for each Amazon Web Services Region.</p>
<p>Constraints:</p>
<ul>
<li><p>Must be in the format <code>hh24:mi-hh24:mi</code>.</p></li>
<li><p>Must be in Universal Coordinated Time (UTC).</p></li>
<li><p>Must not conflict with the preferred maintenance window.</p></li>
<li><p>Must be at least 30 minutes.</p></li>
</ul></td>
</tr>
<tr class="even">
<td><code
id="docdb_modify_db_cluster_:_PreferredMaintenanceWindow">PreferredMaintenanceWindow</code></td>
<td><p>The weekly time range during which system maintenance can occur,
in Universal Coordinated Time (UTC).</p>
<p>Format: <code>ddd:hh24:mi-ddd:hh24:mi</code></p>
<p>The default is a 30-minute window selected at random from an 8-hour
block of time for each Amazon Web Services Region, occurring on a random
day of the week.</p>
<p>Valid days: Mon, Tue, Wed, Thu, Fri, Sat, Sun</p>
<p>Constraints: Minimum 30-minute window.</p></td>
</tr>
<tr class="odd">
<td><code
id="docdb_modify_db_cluster_:_CloudwatchLogsExportConfiguration">CloudwatchLogsExportConfiguration</code></td>
<td><p>The configuration setting for the log types to be enabled for
export to Amazon CloudWatch Logs for a specific instance or cluster. The
<code>EnableLogTypes</code> and <code>DisableLogTypes</code> arrays
determine which logs are exported (or not exported) to CloudWatch
Logs.</p></td>
</tr>
<tr class="even">
<td><code
id="docdb_modify_db_cluster_:_EngineVersion">EngineVersion</code></td>
<td><p>The version number of the database engine to which you want to
upgrade. Modifying engine version is not supported on Amazon
DocumentDB.</p></td>
</tr>
<tr class="odd">
<td><code
id="docdb_modify_db_cluster_:_DeletionProtection">DeletionProtection</code></td>
<td><p>Specifies whether this cluster can be deleted. If
<code>DeletionProtection</code> is enabled, the cluster cannot be
deleted unless it is modified and <code>DeletionProtection</code> is
disabled. <code>DeletionProtection</code> protects clusters from being
accidentally deleted.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      DBCluster = list(
        AvailabilityZones = list(
          "string"
        ),
        BackupRetentionPeriod = 123,
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
            Status = "string"
          )
        ),
        CloneGroupId = "string",
        ClusterCreateTime = as.POSIXct(
          "2015-01-01"
        ),
        EnabledCloudwatchLogsExports = list(
          "string"
        ),
        DeletionProtection = TRUE|FALSE
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
      PreferredBackupWindow = "string",
      PreferredMaintenanceWindow = "string",
      CloudwatchLogsExportConfiguration = list(
        EnableLogTypes = list(
          "string"
        ),
        DisableLogTypes = list(
          "string"
        )
      ),
      EngineVersion = "string",
      DeletionProtection = TRUE|FALSE
    )
