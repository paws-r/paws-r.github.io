<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>elasticache_modify_global_replication_group</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Modifies the settings for a Global datastore

### Description

Modifies the settings for a Global datastore.

### Usage

    elasticache_modify_global_replication_group(GlobalReplicationGroupId,
      ApplyImmediately, CacheNodeType, EngineVersion, CacheParameterGroupName,
      GlobalReplicationGroupDescription, AutomaticFailoverEnabled)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="elasticache_modify_global_replication_group_:_GlobalReplicationGroupId">GlobalReplicationGroupId</code></td>
<td><p>[required] The name of the Global datastore</p></td>
</tr>
<tr class="even">
<td><code
id="elasticache_modify_global_replication_group_:_ApplyImmediately">ApplyImmediately</code></td>
<td><p>[required] This parameter causes the modifications in this
request and any pending modifications to be applied, asynchronously and
as soon as possible. Modifications to Global Replication Groups cannot
be requested to be applied in PreferredMaintenceWindow.</p></td>
</tr>
<tr class="odd">
<td><code
id="elasticache_modify_global_replication_group_:_CacheNodeType">CacheNodeType</code></td>
<td><p>A valid cache node type that you want to scale this Global
datastore to.</p></td>
</tr>
<tr class="even">
<td><code
id="elasticache_modify_global_replication_group_:_EngineVersion">EngineVersion</code></td>
<td><p>The upgraded version of the cache engine to be run on the
clusters in the Global datastore.</p></td>
</tr>
<tr class="odd">
<td><code
id="elasticache_modify_global_replication_group_:_CacheParameterGroupName">CacheParameterGroupName</code></td>
<td><p>The name of the cache parameter group to use with the Global
datastore. It must be compatible with the major engine version used by
the Global datastore.</p></td>
</tr>
<tr class="even">
<td><code
id="elasticache_modify_global_replication_group_:_GlobalReplicationGroupDescription">GlobalReplicationGroupDescription</code></td>
<td><p>A description of the Global datastore</p></td>
</tr>
<tr class="odd">
<td><code
id="elasticache_modify_global_replication_group_:_AutomaticFailoverEnabled">AutomaticFailoverEnabled</code></td>
<td><p>Determines whether a read replica is automatically promoted to
read/write primary if the existing primary encounters a
failure.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      GlobalReplicationGroup = list(
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

### Request syntax

    svc$modify_global_replication_group(
      GlobalReplicationGroupId = "string",
      ApplyImmediately = TRUE|FALSE,
      CacheNodeType = "string",
      EngineVersion = "string",
      CacheParameterGroupName = "string",
      GlobalReplicationGroupDescription = "string",
      AutomaticFailoverEnabled = TRUE|FALSE
    )
