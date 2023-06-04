<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>elasticache_create_replication_group</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a Redis (cluster mode disabled) or a Redis (cluster mode enabled) replication group

### Description

Creates a Redis (cluster mode disabled) or a Redis (cluster mode
enabled) replication group.

This API can be used to create a standalone regional replication group
or a secondary replication group associated with a Global datastore.

A Redis (cluster mode disabled) replication group is a collection of
clusters, where one of the clusters is a read/write primary and the
others are read-only replicas. Writes to the primary are asynchronously
propagated to the replicas.

A Redis cluster-mode enabled cluster is comprised of from 1 to 90 shards
(API/CLI: node groups). Each shard has a primary node and up to 5
read-only replica nodes. The configuration can range from 90 shards and
0 replicas to 15 shards and 5 replicas, which is the maximum number or
replicas allowed.

The node or shard limit can be increased to a maximum of 500 per cluster
if the Redis engine version is 5.0.6 or higher. For example, you can
choose to configure a 500 node cluster that ranges between 83 shards
(one primary and 5 replicas per shard) and 500 shards (single primary
and no replicas). Make sure there are enough available IP addresses to
accommodate the increase. Common pitfalls include the subnets in the
subnet group have too small a CIDR range or the subnets are shared and
heavily used by other clusters. For more information, see [Creating a
Subnet
Group](https://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/SubnetGroups.Creating.html).
For versions below 5.0.6, the limit is 250 per cluster.

To request a limit increase, see [Amazon Service
Limits](https://docs.aws.amazon.com/general/latest/gr/aws_service_limits.html)
and choose the limit type **Nodes per cluster per instance type**.

When a Redis (cluster mode disabled) replication group has been
successfully created, you can add one or more read replicas to it, up to
a total of 5 read replicas. If you need to increase or decrease the
number of node groups (console: shards), you can avail yourself of
ElastiCache for Redis' scaling. For more information, see [Scaling
ElastiCache for Redis
Clusters](https://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/Scaling.html)
in the *ElastiCache User Guide*.

This operation is valid for Redis only.

### Usage

    elasticache_create_replication_group(ReplicationGroupId,
      ReplicationGroupDescription, GlobalReplicationGroupId, PrimaryClusterId,
      AutomaticFailoverEnabled, MultiAZEnabled, NumCacheClusters,
      PreferredCacheClusterAZs, NumNodeGroups, ReplicasPerNodeGroup,
      NodeGroupConfiguration, CacheNodeType, Engine, EngineVersion,
      CacheParameterGroupName, CacheSubnetGroupName, CacheSecurityGroupNames,
      SecurityGroupIds, Tags, SnapshotArns, SnapshotName,
      PreferredMaintenanceWindow, Port, NotificationTopicArn,
      AutoMinorVersionUpgrade, SnapshotRetentionLimit, SnapshotWindow,
      AuthToken, TransitEncryptionEnabled, AtRestEncryptionEnabled, KmsKeyId,
      UserGroupIds, LogDeliveryConfigurations, DataTieringEnabled,
      NetworkType, IpDiscovery, TransitEncryptionMode, ClusterMode)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="elasticache_create_replication_group_:_ReplicationGroupId">ReplicationGroupId</code></td>
<td><p>[required] The replication group identifier. This parameter is
stored as a lowercase string.</p>
<p>Constraints:</p>
<ul>
<li><p>A name must contain from 1 to 40 alphanumeric characters or
hyphens.</p></li>
<li><p>The first character must be a letter.</p></li>
<li><p>A name cannot end with a hyphen or contain two consecutive
hyphens.</p></li>
</ul></td>
</tr>
<tr class="even">
<td><code
id="elasticache_create_replication_group_:_ReplicationGroupDescription">ReplicationGroupDescription</code></td>
<td><p>[required] A user-created description for the replication
group.</p></td>
</tr>
<tr class="odd">
<td><code
id="elasticache_create_replication_group_:_GlobalReplicationGroupId">GlobalReplicationGroupId</code></td>
<td><p>The name of the Global datastore</p></td>
</tr>
<tr class="even">
<td><code
id="elasticache_create_replication_group_:_PrimaryClusterId">PrimaryClusterId</code></td>
<td><p>The identifier of the cluster that serves as the primary for this
replication group. This cluster must already exist and have a status of
<code>available</code>.</p>
<p>This parameter is not required if <code>NumCacheClusters</code>,
<code>NumNodeGroups</code>, or <code>ReplicasPerNodeGroup</code> is
specified.</p></td>
</tr>
<tr class="odd">
<td><code
id="elasticache_create_replication_group_:_AutomaticFailoverEnabled">AutomaticFailoverEnabled</code></td>
<td><p>Specifies whether a read-only replica is automatically promoted
to read/write primary if the existing primary fails.</p>
<p><code>AutomaticFailoverEnabled</code> must be enabled for Redis
(cluster mode enabled) replication groups.</p>
<p>Default: false</p></td>
</tr>
<tr class="even">
<td><code
id="elasticache_create_replication_group_:_MultiAZEnabled">MultiAZEnabled</code></td>
<td><p>A flag indicating if you have Multi-AZ enabled to enhance fault
tolerance. For more information, see <a
href="https://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/AutoFailover.html">Minimizing
Downtime: Multi-AZ</a>.</p></td>
</tr>
<tr class="odd">
<td><code
id="elasticache_create_replication_group_:_NumCacheClusters">NumCacheClusters</code></td>
<td><p>The number of clusters this replication group initially has.</p>
<p>This parameter is not used if there is more than one node group
(shard). You should use <code>ReplicasPerNodeGroup</code> instead.</p>
<p>If <code>AutomaticFailoverEnabled</code> is <code>true</code>, the
value of this parameter must be at least 2. If
<code>AutomaticFailoverEnabled</code> is <code>false</code> you can omit
this parameter (it will default to 1), or you can explicitly set it to a
value between 2 and 6.</p>
<p>The maximum permitted value for <code>NumCacheClusters</code> is 6 (1
primary plus 5 replicas).</p></td>
</tr>
<tr class="even">
<td><code
id="elasticache_create_replication_group_:_PreferredCacheClusterAZs">PreferredCacheClusterAZs</code></td>
<td><p>A list of EC2 Availability Zones in which the replication group's
clusters are created. The order of the Availability Zones in the list is
the order in which clusters are allocated. The primary cluster is
created in the first AZ in the list.</p>
<p>This parameter is not used if there is more than one node group
(shard). You should use <code>NodeGroupConfiguration</code> instead.</p>
<p>If you are creating your replication group in an Amazon VPC
(recommended), you can only locate clusters in Availability Zones
associated with the subnets in the selected subnet group.</p>
<p>The number of Availability Zones listed must equal the value of
<code>NumCacheClusters</code>.</p>
<p>Default: system chosen Availability Zones.</p></td>
</tr>
<tr class="odd">
<td><code
id="elasticache_create_replication_group_:_NumNodeGroups">NumNodeGroups</code></td>
<td><p>An optional parameter that specifies the number of node groups
(shards) for this Redis (cluster mode enabled) replication group. For
Redis (cluster mode disabled) either omit this parameter or set it to
1.</p>
<p>Default: 1</p></td>
</tr>
<tr class="even">
<td><code
id="elasticache_create_replication_group_:_ReplicasPerNodeGroup">ReplicasPerNodeGroup</code></td>
<td><p>An optional parameter that specifies the number of replica nodes
in each node group (shard). Valid values are 0 to 5.</p></td>
</tr>
<tr class="odd">
<td><code
id="elasticache_create_replication_group_:_NodeGroupConfiguration">NodeGroupConfiguration</code></td>
<td><p>A list of node group (shard) configuration options. Each node
group (shard) configuration has the following members:
<code>PrimaryAvailabilityZone</code>,
<code>ReplicaAvailabilityZones</code>, <code>ReplicaCount</code>, and
<code>Slots</code>.</p>
<p>If you're creating a Redis (cluster mode disabled) or a Redis
(cluster mode enabled) replication group, you can use this parameter to
individually configure each node group (shard), or you can omit this
parameter. However, it is required when seeding a Redis (cluster mode
enabled) cluster from a S3 rdb file. You must configure each node group
(shard) using this parameter because you must specify the slots for each
node group.</p></td>
</tr>
<tr class="even">
<td><code
id="elasticache_create_replication_group_:_CacheNodeType">CacheNodeType</code></td>
<td><p>The compute and memory capacity of the nodes in the node group
(shard).</p>
<p>The following node types are supported by ElastiCache. Generally
speaking, the current generation types provide more memory and
computational power at lower cost when compared to their equivalent
previous generation counterparts.</p>
<ul>
<li><p>General purpose:</p>
<ul>
<li><p>Current generation:</p>
<p><strong>M6g node types</strong> (available only for Redis engine
version 5.0.6 onward and for Memcached engine version 1.5.16 onward):
<code>cache.m6g.large</code>, <code>cache.m6g.xlarge</code>,
<code>cache.m6g.2xlarge</code>, <code>cache.m6g.4xlarge</code>,
<code>cache.m6g.8xlarge</code>, <code>cache.m6g.12xlarge</code>,
<code>cache.m6g.16xlarge</code></p>
<p>For region availability, see <a
href="https://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/CacheNodes.SupportedTypes.html#CacheNodes.SupportedTypesByRegion">Supported
Node Types</a></p>
<p><strong>M5 node types:</strong> <code>cache.m5.large</code>,
<code>cache.m5.xlarge</code>, <code>cache.m5.2xlarge</code>,
<code>cache.m5.4xlarge</code>, <code>cache.m5.12xlarge</code>,
<code>cache.m5.24xlarge</code></p>
<p><strong>M4 node types:</strong> <code>cache.m4.large</code>,
<code>cache.m4.xlarge</code>, <code>cache.m4.2xlarge</code>,
<code>cache.m4.4xlarge</code>, <code>cache.m4.10xlarge</code></p>
<p><strong>T4g node types</strong> (available only for Redis engine
version 5.0.6 onward and Memcached engine version 1.5.16 onward):
<code>cache.t4g.micro</code>, <code>cache.t4g.small</code>,
<code>cache.t4g.medium</code></p>
<p><strong>T3 node types:</strong> <code>cache.t3.micro</code>,
<code>cache.t3.small</code>, <code>cache.t3.medium</code></p>
<p><strong>T2 node types:</strong> <code>cache.t2.micro</code>,
<code>cache.t2.small</code>, <code>cache.t2.medium</code></p></li>
<li><p>Previous generation: (not recommended. Existing clusters are
still supported but creation of new clusters is not supported for these
types.)</p>
<p><strong>T1 node types:</strong> <code>cache.t1.micro</code></p>
<p><strong>M1 node types:</strong> <code>cache.m1.small</code>,
<code>cache.m1.medium</code>, <code>cache.m1.large</code>,
<code>cache.m1.xlarge</code></p>
<p><strong>M3 node types:</strong> <code>cache.m3.medium</code>,
<code>cache.m3.large</code>, <code>cache.m3.xlarge</code>,
<code>cache.m3.2xlarge</code></p></li>
</ul></li>
<li><p>Compute optimized:</p>
<ul>
<li><p>Previous generation: (not recommended. Existing clusters are
still supported but creation of new clusters is not supported for these
types.)</p>
<p><strong>C1 node types:</strong> <code>cache.c1.xlarge</code></p></li>
</ul></li>
<li><p>Memory optimized:</p>
<ul>
<li><p>Current generation:</p>
<p><strong>R6g node types</strong> (available only for Redis engine
version 5.0.6 onward and for Memcached engine version 1.5.16
onward).</p>
<p><code>cache.r6g.large</code>, <code>cache.r6g.xlarge</code>,
<code>cache.r6g.2xlarge</code>, <code>cache.r6g.4xlarge</code>,
<code>cache.r6g.8xlarge</code>, <code>cache.r6g.12xlarge</code>,
<code>cache.r6g.16xlarge</code></p>
<p>For region availability, see <a
href="https://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/CacheNodes.SupportedTypes.html#CacheNodes.SupportedTypesByRegion">Supported
Node Types</a></p>
<p><strong>R5 node types:</strong> <code>cache.r5.large</code>,
<code>cache.r5.xlarge</code>, <code>cache.r5.2xlarge</code>,
<code>cache.r5.4xlarge</code>, <code>cache.r5.12xlarge</code>,
<code>cache.r5.24xlarge</code></p>
<p><strong>R4 node types:</strong> <code>cache.r4.large</code>,
<code>cache.r4.xlarge</code>, <code>cache.r4.2xlarge</code>,
<code>cache.r4.4xlarge</code>, <code>cache.r4.8xlarge</code>,
<code>cache.r4.16xlarge</code></p></li>
<li><p>Previous generation: (not recommended. Existing clusters are
still supported but creation of new clusters is not supported for these
types.)</p>
<p><strong>M2 node types:</strong> <code>cache.m2.xlarge</code>,
<code>cache.m2.2xlarge</code>, <code>cache.m2.4xlarge</code></p>
<p><strong>R3 node types:</strong> <code>cache.r3.large</code>,
<code>cache.r3.xlarge</code>, <code>cache.r3.2xlarge</code>,
<code>cache.r3.4xlarge</code>, <code>cache.r3.8xlarge</code></p></li>
</ul></li>
</ul>
<p><strong>Additional node type info</strong></p>
<ul>
<li><p>All current generation instance types are created in Amazon VPC
by default.</p></li>
<li><p>Redis append-only files (AOF) are not supported for T1 or T2
instances.</p></li>
<li><p>Redis Multi-AZ with automatic failover is not supported on T1
instances.</p></li>
<li><p>Redis configuration variables <code>appendonly</code> and
<code>appendfsync</code> are not supported on Redis version 2.8.22 and
later.</p></li>
</ul></td>
</tr>
<tr class="odd">
<td><code
id="elasticache_create_replication_group_:_Engine">Engine</code></td>
<td><p>The name of the cache engine to be used for the clusters in this
replication group. The value must be set to <code>Redis</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="elasticache_create_replication_group_:_EngineVersion">EngineVersion</code></td>
<td><p>The version number of the cache engine to be used for the
clusters in this replication group. To view the supported cache engine
versions, use the <code>describe_cache_engine_versions</code>
operation.</p>
<p><strong>Important:</strong> You can upgrade to a newer engine version
(see <a
href="https://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/SelectEngine.html#VersionManagement">Selecting
a Cache Engine and Version</a>) in the <em>ElastiCache User Guide</em>,
but you cannot downgrade to an earlier engine version. If you want to
use an earlier engine version, you must delete the existing cluster or
replication group and create it anew with the earlier engine
version.</p></td>
</tr>
<tr class="odd">
<td><code
id="elasticache_create_replication_group_:_CacheParameterGroupName">CacheParameterGroupName</code></td>
<td><p>The name of the parameter group to associate with this
replication group. If this argument is omitted, the default cache
parameter group for the specified engine is used.</p>
<p>If you are running Redis version 3.2.4 or later, only one node group
(shard), and want to use a default parameter group, we recommend that
you specify the parameter group by name.</p>
<ul>
<li><p>To create a Redis (cluster mode disabled) replication group, use
<code>CacheParameterGroupName=default.redis3.2</code>.</p></li>
<li><p>To create a Redis (cluster mode enabled) replication group, use
<code>CacheParameterGroupName=default.redis3.2.cluster.on</code>.</p></li>
</ul></td>
</tr>
<tr class="even">
<td><code
id="elasticache_create_replication_group_:_CacheSubnetGroupName">CacheSubnetGroupName</code></td>
<td><p>The name of the cache subnet group to be used for the replication
group.</p>
<p>If you're going to launch your cluster in an Amazon VPC, you need to
create a subnet group before you start creating a cluster. For more
information, see <a
href="https://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/SubnetGroups.html">Subnets
and Subnet Groups</a>.</p></td>
</tr>
<tr class="odd">
<td><code
id="elasticache_create_replication_group_:_CacheSecurityGroupNames">CacheSecurityGroupNames</code></td>
<td><p>A list of cache security group names to associate with this
replication group.</p></td>
</tr>
<tr class="even">
<td><code
id="elasticache_create_replication_group_:_SecurityGroupIds">SecurityGroupIds</code></td>
<td><p>One or more Amazon VPC security groups associated with this
replication group.</p>
<p>Use this parameter only when you are creating a replication group in
an Amazon Virtual Private Cloud (Amazon VPC).</p></td>
</tr>
<tr class="odd">
<td><code
id="elasticache_create_replication_group_:_Tags">Tags</code></td>
<td><p>A list of tags to be added to this resource. Tags are
comma-separated key,value pairs (e.g. Key=<code>myKey</code>,
Value=<code>myKeyValue</code>. You can include multiple tags as shown
following: Key=<code>myKey</code>, Value=<code>myKeyValue</code>
Key=<code>mySecondKey</code>, Value=<code>mySecondKeyValue</code>. Tags
on replication groups will be replicated to all nodes.</p></td>
</tr>
<tr class="even">
<td><code
id="elasticache_create_replication_group_:_SnapshotArns">SnapshotArns</code></td>
<td><p>A list of Amazon Resource Names (ARN) that uniquely identify the
Redis RDB snapshot files stored in Amazon S3. The snapshot files are
used to populate the new replication group. The Amazon S3 object name in
the ARN cannot contain any commas. The new replication group will have
the number of node groups (console: shards) specified by the parameter
<em>NumNodeGroups</em> or the number of node groups configured by
<em>NodeGroupConfiguration</em> regardless of the number of ARNs
specified here.</p>
<p>Example of an Amazon S3 ARN:
<code>arn:aws:s3:::my_bucket/snapshot1.rdb</code></p></td>
</tr>
<tr class="odd">
<td><code
id="elasticache_create_replication_group_:_SnapshotName">SnapshotName</code></td>
<td><p>The name of a snapshot from which to restore data into the new
replication group. The snapshot status changes to <code>restoring</code>
while the new replication group is being created.</p></td>
</tr>
<tr class="even">
<td><code
id="elasticache_create_replication_group_:_PreferredMaintenanceWindow">PreferredMaintenanceWindow</code></td>
<td><p>Specifies the weekly time range during which maintenance on the
cluster is performed. It is specified as a range in the format
ddd:hh24:mi-ddd:hh24:mi (24H Clock UTC). The minimum maintenance window
is a 60 minute period. Valid values for <code>ddd</code> are:</p>
<p>Specifies the weekly time range during which maintenance on the
cluster is performed. It is specified as a range in the format
ddd:hh24:mi-ddd:hh24:mi (24H Clock UTC). The minimum maintenance window
is a 60 minute period.</p>
<p>Valid values for <code>ddd</code> are:</p>
<ul>
<li><p><code>sun</code></p></li>
<li><p><code>mon</code></p></li>
<li><p><code>tue</code></p></li>
<li><p><code>wed</code></p></li>
<li><p><code>thu</code></p></li>
<li><p><code>fri</code></p></li>
<li><p><code>sat</code></p></li>
</ul>
<p>Example: <code>sun:23:00-mon:01:30</code></p></td>
</tr>
<tr class="odd">
<td><code
id="elasticache_create_replication_group_:_Port">Port</code></td>
<td><p>The port number on which each member of the replication group
accepts connections.</p></td>
</tr>
<tr class="even">
<td><code
id="elasticache_create_replication_group_:_NotificationTopicArn">NotificationTopicArn</code></td>
<td><p>The Amazon Resource Name (ARN) of the Amazon Simple Notification
Service (SNS) topic to which notifications are sent.</p>
<p>The Amazon SNS topic owner must be the same as the cluster
owner.</p></td>
</tr>
<tr class="odd">
<td><code
id="elasticache_create_replication_group_:_AutoMinorVersionUpgrade">AutoMinorVersionUpgrade</code></td>
<td><p>If you are running Redis engine version 6.0 or later, set this
parameter to yes if you want to opt-in to the next auto minor version
upgrade campaign. This parameter is disabled for previous
versions.</p></td>
</tr>
<tr class="even">
<td><code
id="elasticache_create_replication_group_:_SnapshotRetentionLimit">SnapshotRetentionLimit</code></td>
<td><p>The number of days for which ElastiCache retains automatic
snapshots before deleting them. For example, if you set
<code>SnapshotRetentionLimit</code> to 5, a snapshot that was taken
today is retained for 5 days before being deleted.</p>
<p>Default: 0 (i.e., automatic backups are disabled for this
cluster).</p></td>
</tr>
<tr class="odd">
<td><code
id="elasticache_create_replication_group_:_SnapshotWindow">SnapshotWindow</code></td>
<td><p>The daily time range (in UTC) during which ElastiCache begins
taking a daily snapshot of your node group (shard).</p>
<p>Example: <code>05:00-09:00</code></p>
<p>If you do not specify this parameter, ElastiCache automatically
chooses an appropriate time range.</p></td>
</tr>
<tr class="even">
<td><code
id="elasticache_create_replication_group_:_AuthToken">AuthToken</code></td>
<td><p><strong>Reserved parameter.</strong> The password used to access
a password protected server.</p>
<p><code>AuthToken</code> can be specified only on replication groups
where <code>TransitEncryptionEnabled</code> is <code>true</code>.</p>
<p>For HIPAA compliance, you must specify
<code>TransitEncryptionEnabled</code> as <code>true</code>, an
<code>AuthToken</code>, and a <code>CacheSubnetGroup</code>.</p>
<p>Password constraints:</p>
<ul>
<li><p>Must be only printable ASCII characters.</p></li>
<li><p>Must be at least 16 characters and no more than 128 characters in
length.</p></li>
<li><p>The only permitted printable special characters are !, &amp;, #,
$, ^, \&lt;, \&gt;, and -. Other printable special characters cannot be
used in the AUTH token.</p></li>
</ul>
<p>For more information, see <a
href="https://redis.io/commands/auth/">AUTH password</a> at
http://redis.io/commands/AUTH.</p></td>
</tr>
<tr class="odd">
<td><code
id="elasticache_create_replication_group_:_TransitEncryptionEnabled">TransitEncryptionEnabled</code></td>
<td><p>A flag that enables in-transit encryption when set to
<code>true</code>.</p>
<p>This parameter is valid only if the <code>Engine</code> parameter is
<code>redis</code>, the <code>EngineVersion</code> parameter is <code
style="white-space: pre;">⁠3.2.6⁠</code>, <code
style="white-space: pre;">⁠4.x⁠</code> or later, and the cluster is being
created in an Amazon VPC.</p>
<p>If you enable in-transit encryption, you must also specify a value
for <code>CacheSubnetGroup</code>.</p>
<p><strong>Required:</strong> Only available when creating a replication
group in an Amazon VPC using redis version <code
style="white-space: pre;">⁠3.2.6⁠</code>, <code
style="white-space: pre;">⁠4.x⁠</code> or later.</p>
<p>Default: <code>false</code></p>
<p>For HIPAA compliance, you must specify
<code>TransitEncryptionEnabled</code> as <code>true</code>, an
<code>AuthToken</code>, and a <code>CacheSubnetGroup</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="elasticache_create_replication_group_:_AtRestEncryptionEnabled">AtRestEncryptionEnabled</code></td>
<td><p>A flag that enables encryption at rest when set to
<code>true</code>.</p>
<p>You cannot modify the value of <code>AtRestEncryptionEnabled</code>
after the replication group is created. To enable encryption at rest on
a replication group you must set <code>AtRestEncryptionEnabled</code> to
<code>true</code> when you create the replication group.</p>
<p><strong>Required:</strong> Only available when creating a replication
group in an Amazon VPC using redis version <code
style="white-space: pre;">⁠3.2.6⁠</code>, <code
style="white-space: pre;">⁠4.x⁠</code> or later.</p>
<p>Default: <code>false</code></p></td>
</tr>
<tr class="odd">
<td><code
id="elasticache_create_replication_group_:_KmsKeyId">KmsKeyId</code></td>
<td><p>The ID of the KMS key used to encrypt the disk in the
cluster.</p></td>
</tr>
<tr class="even">
<td><code
id="elasticache_create_replication_group_:_UserGroupIds">UserGroupIds</code></td>
<td><p>The user group to associate with the replication group.</p></td>
</tr>
<tr class="odd">
<td><code
id="elasticache_create_replication_group_:_LogDeliveryConfigurations">LogDeliveryConfigurations</code></td>
<td><p>Specifies the destination, format and type of the logs.</p></td>
</tr>
<tr class="even">
<td><code
id="elasticache_create_replication_group_:_DataTieringEnabled">DataTieringEnabled</code></td>
<td><p>Enables data tiering. Data tiering is only supported for
replication groups using the r6gd node type. This parameter must be set
to true when using r6gd nodes. For more information, see <a
href="https://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/data-tiering.html">Data
tiering</a>.</p></td>
</tr>
<tr class="odd">
<td><code
id="elasticache_create_replication_group_:_NetworkType">NetworkType</code></td>
<td><p>Must be either <code>ipv4</code> | <code>ipv6</code> |
<code>dual_stack</code>. IPv6 is supported for workloads using Redis
engine version 6.2 onward or Memcached engine version 1.6.6 on all
instances built on the <a href="https://aws.amazon.com/ec2/nitro/">Nitro
system</a>.</p></td>
</tr>
<tr class="even">
<td><code
id="elasticache_create_replication_group_:_IpDiscovery">IpDiscovery</code></td>
<td><p>The network type you choose when creating a replication group,
either <code>ipv4</code> | <code>ipv6</code>. IPv6 is supported for
workloads using Redis engine version 6.2 onward or Memcached engine
version 1.6.6 on all instances built on the <a
href="https://aws.amazon.com/ec2/nitro/">Nitro system</a>.</p></td>
</tr>
<tr class="odd">
<td><code
id="elasticache_create_replication_group_:_TransitEncryptionMode">TransitEncryptionMode</code></td>
<td><p>A setting that allows you to migrate your clients to use
in-transit encryption, with no downtime.</p>
<p>When setting <code>TransitEncryptionEnabled</code> to
<code>true</code>, you can set your <code>TransitEncryptionMode</code>
to <code>preferred</code> in the same request, to allow both encrypted
and unencrypted connections at the same time. Once you migrate all your
Redis clients to use encrypted connections you can modify the value to
<code>required</code> to allow encrypted connections only.</p>
<p>Setting <code>TransitEncryptionMode</code> to <code>required</code>
is a two-step process that requires you to first set the
<code>TransitEncryptionMode</code> to <code>preferred</code>, after that
you can set <code>TransitEncryptionMode</code> to
<code>required</code>.</p>
<p>This process will not trigger the replacement of the replication
group.</p></td>
</tr>
<tr class="even">
<td><code
id="elasticache_create_replication_group_:_ClusterMode">ClusterMode</code></td>
<td><p>Enabled or Disabled. To modify cluster mode from Disabled to
Enabled, you must first set the cluster mode to Compatible. Compatible
mode allows your Redis clients to connect using both cluster mode
enabled and cluster mode disabled. After you migrate all Redis clients
to use cluster mode enabled, you can then complete cluster mode
configuration and set the cluster mode to Enabled.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ReplicationGroup = list(
        ReplicationGroupId = "string",
        Description = "string",
        GlobalReplicationGroupInfo = list(
          GlobalReplicationGroupId = "string",
          GlobalReplicationGroupMemberRole = "string"
        ),
        Status = "string",
        PendingModifiedValues = list(
          PrimaryClusterId = "string",
          AutomaticFailoverStatus = "enabled"|"disabled",
          Resharding = list(
            SlotMigration = list(
              ProgressPercentage = 123.0
            )
          ),
          AuthTokenStatus = "SETTING"|"ROTATING",
          UserGroups = list(
            UserGroupIdsToAdd = list(
              "string"
            ),
            UserGroupIdsToRemove = list(
              "string"
            )
          ),
          LogDeliveryConfigurations = list(
            list(
              LogType = "slow-log"|"engine-log",
              DestinationType = "cloudwatch-logs"|"kinesis-firehose",
              DestinationDetails = list(
                CloudWatchLogsDetails = list(
                  LogGroup = "string"
                ),
                KinesisFirehoseDetails = list(
                  DeliveryStream = "string"
                )
              ),
              LogFormat = "text"|"json"
            )
          ),
          TransitEncryptionEnabled = TRUE|FALSE,
          TransitEncryptionMode = "preferred"|"required",
          ClusterMode = "enabled"|"disabled"|"compatible"
        ),
        MemberClusters = list(
          "string"
        ),
        NodeGroups = list(
          list(
            NodeGroupId = "string",
            Status = "string",
            PrimaryEndpoint = list(
              Address = "string",
              Port = 123
            ),
            ReaderEndpoint = list(
              Address = "string",
              Port = 123
            ),
            Slots = "string",
            NodeGroupMembers = list(
              list(
                CacheClusterId = "string",
                CacheNodeId = "string",
                ReadEndpoint = list(
                  Address = "string",
                  Port = 123
                ),
                PreferredAvailabilityZone = "string",
                PreferredOutpostArn = "string",
                CurrentRole = "string"
              )
            )
          )
        ),
        SnapshottingClusterId = "string",
        AutomaticFailover = "enabled"|"disabled"|"enabling"|"disabling",
        MultiAZ = "enabled"|"disabled",
        ConfigurationEndpoint = list(
          Address = "string",
          Port = 123
        ),
        SnapshotRetentionLimit = 123,
        SnapshotWindow = "string",
        ClusterEnabled = TRUE|FALSE,
        CacheNodeType = "string",
        AuthTokenEnabled = TRUE|FALSE,
        AuthTokenLastModifiedDate = as.POSIXct(
          "2015-01-01"
        ),
        TransitEncryptionEnabled = TRUE|FALSE,
        AtRestEncryptionEnabled = TRUE|FALSE,
        MemberClustersOutpostArns = list(
          "string"
        ),
        KmsKeyId = "string",
        ARN = "string",
        UserGroupIds = list(
          "string"
        ),
        LogDeliveryConfigurations = list(
          list(
            LogType = "slow-log"|"engine-log",
            DestinationType = "cloudwatch-logs"|"kinesis-firehose",
            DestinationDetails = list(
              CloudWatchLogsDetails = list(
                LogGroup = "string"
              ),
              KinesisFirehoseDetails = list(
                DeliveryStream = "string"
              )
            ),
            LogFormat = "text"|"json",
            Status = "active"|"enabling"|"modifying"|"disabling"|"error",
            Message = "string"
          )
        ),
        ReplicationGroupCreateTime = as.POSIXct(
          "2015-01-01"
        ),
        DataTiering = "enabled"|"disabled",
        AutoMinorVersionUpgrade = TRUE|FALSE,
        NetworkType = "ipv4"|"ipv6"|"dual_stack",
        IpDiscovery = "ipv4"|"ipv6",
        TransitEncryptionMode = "preferred"|"required",
        ClusterMode = "enabled"|"disabled"|"compatible"
      )
    )

### Request syntax

    svc$create_replication_group(
      ReplicationGroupId = "string",
      ReplicationGroupDescription = "string",
      GlobalReplicationGroupId = "string",
      PrimaryClusterId = "string",
      AutomaticFailoverEnabled = TRUE|FALSE,
      MultiAZEnabled = TRUE|FALSE,
      NumCacheClusters = 123,
      PreferredCacheClusterAZs = list(
        "string"
      ),
      NumNodeGroups = 123,
      ReplicasPerNodeGroup = 123,
      NodeGroupConfiguration = list(
        list(
          NodeGroupId = "string",
          Slots = "string",
          ReplicaCount = 123,
          PrimaryAvailabilityZone = "string",
          ReplicaAvailabilityZones = list(
            "string"
          ),
          PrimaryOutpostArn = "string",
          ReplicaOutpostArns = list(
            "string"
          )
        )
      ),
      CacheNodeType = "string",
      Engine = "string",
      EngineVersion = "string",
      CacheParameterGroupName = "string",
      CacheSubnetGroupName = "string",
      CacheSecurityGroupNames = list(
        "string"
      ),
      SecurityGroupIds = list(
        "string"
      ),
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      ),
      SnapshotArns = list(
        "string"
      ),
      SnapshotName = "string",
      PreferredMaintenanceWindow = "string",
      Port = 123,
      NotificationTopicArn = "string",
      AutoMinorVersionUpgrade = TRUE|FALSE,
      SnapshotRetentionLimit = 123,
      SnapshotWindow = "string",
      AuthToken = "string",
      TransitEncryptionEnabled = TRUE|FALSE,
      AtRestEncryptionEnabled = TRUE|FALSE,
      KmsKeyId = "string",
      UserGroupIds = list(
        "string"
      ),
      LogDeliveryConfigurations = list(
        list(
          LogType = "slow-log"|"engine-log",
          DestinationType = "cloudwatch-logs"|"kinesis-firehose",
          DestinationDetails = list(
            CloudWatchLogsDetails = list(
              LogGroup = "string"
            ),
            KinesisFirehoseDetails = list(
              DeliveryStream = "string"
            )
          ),
          LogFormat = "text"|"json",
          Enabled = TRUE|FALSE
        )
      ),
      DataTieringEnabled = TRUE|FALSE,
      NetworkType = "ipv4"|"ipv6"|"dual_stack",
      IpDiscovery = "ipv4"|"ipv6",
      TransitEncryptionMode = "preferred"|"required",
      ClusterMode = "enabled"|"disabled"|"compatible"
    )
