<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>neptune_describe_db_clusters</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns information about provisioned DB clusters, and supports pagination

### Description

Returns information about provisioned DB clusters, and supports
pagination.

This operation can also return information for Amazon RDS clusters and
Amazon DocDB clusters.

### Usage

    neptune_describe_db_clusters(DBClusterIdentifier, Filters, MaxRecords,
      Marker)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="neptune_describe_db_clusters_:_DBClusterIdentifier">DBClusterIdentifier</code></td>
<td><p>The user-supplied DB cluster identifier. If this parameter is
specified, information from only the specific DB cluster is returned.
This parameter isn't case-sensitive.</p>
<p>Constraints:</p>
<ul>
<li><p>If supplied, must match an existing DBClusterIdentifier.</p></li>
</ul></td>
</tr>
<tr class="even">
<td><code
id="neptune_describe_db_clusters_:_Filters">Filters</code></td>
<td><p>A filter that specifies one or more DB clusters to describe.</p>
<p>Supported filters:</p>
<ul>
<li><p><code>db-cluster-id</code> - Accepts DB cluster identifiers and
DB cluster Amazon Resource Names (ARNs). The results list will only
include information about the DB clusters identified by these
ARNs.</p></li>
<li><p><code>engine</code> - Accepts an engine name (such as
<code>neptune</code>), and restricts the results list to DB clusters
created by that engine.</p></li>
</ul>
<p>For example, to invoke this API from the Amazon CLI and filter so
that only Neptune DB clusters are returned, you could use the following
command:</p></td>
</tr>
<tr class="odd">
<td><code
id="neptune_describe_db_clusters_:_MaxRecords">MaxRecords</code></td>
<td><p>The maximum number of records to include in the response. If more
records exist than the specified <code>MaxRecords</code> value, a
pagination token called a marker is included in the response so that the
remaining results can be retrieved.</p>
<p>Default: 100</p>
<p>Constraints: Minimum 20, maximum 100.</p></td>
</tr>
<tr class="even">
<td><code id="neptune_describe_db_clusters_:_Marker">Marker</code></td>
<td><p>An optional pagination token provided by a previous
<code>describe_db_clusters</code> request. If this parameter is
specified, the response includes only records beyond the marker, up to
the value specified by <code>MaxRecords</code>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Marker = "string",
      DBClusters = list(
        list(
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
    )

### Request syntax

    svc$describe_db_clusters(
      DBClusterIdentifier = "string",
      Filters = list(
        list(
          Name = "string",
          Values = list(
            "string"
          )
        )
      ),
      MaxRecords = 123,
      Marker = "string"
    )
