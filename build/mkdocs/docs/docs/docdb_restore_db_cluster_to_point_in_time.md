<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>docdb_restore_db_cluster_to_point_in_time</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Restores a cluster to an arbitrary point in time

### Description

Restores a cluster to an arbitrary point in time. Users can restore to
any point in time before `LatestRestorableTime` for up to
`BackupRetentionPeriod` days. The target cluster is created from the
source cluster with the same configuration as the original cluster,
except that the new cluster is created with the default security group.

### Usage

    docdb_restore_db_cluster_to_point_in_time(DBClusterIdentifier,
      RestoreType, SourceDBClusterIdentifier, RestoreToTime,
      UseLatestRestorableTime, Port, DBSubnetGroupName, VpcSecurityGroupIds,
      Tags, KmsKeyId, EnableCloudwatchLogsExports, DeletionProtection)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="docdb_restore_db_cluster_to_point_in_time_:_DBClusterIdentifier">DBClusterIdentifier</code></td>
<td><p>[required] The name of the new cluster to be created.</p>
<p>Constraints:</p>
<ul>
<li><p>Must contain from 1 to 63 letters, numbers, or hyphens.</p></li>
<li><p>The first character must be a letter.</p></li>
<li><p>Cannot end with a hyphen or contain two consecutive
hyphens.</p></li>
</ul></td>
</tr>
<tr class="even">
<td><code
id="docdb_restore_db_cluster_to_point_in_time_:_RestoreType">RestoreType</code></td>
<td><p>The type of restore to be performed. You can specify one of the
following values:</p>
<ul>
<li><p><code>full-copy</code> - The new DB cluster is restored as a full
copy of the source DB cluster.</p></li>
<li><p><code>copy-on-write</code> - The new DB cluster is restored as a
clone of the source DB cluster.</p></li>
</ul>
<p>Constraints: You can't specify <code>copy-on-write</code> if the
engine version of the source DB cluster is earlier than 1.11.</p>
<p>If you don't specify a <code>RestoreType</code> value, then the new
DB cluster is restored as a full copy of the source DB cluster.</p></td>
</tr>
<tr class="odd">
<td><code
id="docdb_restore_db_cluster_to_point_in_time_:_SourceDBClusterIdentifier">SourceDBClusterIdentifier</code></td>
<td><p>[required] The identifier of the source cluster from which to
restore.</p>
<p>Constraints:</p>
<ul>
<li><p>Must match the identifier of an existing
<code>DBCluster</code>.</p></li>
</ul></td>
</tr>
<tr class="even">
<td><code
id="docdb_restore_db_cluster_to_point_in_time_:_RestoreToTime">RestoreToTime</code></td>
<td><p>The date and time to restore the cluster to.</p>
<p>Valid values: A time in Universal Coordinated Time (UTC) format.</p>
<p>Constraints:</p>
<ul>
<li><p>Must be before the latest restorable time for the
instance.</p></li>
<li><p>Must be specified if the <code>UseLatestRestorableTime</code>
parameter is not provided.</p></li>
<li><p>Cannot be specified if the <code>UseLatestRestorableTime</code>
parameter is <code>true</code>.</p></li>
<li><p>Cannot be specified if the <code>RestoreType</code> parameter is
<code>copy-on-write</code>.</p></li>
</ul>
<p>Example: <code
style="white-space: pre;">⁠2015-03-07T23:45:00Z⁠</code></p></td>
</tr>
<tr class="odd">
<td><code
id="docdb_restore_db_cluster_to_point_in_time_:_UseLatestRestorableTime">UseLatestRestorableTime</code></td>
<td><p>A value that is set to <code>true</code> to restore the cluster
to the latest restorable backup time, and <code>false</code>
otherwise.</p>
<p>Default: <code>false</code></p>
<p>Constraints: Cannot be specified if the <code>RestoreToTime</code>
parameter is provided.</p></td>
</tr>
<tr class="even">
<td><code
id="docdb_restore_db_cluster_to_point_in_time_:_Port">Port</code></td>
<td><p>The port number on which the new cluster accepts connections.</p>
<p>Constraints: Must be a value from <code>1150</code> to
<code>65535</code>.</p>
<p>Default: The default port for the engine.</p></td>
</tr>
<tr class="odd">
<td><code
id="docdb_restore_db_cluster_to_point_in_time_:_DBSubnetGroupName">DBSubnetGroupName</code></td>
<td><p>The subnet group name to use for the new cluster.</p>
<p>Constraints: If provided, must match the name of an existing
<code>DBSubnetGroup</code>.</p>
<p>Example: <code>mySubnetgroup</code></p></td>
</tr>
<tr class="even">
<td><code
id="docdb_restore_db_cluster_to_point_in_time_:_VpcSecurityGroupIds">VpcSecurityGroupIds</code></td>
<td><p>A list of VPC security groups that the new cluster belongs
to.</p></td>
</tr>
<tr class="odd">
<td><code
id="docdb_restore_db_cluster_to_point_in_time_:_Tags">Tags</code></td>
<td><p>The tags to be assigned to the restored cluster.</p></td>
</tr>
<tr class="even">
<td><code
id="docdb_restore_db_cluster_to_point_in_time_:_KmsKeyId">KmsKeyId</code></td>
<td><p>The KMS key identifier to use when restoring an encrypted cluster
from an encrypted cluster.</p>
<p>The KMS key identifier is the Amazon Resource Name (ARN) for the KMS
encryption key. If you are restoring a cluster with the same Amazon Web
Services account that owns the KMS encryption key used to encrypt the
new cluster, then you can use the KMS key alias instead of the ARN for
the KMS encryption key.</p>
<p>You can restore to a new cluster and encrypt the new cluster with an
KMS key that is different from the KMS key used to encrypt the source
cluster. The new DB cluster is encrypted with the KMS key identified by
the <code>KmsKeyId</code> parameter.</p>
<p>If you do not specify a value for the <code>KmsKeyId</code>
parameter, then the following occurs:</p>
<ul>
<li><p>If the cluster is encrypted, then the restored cluster is
encrypted using the KMS key that was used to encrypt the source
cluster.</p></li>
<li><p>If the cluster is not encrypted, then the restored cluster is not
encrypted.</p></li>
</ul>
<p>If <code>DBClusterIdentifier</code> refers to a cluster that is not
encrypted, then the restore request is rejected.</p></td>
</tr>
<tr class="odd">
<td><code
id="docdb_restore_db_cluster_to_point_in_time_:_EnableCloudwatchLogsExports">EnableCloudwatchLogsExports</code></td>
<td><p>A list of log types that must be enabled for exporting to Amazon
CloudWatch Logs.</p></td>
</tr>
<tr class="even">
<td><code
id="docdb_restore_db_cluster_to_point_in_time_:_DeletionProtection">DeletionProtection</code></td>
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

    svc$restore_db_cluster_to_point_in_time(
      DBClusterIdentifier = "string",
      RestoreType = "string",
      SourceDBClusterIdentifier = "string",
      RestoreToTime = as.POSIXct(
        "2015-01-01"
      ),
      UseLatestRestorableTime = TRUE|FALSE,
      Port = 123,
      DBSubnetGroupName = "string",
      VpcSecurityGroupIds = list(
        "string"
      ),
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      ),
      KmsKeyId = "string",
      EnableCloudwatchLogsExports = list(
        "string"
      ),
      DeletionProtection = TRUE|FALSE
    )
