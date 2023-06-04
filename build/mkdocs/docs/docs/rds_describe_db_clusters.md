<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>rds_describe_db_clusters</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns information about Amazon Aurora DB clusters and Multi-AZ DB clusters

### Description

Returns information about Amazon Aurora DB clusters and Multi-AZ DB
clusters. This API supports pagination.

For more information on Amazon Aurora DB clusters, see [What is Amazon
Aurora?](https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/CHAP_AuroraOverview.html)
in the *Amazon Aurora User Guide*.

For more information on Multi-AZ DB clusters, see [Multi-AZ DB cluster
deployments](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/multi-az-db-clusters-concepts.html)
in the *Amazon RDS User Guide*.

This operation can also return information for Amazon Neptune DB
instances and Amazon DocumentDB instances.

### Usage

    rds_describe_db_clusters(DBClusterIdentifier, Filters, MaxRecords,
      Marker, IncludeShared)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="rds_describe_db_clusters_:_DBClusterIdentifier">DBClusterIdentifier</code></td>
<td><p>The user-supplied DB cluster identifier or the Amazon Resource
Name (ARN) of the DB cluster. If this parameter is specified,
information from only the specific DB cluster is returned. This
parameter isn't case-sensitive.</p>
<p>Constraints:</p>
<ul>
<li><p>If supplied, must match an existing DBClusterIdentifier.</p></li>
</ul></td>
</tr>
<tr class="even">
<td><code id="rds_describe_db_clusters_:_Filters">Filters</code></td>
<td><p>A filter that specifies one or more DB clusters to describe.</p>
<p>Supported filters:</p>
<ul>
<li><p><code>clone-group-id</code> - Accepts clone group identifiers.
The results list only includes information about the DB clusters
associated with these clone groups.</p></li>
<li><p><code>db-cluster-id</code> - Accepts DB cluster identifiers and
DB cluster Amazon Resource Names (ARNs). The results list only includes
information about the DB clusters identified by these ARNs.</p></li>
<li><p><code>db-cluster-resource-id</code> - Accepts DB cluster resource
identifiers. The results list will only include information about the DB
clusters identified by these DB cluster resource identifiers.</p></li>
<li><p><code>domain</code> - Accepts Active Directory directory IDs. The
results list only includes information about the DB clusters associated
with these domains.</p></li>
<li><p><code>engine</code> - Accepts engine names. The results list only
includes information about the DB clusters for these engines.</p></li>
</ul></td>
</tr>
<tr class="odd">
<td><code
id="rds_describe_db_clusters_:_MaxRecords">MaxRecords</code></td>
<td><p>The maximum number of records to include in the response. If more
records exist than the specified <code>MaxRecords</code> value, a
pagination token called a marker is included in the response so you can
retrieve the remaining results.</p>
<p>Default: 100</p>
<p>Constraints: Minimum 20, maximum 100.</p></td>
</tr>
<tr class="even">
<td><code id="rds_describe_db_clusters_:_Marker">Marker</code></td>
<td><p>An optional pagination token provided by a previous
<code>describe_db_clusters</code> request. If this parameter is
specified, the response includes only records beyond the marker, up to
the value specified by <code>MaxRecords</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="rds_describe_db_clusters_:_IncludeShared">IncludeShared</code></td>
<td><p>Optional Boolean parameter that specifies whether the output
includes information about clusters shared from other Amazon Web
Services accounts.</p></td>
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
          AutomaticRestartTime = as.POSIXct(
            "2015-01-01"
          ),
          PercentProgress = "string",
          EarliestRestorableTime = as.POSIXct(
            "2015-01-01"
          ),
          Endpoint = "string",
          ReaderEndpoint = "string",
          CustomEndpoints = list(
            "string"
          ),
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
          EarliestBacktrackTime = as.POSIXct(
            "2015-01-01"
          ),
          BacktrackWindow = 123,
          BacktrackConsumedChangeRecords = 123,
          EnabledCloudwatchLogsExports = list(
            "string"
          ),
          Capacity = 123,
          EngineMode = "string",
          ScalingConfigurationInfo = list(
            MinCapacity = 123,
            MaxCapacity = 123,
            AutoPause = TRUE|FALSE,
            SecondsUntilAutoPause = 123,
            TimeoutAction = "string",
            SecondsBeforeTimeout = 123
          ),
          DeletionProtection = TRUE|FALSE,
          HttpEndpointEnabled = TRUE|FALSE,
          ActivityStreamMode = "sync"|"async",
          ActivityStreamStatus = "stopped"|"starting"|"started"|"stopping",
          ActivityStreamKmsKeyId = "string",
          ActivityStreamKinesisStreamName = "string",
          CopyTagsToSnapshot = TRUE|FALSE,
          CrossAccountClone = TRUE|FALSE,
          DomainMemberships = list(
            list(
              Domain = "string",
              Status = "string",
              FQDN = "string",
              IAMRoleName = "string"
            )
          ),
          TagList = list(
            list(
              Key = "string",
              Value = "string"
            )
          ),
          GlobalWriteForwardingStatus = "enabled"|"disabled"|"enabling"|"disabling"|"unknown",
          GlobalWriteForwardingRequested = TRUE|FALSE,
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
            MasterUserPassword = "string",
            IAMDatabaseAuthenticationEnabled = TRUE|FALSE,
            EngineVersion = "string",
            BackupRetentionPeriod = 123,
            AllocatedStorage = 123,
            Iops = 123,
            StorageType = "string"
          ),
          DBClusterInstanceClass = "string",
          StorageType = "string",
          Iops = 123,
          PubliclyAccessible = TRUE|FALSE,
          AutoMinorVersionUpgrade = TRUE|FALSE,
          MonitoringInterval = 123,
          MonitoringRoleArn = "string",
          PerformanceInsightsEnabled = TRUE|FALSE,
          PerformanceInsightsKMSKeyId = "string",
          PerformanceInsightsRetentionPeriod = 123,
          ServerlessV2ScalingConfiguration = list(
            MinCapacity = 123.0,
            MaxCapacity = 123.0
          ),
          NetworkType = "string",
          DBSystemId = "string",
          MasterUserSecret = list(
            SecretArn = "string",
            SecretStatus = "string",
            KmsKeyId = "string"
          ),
          IOOptimizedNextAllowedModificationTime = as.POSIXct(
            "2015-01-01"
          )
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
      Marker = "string",
      IncludeShared = TRUE|FALSE
    )
