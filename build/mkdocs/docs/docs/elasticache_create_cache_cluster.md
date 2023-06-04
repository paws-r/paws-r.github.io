<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>elasticache_create_cache_cluster</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a cluster

### Description

Creates a cluster. All nodes in the cluster run the same
protocol-compliant cache engine software, either Memcached or Redis.

This operation is not supported for Redis (cluster mode enabled)
clusters.

### Usage

    elasticache_create_cache_cluster(CacheClusterId, ReplicationGroupId,
      AZMode, PreferredAvailabilityZone, PreferredAvailabilityZones,
      NumCacheNodes, CacheNodeType, Engine, EngineVersion,
      CacheParameterGroupName, CacheSubnetGroupName, CacheSecurityGroupNames,
      SecurityGroupIds, Tags, SnapshotArns, SnapshotName,
      PreferredMaintenanceWindow, Port, NotificationTopicArn,
      AutoMinorVersionUpgrade, SnapshotRetentionLimit, SnapshotWindow,
      AuthToken, OutpostMode, PreferredOutpostArn, PreferredOutpostArns,
      LogDeliveryConfigurations, TransitEncryptionEnabled, NetworkType,
      IpDiscovery)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="elasticache_create_cache_cluster_:_CacheClusterId">CacheClusterId</code></td>
