<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>docdb_create_db_cluster</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a new Amazon DocumentDB cluster

### Description

Creates a new Amazon DocumentDB cluster.

### Usage

    docdb_create_db_cluster(AvailabilityZones, BackupRetentionPeriod,
      DBClusterIdentifier, DBClusterParameterGroupName, VpcSecurityGroupIds,
      DBSubnetGroupName, Engine, EngineVersion, Port, MasterUsername,
      MasterUserPassword, PreferredBackupWindow, PreferredMaintenanceWindow,
      Tags, StorageEncrypted, KmsKeyId, PreSignedUrl,
      EnableCloudwatchLogsExports, DeletionProtection,
      GlobalClusterIdentifier)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="docdb_create_db_cluster_:_AvailabilityZones">AvailabilityZones</code></td>
<td><p>A list of Amazon EC2 Availability Zones that instances in the
cluster can be created in.</p></td>
</tr>
<tr class="even">
<td><code
id="docdb_create_db_cluster_:_BackupRetentionPeriod">BackupRetentionPeriod</code></td>
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
id="docdb_create_db_cluster_:_DBClusterIdentifier">DBClusterIdentifier</code></td>
<td><p>[required] The cluster identifier. This parameter is stored as a
lowercase string.</p>
<p>Constraints:</p>
<ul>
<li><p>Must contain from 1 to 63 letters, numbers, or hyphens.</p></li>
<li><p>The first character must be a letter.</p></li>
<li><p>Cannot end with a hyphen or contain two consecutive
hyphens.</p></li>
</ul>
<p>Example: <code>my-cluster</code></p></td>
</tr>
<tr class="even">
<td><code
id="docdb_create_db_cluster_:_DBClusterParameterGroupName">DBClusterParameterGroupName</code></td>
<td><p>The name of the cluster parameter group to associate with this
cluster.</p></td>
</tr>
<tr class="odd">
<td><code
id="docdb_create_db_cluster_:_VpcSecurityGroupIds">VpcSecurityGroupIds</code></td>
<td><p>A list of EC2 VPC security groups to associate with this
cluster.</p></td>
</tr>
<tr class="even">
<td><code
id="docdb_create_db_cluster_:_DBSubnetGroupName">DBSubnetGroupName</code></td>
<td><p>A subnet group to associate with this cluster.</p>
<p>Constraints: Must match the name of an existing
<code>DBSubnetGroup</code>. Must not be default.</p>
<p>Example: <code>mySubnetgroup</code></p></td>
</tr>
<tr class="odd">
<td><code id="docdb_create_db_cluster_:_Engine">Engine</code></td>
<td><p>[required] The name of the database engine to be used for this
cluster.</p>
<p>Valid values: <code>docdb</code></p></td>
</tr>
<tr class="even">
<td><code
id="docdb_create_db_cluster_:_EngineVersion">EngineVersion</code></td>
<td><p>The version number of the database engine to use. The
<code>--engine-version</code> will default to the latest major engine
version. For production workloads, we recommend explicitly declaring
this parameter with the intended major engine version.</p></td>
</tr>
<tr class="odd">
<td><code id="docdb_create_db_cluster_:_Port">Port</code></td>
<td><p>The port number on which the instances in the cluster accept
connections.</p></td>
</tr>
<tr class="even">
<td><code
id="docdb_create_db_cluster_:_MasterUsername">MasterUsername</code></td>
<td><p>The name of the master user for the cluster.</p>
<p>Constraints:</p>
<ul>
<li><p>Must be from 1 to 63 letters or numbers.</p></li>
<li><p>The first character must be a letter.</p></li>
<li><p>Cannot be a reserved word for the chosen database
engine.</p></li>
</ul></td>
</tr>
<tr class="odd">
<td><code
id="docdb_create_db_cluster_:_MasterUserPassword">MasterUserPassword</code></td>
<td><p>The password for the master database user. This password can
contain any printable ASCII character except forward slash (/), double
quote ("), or the "at" symbol (@).</p>
<p>Constraints: Must contain from 8 to 100 characters.</p></td>
</tr>
<tr class="even">
<td><code
id="docdb_create_db_cluster_:_PreferredBackupWindow">PreferredBackupWindow</code></td>
<td><p>The daily time range during which automated backups are created
if automated backups are enabled using the
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
<tr class="odd">
<td><code
id="docdb_create_db_cluster_:_PreferredMaintenanceWindow">PreferredMaintenanceWindow</code></td>
<td><p>The weekly time range during which system maintenance can occur,
in Universal Coordinated Time (UTC).</p>
<p>Format: <code>ddd:hh24:mi-ddd:hh24:mi</code></p>
<p>The default is a 30-minute window selected at random from an 8-hour
block of time for each Amazon Web Services Region, occurring on a random
day of the week.</p>
<p>Valid days: Mon, Tue, Wed, Thu, Fri, Sat, Sun</p>
<p>Constraints: Minimum 30-minute window.</p></td>
</tr>
<tr class="even">
<td><code id="docdb_create_db_cluster_:_Tags">Tags</code></td>
<td><p>The tags to be assigned to the cluster.</p></td>
</tr>
<tr class="odd">
<td><code
id="docdb_create_db_cluster_:_StorageEncrypted">StorageEncrypted</code></td>
<td><p>Specifies whether the cluster is encrypted.</p></td>
</tr>
<tr class="even">
<td><code id="docdb_create_db_cluster_:_KmsKeyId">KmsKeyId</code></td>
<td><p>The KMS key identifier for an encrypted cluster.</p>
<p>The KMS key identifier is the Amazon Resource Name (ARN) for the KMS
encryption key. If you are creating a cluster using the same Amazon Web
Services account that owns the KMS encryption key that is used to
encrypt the new cluster, you can use the KMS key alias instead of the
ARN for the KMS encryption key.</p>
<p>If an encryption key is not specified in <code>KmsKeyId</code>:</p>
<ul>
<li><p>If the <code>StorageEncrypted</code> parameter is
<code>true</code>, Amazon DocumentDB uses your default encryption
key.</p></li>
</ul>
<p>KMS creates the default encryption key for your Amazon Web Services
account. Your Amazon Web Services account has a different default
encryption key for each Amazon Web Services Regions.</p></td>
</tr>
<tr class="odd">
<td><code
id="docdb_create_db_cluster_:_PreSignedUrl">PreSignedUrl</code></td>
<td><p>Not currently supported.</p></td>
</tr>
<tr class="even">
<td><code
id="docdb_create_db_cluster_:_EnableCloudwatchLogsExports">EnableCloudwatchLogsExports</code></td>
<td><p>A list of log types that need to be enabled for exporting to
Amazon CloudWatch Logs. You can enable audit logs or profiler logs. For
more information, see <a
href="https://docs.aws.amazon.com/documentdb/latest/developerguide/event-auditing.html">Auditing
Amazon DocumentDB Events</a> and <a
href="https://docs.aws.amazon.com/documentdb/latest/developerguide/profiling.html">Profiling
Amazon DocumentDB Operations</a>.</p></td>
</tr>
<tr class="odd">
<td><code
id="docdb_create_db_cluster_:_DeletionProtection">DeletionProtection</code></td>
<td><p>Specifies whether this cluster can be deleted. If
<code>DeletionProtection</code> is enabled, the cluster cannot be
deleted unless it is modified and <code>DeletionProtection</code> is
disabled. <code>DeletionProtection</code> protects clusters from being
accidentally deleted.</p></td>
</tr>
<tr class="even">
<td><code
id="docdb_create_db_cluster_:_GlobalClusterIdentifier">GlobalClusterIdentifier</code></td>
<td><p>The cluster identifier of the new global cluster.</p></td>
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

    svc$create_db_cluster(
      AvailabilityZones = list(
        "string"
      ),
      BackupRetentionPeriod = 123,
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
      PreferredBackupWindow = "string",
      PreferredMaintenanceWindow = "string",
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      ),
      StorageEncrypted = TRUE|FALSE,
      KmsKeyId = "string",
      PreSignedUrl = "string",
      EnableCloudwatchLogsExports = list(
        "string"
      ),
      DeletionProtection = TRUE|FALSE,
      GlobalClusterIdentifier = "string"
    )
