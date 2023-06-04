<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>elasticache_describe_global_replication_groups</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns information about a particular global replication group

### Description

Returns information about a particular global replication group. If no
identifier is specified, returns information about all Global
datastores.

### Usage

    elasticache_describe_global_replication_groups(GlobalReplicationGroupId,
      MaxRecords, Marker, ShowMemberInfo)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="elasticache_describe_global_replication_groups_:_GlobalReplicationGroupId">GlobalReplicationGroupId</code></td>
<td><p>The name of the Global datastore</p></td>
</tr>
<tr class="even">
<td><code
id="elasticache_describe_global_replication_groups_:_MaxRecords">MaxRecords</code></td>
<td><p>The maximum number of records to include in the response. If more
records exist than the specified MaxRecords value, a marker is included
in the response so that the remaining results can be retrieved.</p></td>
</tr>
<tr class="odd">
<td><code
id="elasticache_describe_global_replication_groups_:_Marker">Marker</code></td>
<td><p>An optional marker returned from a prior request. Use this marker
for pagination of results from this operation. If this parameter is
specified, the response includes only records beyond the marker, up to
the value specified by <code>MaxRecords</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="elasticache_describe_global_replication_groups_:_ShowMemberInfo">ShowMemberInfo</code></td>
<td><p>Returns the list of members that comprise the Global
datastore.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Marker = "string",
      GlobalReplicationGroups = list(
        list(
          GlobalReplicationGroupId = "string",
          GlobalReplicationGroupDescription = "string",
          Status = "string",
          CacheNodeType = "string",
          Engine = "string",
          EngineVersion = "string",
          Members = list(
            list(
              ReplicationGroupId = "string",
              ReplicationGroupRegion = "string",
              Role = "string",
              AutomaticFailover = "enabled"|"disabled"|"enabling"|"disabling",
              Status = "string"
            )
          ),
          ClusterEnabled = TRUE|FALSE,
          GlobalNodeGroups = list(
            list(
              GlobalNodeGroupId = "string",
              Slots = "string"
            )
          ),
          AuthTokenEnabled = TRUE|FALSE,
          TransitEncryptionEnabled = TRUE|FALSE,
          AtRestEncryptionEnabled = TRUE|FALSE,
          ARN = "string"
        )
      )
    )

### Request syntax

    svc$describe_global_replication_groups(
      GlobalReplicationGroupId = "string",
      MaxRecords = 123,
      Marker = "string",
      ShowMemberInfo = TRUE|FALSE
    )
