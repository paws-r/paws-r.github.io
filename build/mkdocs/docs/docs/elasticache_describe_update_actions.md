<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>elasticache_describe_update_actions</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns details of the update actions

### Description

Returns details of the update actions

### Usage

    elasticache_describe_update_actions(ServiceUpdateName,
      ReplicationGroupIds, CacheClusterIds, Engine, ServiceUpdateStatus,
      ServiceUpdateTimeRange, UpdateActionStatus, ShowNodeLevelUpdateStatus,
      MaxRecords, Marker)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="elasticache_describe_update_actions_:_ServiceUpdateName">ServiceUpdateName</code></td>
<td><p>The unique ID of the service update</p></td>
</tr>
<tr class="even">
<td><code
id="elasticache_describe_update_actions_:_ReplicationGroupIds">ReplicationGroupIds</code></td>
<td><p>The replication group IDs</p></td>
</tr>
<tr class="odd">
<td><code
id="elasticache_describe_update_actions_:_CacheClusterIds">CacheClusterIds</code></td>
<td><p>The cache cluster IDs</p></td>
</tr>
<tr class="even">
<td><code
id="elasticache_describe_update_actions_:_Engine">Engine</code></td>
<td><p>The Elasticache engine to which the update applies. Either Redis
or Memcached</p></td>
</tr>
<tr class="odd">
<td><code
id="elasticache_describe_update_actions_:_ServiceUpdateStatus">ServiceUpdateStatus</code></td>
<td><p>The status of the service update</p></td>
</tr>
<tr class="even">
<td><code
id="elasticache_describe_update_actions_:_ServiceUpdateTimeRange">ServiceUpdateTimeRange</code></td>
<td><p>The range of time specified to search for service updates that
are in available status</p></td>
</tr>
<tr class="odd">
<td><code
id="elasticache_describe_update_actions_:_UpdateActionStatus">UpdateActionStatus</code></td>
<td><p>The status of the update action.</p></td>
</tr>
<tr class="even">
<td><code
id="elasticache_describe_update_actions_:_ShowNodeLevelUpdateStatus">ShowNodeLevelUpdateStatus</code></td>
<td><p>Dictates whether to include node level update status in the
response</p></td>
</tr>
<tr class="odd">
<td><code
id="elasticache_describe_update_actions_:_MaxRecords">MaxRecords</code></td>
<td><p>The maximum number of records to include in the response</p></td>
</tr>
<tr class="even">
<td><code
id="elasticache_describe_update_actions_:_Marker">Marker</code></td>
<td><p>An optional marker returned from a prior request. Use this marker
for pagination of results from this operation. If this parameter is
specified, the response includes only records beyond the marker, up to
the value specified by <code>MaxRecords</code>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Marker = "string",
      UpdateActions = list(
        list(
          ReplicationGroupId = "string",
          CacheClusterId = "string",
          ServiceUpdateName = "string",
          ServiceUpdateReleaseDate = as.POSIXct(
            "2015-01-01"
          ),
          ServiceUpdateSeverity = "critical"|"important"|"medium"|"low",
          ServiceUpdateStatus = "available"|"cancelled"|"expired",
          ServiceUpdateRecommendedApplyByDate = as.POSIXct(
            "2015-01-01"
          ),
          ServiceUpdateType = "security-update",
          UpdateActionAvailableDate = as.POSIXct(
            "2015-01-01"
          ),
          UpdateActionStatus = "not-applied"|"waiting-to-start"|"in-progress"|"stopping"|"stopped"|"complete"|"scheduling"|"scheduled"|"not-applicable",
          NodesUpdated = "string",
          UpdateActionStatusModifiedDate = as.POSIXct(
            "2015-01-01"
          ),
          SlaMet = "yes"|"no"|"n/a",
          NodeGroupUpdateStatus = list(
            list(
              NodeGroupId = "string",
              NodeGroupMemberUpdateStatus = list(
                list(
                  CacheClusterId = "string",
                  CacheNodeId = "string",
                  NodeUpdateStatus = "not-applied"|"waiting-to-start"|"in-progress"|"stopping"|"stopped"|"complete",
                  NodeDeletionDate = as.POSIXct(
                    "2015-01-01"
                  ),
                  NodeUpdateStartDate = as.POSIXct(
                    "2015-01-01"
                  ),
                  NodeUpdateEndDate = as.POSIXct(
                    "2015-01-01"
                  ),
                  NodeUpdateInitiatedBy = "system"|"customer",
                  NodeUpdateInitiatedDate = as.POSIXct(
                    "2015-01-01"
                  ),
                  NodeUpdateStatusModifiedDate = as.POSIXct(
                    "2015-01-01"
                  )
                )
              )
            )
          ),
          CacheNodeUpdateStatus = list(
            list(
              CacheNodeId = "string",
              NodeUpdateStatus = "not-applied"|"waiting-to-start"|"in-progress"|"stopping"|"stopped"|"complete",
              NodeDeletionDate = as.POSIXct(
                "2015-01-01"
              ),
              NodeUpdateStartDate = as.POSIXct(
                "2015-01-01"
              ),
              NodeUpdateEndDate = as.POSIXct(
                "2015-01-01"
              ),
              NodeUpdateInitiatedBy = "system"|"customer",
              NodeUpdateInitiatedDate = as.POSIXct(
                "2015-01-01"
              ),
              NodeUpdateStatusModifiedDate = as.POSIXct(
                "2015-01-01"
              )
            )
          ),
          EstimatedUpdateTime = "string",
          Engine = "string"
        )
      )
    )

### Request syntax

    svc$describe_update_actions(
      ServiceUpdateName = "string",
      ReplicationGroupIds = list(
        "string"
      ),
      CacheClusterIds = list(
        "string"
      ),
      Engine = "string",
      ServiceUpdateStatus = list(
        "available"|"cancelled"|"expired"
      ),
      ServiceUpdateTimeRange = list(
        StartTime = as.POSIXct(
          "2015-01-01"
        ),
        EndTime = as.POSIXct(
          "2015-01-01"
        )
      ),
      UpdateActionStatus = list(
        "not-applied"|"waiting-to-start"|"in-progress"|"stopping"|"stopped"|"complete"|"scheduling"|"scheduled"|"not-applicable"
      ),
      ShowNodeLevelUpdateStatus = TRUE|FALSE,
      MaxRecords = 123,
      Marker = "string"
    )
