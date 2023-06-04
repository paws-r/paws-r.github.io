<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>elasticache_modify_cache_cluster</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Modifies the settings for a cluster

### Description

Modifies the settings for a cluster. You can use this operation to
change one or more cluster configuration parameters by specifying the
parameters and the new values.

### Usage

    elasticache_modify_cache_cluster(CacheClusterId, NumCacheNodes,
      CacheNodeIdsToRemove, AZMode, NewAvailabilityZones,
      CacheSecurityGroupNames, SecurityGroupIds, PreferredMaintenanceWindow,
      NotificationTopicArn, CacheParameterGroupName, NotificationTopicStatus,
      ApplyImmediately, EngineVersion, AutoMinorVersionUpgrade,
      SnapshotRetentionLimit, SnapshotWindow, CacheNodeType, AuthToken,
      AuthTokenUpdateStrategy, LogDeliveryConfigurations, IpDiscovery)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="elasticache_modify_cache_cluster_:_CacheClusterId">CacheClusterId</code></td>
<td><p>[required] The cluster identifier. This value is stored as a
lowercase string.</p></td>
</tr>
<tr class="even">
<td><code
id="elasticache_modify_cache_cluster_:_NumCacheNodes">NumCacheNodes</code></td>
<td><p>The number of cache nodes that the cluster should have. If the
value for <code>NumCacheNodes</code> is greater than the sum of the
number of current cache nodes and the number of cache nodes pending
creation (which may be zero), more nodes are added. If the value is less
than the number of existing cache nodes, nodes are removed. If the value
is equal to the number of current cache nodes, any pending add or remove
requests are canceled.</p>
<p>If you are removing cache nodes, you must use the
<code>CacheNodeIdsToRemove</code> parameter to provide the IDs of the
specific cache nodes to remove.</p>
<p>For clusters running Redis, this value must be 1. For clusters
running Memcached, this value must be between 1 and 40.</p>
<p>Adding or removing Memcached cache nodes can be applied immediately
or as a pending operation (see <code>ApplyImmediately</code>).</p>
<p>A pending operation to modify the number of cache nodes in a cluster
during its maintenance window, whether by adding or removing nodes in
accordance with the scale out architecture, is not queued. The
customer's latest request to add or remove nodes to the cluster
overrides any previous pending operations to modify the number of cache
nodes in the cluster. For example, a request to remove 2 nodes would
override a previous pending operation to remove 3 nodes. Similarly, a
request to add 2 nodes would override a previous pending operation to
remove 3 nodes and vice versa. As Memcached cache nodes may now be
provisioned in different Availability Zones with flexible cache node
placement, a request to add nodes does not automatically override a
previous pending operation to add nodes. The customer can modify the
previous pending operation to add more nodes or explicitly cancel the
pending request and retry the new request. To cancel pending operations
to modify the number of cache nodes in a cluster, use the
<code>modify_cache_cluster</code> request and set
<code>NumCacheNodes</code> equal to the number of cache nodes currently
in the cluster.</p></td>
</tr>
<tr class="odd">
<td><code
id="elasticache_modify_cache_cluster_:_CacheNodeIdsToRemove">CacheNodeIdsToRemove</code></td>
<td><p>A list of cache node IDs to be removed. A node ID is a numeric
identifier (0001, 0002, etc.). This parameter is only valid when
<code>NumCacheNodes</code> is less than the existing number of cache
nodes. The number of cache node IDs supplied in this parameter must
match the difference between the existing number of cache nodes in the
cluster or pending cache nodes, whichever is greater, and the value of
<code>NumCacheNodes</code> in the request.</p>
<p>For example: If you have 3 active cache nodes, 7 pending cache nodes,
and the number of cache nodes in this <code>modify_cache_cluster</code>
call is 5, you must list 2 (7 - 5) cache node IDs to remove.</p></td>
</tr>
<tr class="even">
<td><code
id="elasticache_modify_cache_cluster_:_AZMode">AZMode</code></td>
<td><p>Specifies whether the new nodes in this Memcached cluster are all
created in a single Availability Zone or created across multiple
Availability Zones.</p>
<p>Valid values: <code>single-az</code> | <code>cross-az</code>.</p>
<p>This option is only supported for Memcached clusters.</p>
<p>You cannot specify <code>single-az</code> if the Memcached cluster
already has cache nodes in different Availability Zones. If
<code>cross-az</code> is specified, existing Memcached nodes remain in
their current Availability Zone.</p>
<p>Only newly created nodes are located in different Availability
Zones.</p></td>
</tr>
<tr class="odd">
<td><code
id="elasticache_modify_cache_cluster_:_NewAvailabilityZones">NewAvailabilityZones</code></td>
<td><p>This option is only supported on Memcached clusters.</p>
<p>The list of Availability Zones where the new Memcached cache nodes
are created.</p>
<p>This parameter is only valid when <code>NumCacheNodes</code> in the
request is greater than the sum of the number of active cache nodes and
the number of cache nodes pending creation (which may be zero). The
number of Availability Zones supplied in this list must match the cache
nodes being added in this request.</p>
<p>Scenarios:</p>
<ul>
<li><p><strong>Scenario 1:</strong> You have 3 active nodes and wish to
add 2 nodes. Specify <code>NumCacheNodes=5</code> (3 + 2) and optionally
specify two Availability Zones for the two new nodes.</p></li>
<li><p><strong>Scenario 2:</strong> You have 3 active nodes and 2 nodes
pending creation (from the scenario 1 call) and want to add 1 more node.
Specify <code>NumCacheNodes=6</code> ((3 + 2) + 1) and optionally
specify an Availability Zone for the new node.</p></li>
<li><p><strong>Scenario 3:</strong> You want to cancel all pending
operations. Specify <code>NumCacheNodes=3</code> to cancel all pending
operations.</p></li>
</ul>
<p>The Availability Zone placement of nodes pending creation cannot be
modified. If you wish to cancel any nodes pending creation, add 0 nodes
by setting <code>NumCacheNodes</code> to the number of current
nodes.</p>
<p>If <code>cross-az</code> is specified, existing Memcached nodes
remain in their current Availability Zone. Only newly created nodes can
be located in different Availability Zones. For guidance on how to move
existing Memcached nodes to different Availability Zones, see the
<strong>Availability Zone Considerations</strong> section of <a
href="https://docs.aws.amazon.com/AmazonElastiCache/latest/mem-ug/CacheNodes.SupportedTypes.html">Cache
Node Considerations for Memcached</a>.</p>
<p><strong>Impact of new add/remove requests upon pending
requests</strong></p>
<ul>
<li><p>Scenario-1</p>
<ul>
<li><p>Pending Action: Delete</p></li>
<li><p>New Request: Delete</p></li>
<li><p>Result: The new delete, pending or immediate, replaces the
pending delete.</p></li>
</ul></li>
<li><p>Scenario-2</p>
<ul>
<li><p>Pending Action: Delete</p></li>
<li><p>New Request: Create</p></li>
<li><p>Result: The new create, pending or immediate, replaces the
pending delete.</p></li>
</ul></li>
<li><p>Scenario-3</p>
<ul>
<li><p>Pending Action: Create</p></li>
<li><p>New Request: Delete</p></li>
<li><p>Result: The new delete, pending or immediate, replaces the
pending create.</p></li>
</ul></li>
<li><p>Scenario-4</p>
<ul>
<li><p>Pending Action: Create</p></li>
<li><p>New Request: Create</p></li>
<li><p>Result: The new create is added to the pending create.</p>
<p><strong>Important:</strong> If the new create request is
<strong>Apply Immediately - Yes</strong>, all creates are performed
immediately. If the new create request is <strong>Apply Immediately -
No</strong>, all creates are pending.</p></li>
</ul></li>
</ul></td>
</tr>
<tr class="even">
<td><code
id="elasticache_modify_cache_cluster_:_CacheSecurityGroupNames">CacheSecurityGroupNames</code></td>
<td><p>A list of cache security group names to authorize on this
cluster. This change is asynchronously applied as soon as possible.</p>
<p>You can use this parameter only with clusters that are created
outside of an Amazon Virtual Private Cloud (Amazon VPC).</p>
<p>Constraints: Must contain no more than 255 alphanumeric characters.
Must not be "Default".</p></td>
</tr>
<tr class="odd">
<td><code
id="elasticache_modify_cache_cluster_:_SecurityGroupIds">SecurityGroupIds</code></td>
<td><p>Specifies the VPC Security Groups associated with the
cluster.</p>
<p>This parameter can be used only with clusters that are created in an
Amazon Virtual Private Cloud (Amazon VPC).</p></td>
</tr>
<tr class="even">
<td><code
id="elasticache_modify_cache_cluster_:_PreferredMaintenanceWindow">PreferredMaintenanceWindow</code></td>
<td><p>Specifies the weekly time range during which maintenance on the
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
id="elasticache_modify_cache_cluster_:_NotificationTopicArn">NotificationTopicArn</code></td>
<td><p>The Amazon Resource Name (ARN) of the Amazon SNS topic to which
notifications are sent.</p>
<p>The Amazon SNS topic owner must be same as the cluster
owner.</p></td>
</tr>
<tr class="even">
<td><code
id="elasticache_modify_cache_cluster_:_CacheParameterGroupName">CacheParameterGroupName</code></td>
<td><p>The name of the cache parameter group to apply to this cluster.
This change is asynchronously applied as soon as possible for parameters
when the <code>ApplyImmediately</code> parameter is specified as
<code>true</code> for this request.</p></td>
</tr>
<tr class="odd">
<td><code
id="elasticache_modify_cache_cluster_:_NotificationTopicStatus">NotificationTopicStatus</code></td>
<td><p>The status of the Amazon SNS notification topic. Notifications
are sent only if the status is <code>active</code>.</p>
<p>Valid values: <code>active</code> | <code>inactive</code></p></td>
</tr>
<tr class="even">
<td><code
id="elasticache_modify_cache_cluster_:_ApplyImmediately">ApplyImmediately</code></td>
<td><p>If <code>true</code>, this parameter causes the modifications in
this request and any pending modifications to be applied, asynchronously
and as soon as possible, regardless of the
<code>PreferredMaintenanceWindow</code> setting for the cluster.</p>
<p>If <code>false</code>, changes to the cluster are applied on the next
maintenance reboot, or the next failure reboot, whichever occurs
first.</p>
<p>If you perform a <code>modify_cache_cluster</code> before a pending
modification is applied, the pending modification is replaced by the
newer modification.</p>
<p>Valid values: <code>true</code> | <code>false</code></p>
<p>Default: <code>false</code></p></td>
</tr>
<tr class="odd">
<td><code
id="elasticache_modify_cache_cluster_:_EngineVersion">EngineVersion</code></td>
<td><p>The upgraded version of the cache engine to be run on the cache
nodes.</p>
<p><strong>Important:</strong> You can upgrade to a newer engine version
(see <a
href="https://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/SelectEngine.html#VersionManagement">Selecting
a Cache Engine and Version</a>), but you cannot downgrade to an earlier
engine version. If you want to use an earlier engine version, you must
delete the existing cluster and create it anew with the earlier engine
version.</p></td>
</tr>
<tr class="even">
<td><code
id="elasticache_modify_cache_cluster_:_AutoMinorVersionUpgrade">AutoMinorVersionUpgrade</code></td>
<td><p>If you are running Redis engine version 6.0 or later, set this
parameter to yes if you want to opt-in to the next auto minor version
upgrade campaign. This parameter is disabled for previous
versions.</p></td>
</tr>
<tr class="odd">
<td><code
id="elasticache_modify_cache_cluster_:_SnapshotRetentionLimit">SnapshotRetentionLimit</code></td>
<td><p>The number of days for which ElastiCache retains automatic
cluster snapshots before deleting them. For example, if you set
<code>SnapshotRetentionLimit</code> to 5, a snapshot that was taken
today is retained for 5 days before being deleted.</p>
<p>If the value of <code>SnapshotRetentionLimit</code> is set to zero
(0), backups are turned off.</p></td>
</tr>
<tr class="even">
<td><code
id="elasticache_modify_cache_cluster_:_SnapshotWindow">SnapshotWindow</code></td>
<td><p>The daily time range (in UTC) during which ElastiCache begins
taking a daily snapshot of your cluster.</p></td>
</tr>
<tr class="odd">
<td><code
id="elasticache_modify_cache_cluster_:_CacheNodeType">CacheNodeType</code></td>
<td><p>A valid cache node type that you want to scale this cluster up
to.</p></td>
</tr>
<tr class="even">
<td><code
id="elasticache_modify_cache_cluster_:_AuthToken">AuthToken</code></td>
<td><p>Reserved parameter. The password used to access a password
protected server. This parameter must be specified with the
<code>auth-token-update</code> parameter. Password constraints:</p>
<ul>
<li><p>Must be only printable ASCII characters</p></li>
<li><p>Must be at least 16 characters and no more than 128 characters in
length</p></li>
<li><p>Cannot contain any of the following characters: '/', '"', or '@',
'%'</p></li>
</ul>
<p>For more information, see AUTH password at <a
href="https://redis.io/commands/auth/">AUTH</a>.</p></td>
</tr>
<tr class="odd">
<td><code
id="elasticache_modify_cache_cluster_:_AuthTokenUpdateStrategy">AuthTokenUpdateStrategy</code></td>
<td><p>Specifies the strategy to use to update the AUTH token. This
parameter must be specified with the <code>auth-token</code> parameter.
Possible values:</p>
<ul>
<li><p>Rotate</p></li>
<li><p>Set</p></li>
</ul>
<p>For more information, see <a
href="https://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/auth.html">Authenticating
Users with Redis AUTH</a></p></td>
</tr>
<tr class="even">
<td><code
id="elasticache_modify_cache_cluster_:_LogDeliveryConfigurations">LogDeliveryConfigurations</code></td>
<td><p>Specifies the destination, format and type of the logs.</p></td>
</tr>
<tr class="odd">
<td><code
id="elasticache_modify_cache_cluster_:_IpDiscovery">IpDiscovery</code></td>
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

    svc$modify_cache_cluster(
      CacheClusterId = "string",
      NumCacheNodes = 123,
      CacheNodeIdsToRemove = list(
        "string"
      ),
      AZMode = "single-az"|"cross-az",
      NewAvailabilityZones = list(
        "string"
      ),
      CacheSecurityGroupNames = list(
        "string"
      ),
      SecurityGroupIds = list(
        "string"
      ),
      PreferredMaintenanceWindow = "string",
      NotificationTopicArn = "string",
      CacheParameterGroupName = "string",
      NotificationTopicStatus = "string",
      ApplyImmediately = TRUE|FALSE,
      EngineVersion = "string",
      AutoMinorVersionUpgrade = TRUE|FALSE,
      SnapshotRetentionLimit = 123,
      SnapshotWindow = "string",
      CacheNodeType = "string",
      AuthToken = "string",
      AuthTokenUpdateStrategy = "SET"|"ROTATE"|"DELETE",
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
      IpDiscovery = "ipv4"|"ipv6"
    )