<td><p>[required] The node group (shard) identifier. This parameter is
stored as a lowercase string.</p>
<p><strong>Constraints:</strong></p>
<ul>
<li><p>A name must contain from 1 to 50 alphanumeric characters or
hyphens.</p></li>
<li><p>The first character must be a letter.</p></li>
<li><p>A name cannot end with a hyphen or contain two consecutive
hyphens.</p></li>
</ul></td>
</tr>
<tr class="even">
<td><code
id="elasticache_create_cache_cluster_:_ReplicationGroupId">ReplicationGroupId</code></td>
<td><p>The ID of the replication group to which this cluster should
belong. If this parameter is specified, the cluster is added to the
specified replication group as a read replica; otherwise, the cluster is
a standalone primary that is not part of any replication group.</p>
<p>If the specified replication group is Multi-AZ enabled and the
Availability Zone is not specified, the cluster is created in
Availability Zones that provide the best spread of read replicas across
Availability Zones.</p>
<p>This parameter is only valid if the <code>Engine</code> parameter is
<code>redis</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="elasticache_create_cache_cluster_:_AZMode">AZMode</code></td>
<td><p>Specifies whether the nodes in this Memcached cluster are created
in a single Availability Zone or created across multiple Availability
Zones in the cluster's region.</p>
<p>This parameter is only supported for Memcached clusters.</p>
<p>If the <code>AZMode</code> and
<code>PreferredAvailabilityZones</code> are not specified, ElastiCache
assumes <code>single-az</code> mode.</p></td>
</tr>
<tr class="even">
<td><code
id="elasticache_create_cache_cluster_:_PreferredAvailabilityZone">PreferredAvailabilityZone</code></td>
<td><p>The EC2 Availability Zone in which the cluster is created.</p>
<p>All nodes belonging to this cluster are placed in the preferred
Availability Zone. If you want to create your nodes across multiple
Availability Zones, use <code>PreferredAvailabilityZones</code>.</p>
<p>Default: System chosen Availability Zone.</p></td>
</tr>
<tr class="odd">
<td><code
id="elasticache_create_cache_cluster_:_PreferredAvailabilityZones">PreferredAvailabilityZones</code></td>
<td><p>A list of the Availability Zones in which cache nodes are
created. The order of the zones in the list is not important.</p>
<p>This option is only supported on Memcached.</p>
<p>If you are creating your cluster in an Amazon VPC (recommended) you
can only locate nodes in Availability Zones that are associated with the
subnets in the selected subnet group.</p>
<p>The number of Availability Zones listed must equal the value of
<code>NumCacheNodes</code>.</p>
<p>If you want all the nodes in the same Availability Zone, use
<code>PreferredAvailabilityZone</code> instead, or repeat the
Availability Zone multiple times in the list.</p>
<p>Default: System chosen Availability Zones.</p></td>
</tr>
<tr class="even">
<td><code
id="elasticache_create_cache_cluster_:_NumCacheNodes">NumCacheNodes</code></td>
<td><p>The initial number of cache nodes that the cluster has.</p>
<p>For clusters running Redis, this value must be 1. For clusters
running Memcached, this value must be between 1 and 40.</p>
<p>If you need more than 40 nodes for your Memcached cluster, please
fill out the ElastiCache Limit Increase Request form at
http://aws.amazon.com/contact-us/elasticache-node-limit-request/.</p></td>
</tr>
<tr class="odd">
<td><code
id="elasticache_create_cache_cluster_:_CacheNodeType">CacheNodeType</code></td>
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
<tr class="even">
<td><code
id="elasticache_create_cache_cluster_:_Engine">Engine</code></td>
<td><p>The name of the cache engine to be used for this cluster.</p>
<p>Valid values for this parameter are: <code>memcached</code> |
<code>redis</code></p></td>
</tr>
<tr class="odd">
<td><code
id="elasticache_create_cache_cluster_:_EngineVersion">EngineVersion</code></td>
<td><p>The version number of the cache engine to be used for this
cluster. To view the supported cache engine versions, use the
DescribeCacheEngineVersions operation.</p>
<p><strong>Important:</strong> You can upgrade to a newer engine version
(see <a
href="https://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/SelectEngine.html#VersionManagement">Selecting
a Cache Engine and Version</a>), but you cannot downgrade to an earlier
engine version. If you want to use an earlier engine version, you must
delete the existing cluster or replication group and create it anew with
the earlier engine version.</p></td>
</tr>
<tr class="even">
<td><code
id="elasticache_create_cache_cluster_:_CacheParameterGroupName">CacheParameterGroupName</code></td>
<td><p>The name of the parameter group to associate with this cluster.
If this argument is omitted, the default parameter group for the
specified engine is used. You cannot use any parameter group which has
<code>cluster-enabled='yes'</code> when creating a cluster.</p></td>
</tr>
<tr class="odd">
<td><code
id="elasticache_create_cache_cluster_:_CacheSubnetGroupName">CacheSubnetGroupName</code></td>
<td><p>The name of the subnet group to be used for the cluster.</p>
<p>Use this parameter only when you are creating a cluster in an Amazon
Virtual Private Cloud (Amazon VPC).</p>
<p>If you're going to launch your cluster in an Amazon VPC, you need to
create a subnet group before you start creating a cluster. For more
information, see <a
href="https://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/SubnetGroups.html">Subnets
and Subnet Groups</a>.</p></td>
</tr>
<tr class="even">
<td><code
id="elasticache_create_cache_cluster_:_CacheSecurityGroupNames">CacheSecurityGroupNames</code></td>
<td><p>A list of security group names to associate with this
cluster.</p>
<p>Use this parameter only when you are creating a cluster outside of an
Amazon Virtual Private Cloud (Amazon VPC).</p></td>
</tr>
<tr class="odd">
<td><code
id="elasticache_create_cache_cluster_:_SecurityGroupIds">SecurityGroupIds</code></td>
<td><p>One or more VPC security groups associated with the cluster.</p>
<p>Use this parameter only when you are creating a cluster in an Amazon
Virtual Private Cloud (Amazon VPC).</p></td>
</tr>
<tr class="even">
<td><code id="elasticache_create_cache_cluster_:_Tags">Tags</code></td>
<td><p>A list of tags to be added to this resource.</p></td>
</tr>
<tr class="odd">
<td><code
id="elasticache_create_cache_cluster_:_SnapshotArns">SnapshotArns</code></td>
<td><p>A single-element string list containing an Amazon Resource Name
(ARN) that uniquely identifies a Redis RDB snapshot file stored in
Amazon S3. The snapshot file is used to populate the node group (shard).
The Amazon S3 object name in the ARN cannot contain any commas.</p>
<p>This parameter is only valid if the <code>Engine</code> parameter is
<code>redis</code>.</p>
<p>Example of an Amazon S3 ARN:
<code>arn:aws:s3:::my_bucket/snapshot1.rdb</code></p></td>
</tr>
<tr class="even">
<td><code
id="elasticache_create_cache_cluster_:_SnapshotName">SnapshotName</code></td>
<td><p>The name of a Redis snapshot from which to restore data into the
new node group (shard). The snapshot status changes to
<code>restoring</code> while the new node group (shard) is being
created.</p>
<p>This parameter is only valid if the <code>Engine</code> parameter is
<code>redis</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="elasticache_create_cache_cluster_:_PreferredMaintenanceWindow">PreferredMaintenanceWindow</code></td>
<td><p>Specifies the weekly time range during which maintenance on the
cluster is performed. It is specified as a range in the format
ddd:hh24:mi-ddd:hh24:mi (24H Clock UTC). The minimum maintenance window
is a 60 minute period.</p></td>
</tr>
<tr class="even">
<td><code id="elasticache_create_cache_cluster_:_Port">Port</code></td>
<td><p>The port number on which each of the cache nodes accepts
connections.</p></td>
</tr>
<tr class="odd">
<td><code
id="elasticache_create_cache_cluster_:_NotificationTopicArn">NotificationTopicArn</code></td>
<td><p>The Amazon Resource Name (ARN) of the Amazon Simple Notification
Service (SNS) topic to which notifications are sent.</p>
<p>The Amazon SNS topic owner must be the same as the cluster
owner.</p></td>
</tr>
<tr class="even">
<td><code
id="elasticache_create_cache_cluster_:_AutoMinorVersionUpgrade">AutoMinorVersionUpgrade</code></td>
<td><p>If you are running Redis engine version 6.0 or later, set this
parameter to yes if you want to opt-in to the next auto minor version
upgrade campaign. This parameter is disabled for previous
versions.</p></td>
</tr>
<tr class="odd">
<td><code
id="elasticache_create_cache_cluster_:_SnapshotRetentionLimit">SnapshotRetentionLimit</code></td>
<td><p>The number of days for which ElastiCache retains automatic
snapshots before deleting them. For example, if you set
<code>SnapshotRetentionLimit</code> to 5, a snapshot taken today is
retained for 5 days before being deleted.</p>
<p>This parameter is only valid if the <code>Engine</code> parameter is
<code>redis</code>.</p>
<p>Default: 0 (i.e., automatic backups are disabled for this cache
cluster).</p></td>
</tr>
<tr class="even">
<td><code
id="elasticache_create_cache_cluster_:_SnapshotWindow">SnapshotWindow</code></td>
<td><p>The daily time range (in UTC) during which ElastiCache begins
taking a daily snapshot of your node group (shard).</p>
<p>Example: <code>05:00-09:00</code></p>
<p>If you do not specify this parameter, ElastiCache automatically
chooses an appropriate time range.</p>
<p>This parameter is only valid if the <code>Engine</code> parameter is
<code>redis</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="elasticache_create_cache_cluster_:_AuthToken">AuthToken</code></td>
<td><p><strong>Reserved parameter.</strong> The password used to access
a password protected server.</p>
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
<tr class="even">
<td><code
id="elasticache_create_cache_cluster_:_OutpostMode">OutpostMode</code></td>
<td><p>Specifies whether the nodes in the cluster are created in a
single outpost or across multiple outposts.</p></td>
</tr>
<tr class="odd">
<td><code
id="elasticache_create_cache_cluster_:_PreferredOutpostArn">PreferredOutpostArn</code></td>
<td><p>The outpost ARN in which the cache cluster is created.</p></td>
</tr>
<tr class="even">
<td><code
id="elasticache_create_cache_cluster_:_PreferredOutpostArns">PreferredOutpostArns</code></td>
<td><p>The outpost ARNs in which the cache cluster is created.</p></td>
</tr>
<tr class="odd">
<td><code
id="elasticache_create_cache_cluster_:_LogDeliveryConfigurations">LogDeliveryConfigurations</code></td>
<td><p>Specifies the destination, format and type of the logs.</p></td>
</tr>
<tr class="even">
<td><code
id="elasticache_create_cache_cluster_:_TransitEncryptionEnabled">TransitEncryptionEnabled</code></td>
<td><p>A flag that enables in-transit encryption when set to
true.</p></td>
</tr>
<tr class="odd">
<td><code
id="elasticache_create_cache_cluster_:_NetworkType">NetworkType</code></td>
<td><p>Must be either <code>ipv4</code> | <code>ipv6</code> |
<code>dual_stack</code>. IPv6 is supported for workloads using Redis
engine version 6.2 onward or Memcached engine version 1.6.6 on all
instances built on the <a href="https://aws.amazon.com/ec2/nitro/">Nitro
system</a>.</p></td>
</tr>
<tr class="even">
<td><code
id="elasticache_create_cache_cluster_:_IpDiscovery">IpDiscovery</code></td>
<td><p>The network type you choose when modifying a cluster, either
<code>ipv4</code> | <code>ipv6</code>. IPv6 is supported for workloads
using Redis engine version 6.2 onward or Memcached engine version 1.6.6
on all instances built on the <a
href="https://aws.amazon.com/ec2/nitro/">Nitro system</a>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      CacheCluster = list(
        CacheClusterId = "string",
        ConfigurationEndpoint = list(
          Address = "string",
          Port = 123
        ),
        ClientDownloadLandingPage = "string",
        CacheNodeType = "string",
        Engine = "string",
        EngineVersion = "string",
        CacheClusterStatus = "string",
        NumCacheNodes = 123,
        PreferredAvailabilityZone = "string",
        PreferredOutpostArn = "string",
        CacheClusterCreateTime = as.POSIXct(
          "2015-01-01"
        ),
        PreferredMaintenanceWindow = "string",
        PendingModifiedValues = list(
          NumCacheNodes = 123,
          CacheNodeIdsToRemove = list(
            "string"
          ),
          EngineVersion = "string",
          CacheNodeType = "string",
          AuthTokenStatus = "SETTING"|"ROTATING",
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
          TransitEncryptionMode = "preferred"|"required"
        ),
        NotificationConfiguration = list(
          TopicArn = "string",
          TopicStatus = "string"
        ),
        CacheSecurityGroups = list(
          list(
            CacheSecurityGroupName = "string",
            Status = "string"
          )
        ),
        CacheParameterGroup = list(
          CacheParameterGroupName = "string",
          ParameterApplyStatus = "string",
          CacheNodeIdsToReboot = list(
            "string"
          )
        ),
        CacheSubnetGroupName = "string",
        CacheNodes = list(
          list(
            CacheNodeId = "string",
            CacheNodeStatus = "string",
            CacheNodeCreateTime = as.POSIXct(
              "2015-01-01"
            ),
            Endpoint = list(
              Address = "string",
              Port = 123
            ),
            ParameterGroupStatus = "string",
            SourceCacheNodeId = "string",
            CustomerAvailabilityZone = "string",
            CustomerOutpostArn = "string"
          )
        ),
        AutoMinorVersionUpgrade = TRUE|FALSE,
        SecurityGroups = list(
          list(
            SecurityGroupId = "string",
            Status = "string"
          )
        ),
        ReplicationGroupId = "string",
        SnapshotRetentionLimit = 123,
        SnapshotWindow = "string",
        AuthTokenEnabled = TRUE|FALSE,
        AuthTokenLastModifiedDate = as.POSIXct(
          "2015-01-01"
        ),
        TransitEncryptionEnabled = TRUE|FALSE,
        AtRestEncryptionEnabled = TRUE|FALSE,
        ARN = "string",
        ReplicationGroupLogDeliveryEnabled = TRUE|FALSE,
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
        NetworkType = "ipv4"|"ipv6"|"dual_stack",
        IpDiscovery = "ipv4"|"ipv6",
        TransitEncryptionMode = "preferred"|"required"
      )
    )

### Request syntax

    svc$create_cache_cluster(
      CacheClusterId = "string",
      ReplicationGroupId = "string",
      AZMode = "single-az"|"cross-az",
      PreferredAvailabilityZone = "string",
      PreferredAvailabilityZones = list(
        "string"
      ),
      NumCacheNodes = 123,
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
      OutpostMode = "single-outpost"|"cross-outpost",
      PreferredOutpostArn = "string",
      PreferredOutpostArns = list(
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
      TransitEncryptionEnabled = TRUE|FALSE,
      NetworkType = "ipv4"|"ipv6"|"dual_stack",
      IpDiscovery = "ipv4"|"ipv6"
    )
