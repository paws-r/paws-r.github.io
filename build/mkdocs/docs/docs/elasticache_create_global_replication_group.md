<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>elasticache_create_global_replication_group</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Global Datastore for Redis offers fully managed, fast, reliable and secure cross-region replication

### Description

Global Datastore for Redis offers fully managed, fast, reliable and
secure cross-region replication. Using Global Datastore for Redis, you
can create cross-region read replica clusters for ElastiCache for Redis
to enable low-latency reads and disaster recovery across regions. For
more information, see [Replication Across Regions Using Global
Datastore](https://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/Redis-Global-Datastore.html).

-   The **GlobalReplicationGroupIdSuffix** is the name of the Global
    datastore.

-   The **PrimaryReplicationGroupId** represents the name of the primary
    cluster that accepts writes and will replicate updates to the
    secondary cluster.

### Usage

    elasticache_create_global_replication_group(
      GlobalReplicationGroupIdSuffix, GlobalReplicationGroupDescription,
      PrimaryReplicationGroupId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="elasticache_create_global_replication_group_:_GlobalReplicationGroupIdSuffix">GlobalReplicationGroupIdSuffix</code></td>
<td><p>[required] The suffix name of a Global datastore. Amazon
ElastiCache automatically applies a prefix to the Global datastore ID
when it is created. Each Amazon Region has its own prefix. For instance,
a Global datastore ID created in the US-West-1 region will begin with
"dsdfu" along with the suffix name you provide. The suffix, combined
with the auto-generated prefix, guarantees uniqueness of the Global
datastore name across multiple regions.</p>
<p>For a full list of Amazon Regions and their respective Global
datastore iD prefixes, see <a
href="https://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/Redis-Global-Datastores-CLI.html">Using
the Amazon CLI with Global datastores</a> .</p></td>
</tr>
<tr class="even">
<td><code
id="elasticache_create_global_replication_group_:_GlobalReplicationGroupDescription">GlobalReplicationGroupDescription</code></td>
<td><p>Provides details of the Global datastore</p></td>
</tr>
<tr class="odd">
<td><code
id="elasticache_create_global_replication_group_:_PrimaryReplicationGroupId">PrimaryReplicationGroupId</code></td>
<td><p>[required] The name of the primary cluster that accepts writes
and will replicate updates to the secondary cluster.</p></td>
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

    svc$create_global_replication_group(
      GlobalReplicationGroupIdSuffix = "string",
      GlobalReplicationGroupDescription = "string",
      PrimaryReplicationGroupId = "string"
    )
