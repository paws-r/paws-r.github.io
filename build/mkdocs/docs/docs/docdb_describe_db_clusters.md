<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>docdb_describe_db_clusters</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns information about provisioned Amazon DocumentDB clusters

### Description

Returns information about provisioned Amazon DocumentDB clusters. This
API operation supports pagination. For certain management features such
as cluster and instance lifecycle management, Amazon DocumentDB
leverages operational technology that is shared with Amazon RDS and
Amazon Neptune. Use the `⁠filterName=engine,Values=docdb⁠` filter
parameter to return only Amazon DocumentDB clusters.

### Usage

    docdb_describe_db_clusters(DBClusterIdentifier, Filters, MaxRecords,
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
id="docdb_describe_db_clusters_:_DBClusterIdentifier">DBClusterIdentifier</code></td>
<td><p>The user-provided cluster identifier. If this parameter is
specified, information from only the specific cluster is returned. This
parameter isn't case sensitive.</p>
<p>Constraints:</p>
<ul>
<li><p>If provided, must match an existing
<code>DBClusterIdentifier</code>.</p></li>
</ul></td>
</tr>
<tr class="even">
<td><code id="docdb_describe_db_clusters_:_Filters">Filters</code></td>
<td><p>A filter that specifies one or more clusters to describe.</p>
<p>Supported filters:</p>
<ul>
<li><p><code>db-cluster-id</code> - Accepts cluster identifiers and
cluster Amazon Resource Names (ARNs). The results list only includes
information about the clusters identified by these ARNs.</p></li>
</ul></td>
</tr>
<tr class="odd">
<td><code
id="docdb_describe_db_clusters_:_MaxRecords">MaxRecords</code></td>
<td><p>The maximum number of records to include in the response. If more
records exist than the specified <code>MaxRecords</code> value, a
pagination token (marker) is included in the response so that the
remaining results can be retrieved.</p>
<p>Default: 100</p>
<p>Constraints: Minimum 20, maximum 100.</p></td>
</tr>
<tr class="even">
<td><code id="docdb_describe_db_clusters_:_Marker">Marker</code></td>
<td><p>An optional pagination token provided by a previous request. If
this parameter is specified, the response includes only records beyond
the marker, up to the value specified by
<code>MaxRecords</code>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Marker = "string",
      DBClusters = list(
        list(
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
