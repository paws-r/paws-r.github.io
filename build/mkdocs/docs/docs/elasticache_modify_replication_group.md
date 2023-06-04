<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>elasticache_modify_replication_group</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Modifies the settings for a replication group

### Description

Modifies the settings for a replication group.

-   [Scaling for Amazon ElastiCache for Redis (cluster mode
    enabled)](https://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/scaling-redis-cluster-mode-enabled.html)
    in the ElastiCache User Guide

-   `modify_replication_group_shard_configuration` in the ElastiCache
    API Reference

This operation is valid for Redis only.

### Usage

    elasticache_modify_replication_group(ReplicationGroupId,
      ReplicationGroupDescription, PrimaryClusterId, SnapshottingClusterId,
      AutomaticFailoverEnabled, MultiAZEnabled, NodeGroupId,
      CacheSecurityGroupNames, SecurityGroupIds, PreferredMaintenanceWindow,
      NotificationTopicArn, CacheParameterGroupName, NotificationTopicStatus,
      ApplyImmediately, EngineVersion, AutoMinorVersionUpgrade,
      SnapshotRetentionLimit, SnapshotWindow, CacheNodeType, AuthToken,
      AuthTokenUpdateStrategy, UserGroupIdsToAdd, UserGroupIdsToRemove,
      RemoveUserGroups, LogDeliveryConfigurations, IpDiscovery,
      TransitEncryptionEnabled, TransitEncryptionMode, ClusterMode)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="elasticache_modify_replication_group_:_ReplicationGroupId">ReplicationGroupId</code></td>
<td><p>[required] The identifier of the replication group to
modify.</p></td>
</tr>
<tr class="even">
<td><code
id="elasticache_modify_replication_group_:_ReplicationGroupDescription">ReplicationGroupDescription</code></td>
<td><p>A description for the replication group. Maximum length is 255
characters.</p></td>
</tr>
<tr class="odd">
<td><code
id="elasticache_modify_replication_group_:_PrimaryClusterId">PrimaryClusterId</code></td>
<td><p>For replication groups with a single primary, if this parameter
is specified, ElastiCache promotes the specified cluster in the
specified replication group to the primary role. The nodes of all other
clusters in the replication group are read replicas.</p></td>
</tr>
<tr class="even">
<td><code
id="elasticache_modify_replication_group_:_SnapshottingClusterId">SnapshottingClusterId</code></td>
<td><p>The cluster ID that is used as the daily snapshot source for the
replication group. This parameter cannot be set for Redis (cluster mode
enabled) replication groups.</p></td>
</tr>
<tr class="odd">
<td><code
id="elasticache_modify_replication_group_:_AutomaticFailoverEnabled">AutomaticFailoverEnabled</code></td>
<td><p>Determines whether a read replica is automatically promoted to
read/write primary if the existing primary encounters a failure.</p>
<p>Valid values: <code>true</code> | <code>false</code></p></td>
</tr>
<tr class="even">
<td><code
id="elasticache_modify_replication_group_:_MultiAZEnabled">MultiAZEnabled</code></td>
<td><p>A flag to indicate MultiAZ is enabled.</p></td>
</tr>
<tr class="odd">
<td><code
id="elasticache_modify_replication_group_:_NodeGroupId">NodeGroupId</code></td>
<td><p>Deprecated. This parameter is not used.</p></td>
</tr>
<tr class="even">
<td><code
id="elasticache_modify_replication_group_:_CacheSecurityGroupNames">CacheSecurityGroupNames</code></td>
<td><p>A list of cache security group names to authorize for the
clusters in this replication group. This change is asynchronously
applied as soon as possible.</p>
<p>This parameter can be used only with replication group containing
clusters running outside of an Amazon Virtual Private Cloud (Amazon
VPC).</p>
<p>Constraints: Must contain no more than 255 alphanumeric characters.
Must not be <code>Default</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="elasticache_modify_replication_group_:_SecurityGroupIds">SecurityGroupIds</code></td>
<td><p>Specifies the VPC Security Groups associated with the clusters in
the replication group.</p>
<p>This parameter can be used only with replication group containing
clusters running in an Amazon Virtual Private Cloud (Amazon
VPC).</p></td>
</tr>
<tr class="even">
<td><code
id="elasticache_modify_replication_group_:_PreferredMaintenanceWindow">PreferredMaintenanceWindow</code></td>
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
id="elasticache_modify_replication_group_:_NotificationTopicArn">NotificationTopicArn</code></td>
<td><p>The Amazon Resource Name (ARN) of the Amazon SNS topic to which
notifications are sent.</p>
<p>The Amazon SNS topic owner must be same as the replication group
owner.</p></td>
</tr>
<tr class="even">
<td><code
id="elasticache_modify_replication_group_:_CacheParameterGroupName">CacheParameterGroupName</code></td>
<td><p>The name of the cache parameter group to apply to all of the
clusters in this replication group. This change is asynchronously
applied as soon as possible for parameters when the
<code>ApplyImmediately</code> parameter is specified as
<code>true</code> for this request.</p></td>
</tr>
<tr class="odd">
<td><code
id="elasticache_modify_replication_group_:_NotificationTopicStatus">NotificationTopicStatus</code></td>
<td><p>The status of the Amazon SNS notification topic for the
replication group. Notifications are sent only if the status is
<code>active</code>.</p>
<p>Valid values: <code>active</code> | <code>inactive</code></p></td>
</tr>
<tr class="even">
<td><code
id="elasticache_modify_replication_group_:_ApplyImmediately">ApplyImmediately</code></td>
<td><p>If <code>true</code>, this parameter causes the modifications in
this request and any pending modifications to be applied, asynchronously
and as soon as possible, regardless of the
<code>PreferredMaintenanceWindow</code> setting for the replication
group.</p>
<p>If <code>false</code>, changes to the nodes in the replication group
are applied on the next maintenance reboot, or the next failure reboot,
whichever occurs first.</p>
<p>Valid values: <code>true</code> | <code>false</code></p>
<p>Default: <code>false</code></p></td>
</tr>
<tr class="odd">
<td><code
id="elasticache_modify_replication_group_:_EngineVersion">EngineVersion</code></td>
<td><p>The upgraded version of the cache engine to be run on the
clusters in the replication group.</p>
<p><strong>Important:</strong> You can upgrade to a newer engine version
(see <a
href="https://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/SelectEngine.html#VersionManagement">Selecting
a Cache Engine and Version</a>), but you cannot downgrade to an earlier
engine version. If you want to use an earlier engine version, you must
delete the existing replication group and create it anew with the
earlier engine version.</p></td>
</tr>
<tr class="even">
<td><code
id="elasticache_modify_replication_group_:_AutoMinorVersionUpgrade">AutoMinorVersionUpgrade</code></td>
<td><p>If you are running Redis engine version 6.0 or later, set this
parameter to yes if you want to opt-in to the next auto minor version
upgrade campaign. This parameter is disabled for previous
versions.</p></td>
</tr>
<tr class="odd">
<td><code
id="elasticache_modify_replication_group_:_SnapshotRetentionLimit">SnapshotRetentionLimit</code></td>
<td><p>The number of days for which ElastiCache retains automatic node
group (shard) snapshots before deleting them. For example, if you set
<code>SnapshotRetentionLimit</code> to 5, a snapshot that was taken
today is retained for 5 days before being deleted.</p>
<p><strong>Important</strong> If the value of SnapshotRetentionLimit is
set to zero (0), backups are turned off.</p></td>
</tr>
<tr class="even">
<td><code
id="elasticache_modify_replication_group_:_SnapshotWindow">SnapshotWindow</code></td>
<td><p>The daily time range (in UTC) during which ElastiCache begins
taking a daily snapshot of the node group (shard) specified by
<code>SnapshottingClusterId</code>.</p>
<p>Example: <code>05:00-09:00</code></p>
<p>If you do not specify this parameter, ElastiCache automatically
chooses an appropriate time range.</p></td>
</tr>
<tr class="odd">
<td><code
id="elasticache_modify_replication_group_:_CacheNodeType">CacheNodeType</code></td>
<td><p>A valid cache node type that you want to scale this replication
group to.</p></td>
</tr>
<tr class="even">
<td><code
id="elasticache_modify_replication_group_:_AuthToken">AuthToken</code></td>
<td><p>Reserved parameter. The password used to access a password
protected server. This parameter must be specified with the
<code>auth-token-update-strategy </code> parameter. Password
constraints:</p>
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
id="elasticache_modify_replication_group_:_AuthTokenUpdateStrategy">AuthTokenUpdateStrategy</code></td>
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
id="elasticache_modify_replication_group_:_UserGroupIdsToAdd">UserGroupIdsToAdd</code></td>
<td><p>The ID of the user group you are associating with the replication
group.</p></td>
</tr>
<tr class="odd">
<td><code
id="elasticache_modify_replication_group_:_UserGroupIdsToRemove">UserGroupIdsToRemove</code></td>
<td><p>The ID of the user group to disassociate from the replication
group, meaning the users in the group no longer can access the
replication group.</p></td>
</tr>
<tr class="even">
<td><code
id="elasticache_modify_replication_group_:_RemoveUserGroups">RemoveUserGroups</code></td>
<td><p>Removes the user group associated with this replication
group.</p></td>
</tr>
<tr class="odd">
<td><code
id="elasticache_modify_replication_group_:_LogDeliveryConfigurations">LogDeliveryConfigurations</code></td>
<td><p>Specifies the destination, format and type of the logs.</p></td>
</tr>
<tr class="even">
<td><code
id="elasticache_modify_replication_group_:_IpDiscovery">IpDiscovery</code></td>
<td><p>The network type you choose when modifying a cluster, either
<code>ipv4</code> | <code>ipv6</code>. IPv6 is supported for workloads
using Redis engine version 6.2 onward or Memcached engine version 1.6.6
on all instances built on the <a
href="https://aws.amazon.com/ec2/nitro/">Nitro system</a>.</p></td>
</tr>
<tr class="odd">
<td><code
id="elasticache_modify_replication_group_:_TransitEncryptionEnabled">TransitEncryptionEnabled</code></td>
<td><p>A flag that enables in-transit encryption when set to true. If
you are enabling in-transit encryption for an existing cluster, you must
also set <code>TransitEncryptionMode</code> to
<code>preferred</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="elasticache_modify_replication_group_:_TransitEncryptionMode">TransitEncryptionMode</code></td>
<td><p>A setting that allows you to migrate your clients to use
in-transit encryption, with no downtime.</p>
<p>You must set <code>TransitEncryptionEnabled</code> to
<code>true</code>, for your existing cluster, and set
<code>TransitEncryptionMode</code> to <code>preferred</code> in the same
request to allow both encrypted and unencrypted connections at the same
time. Once you migrate all your Redis clients to use encrypted
connections you can set the value to <code>required</code> to allow
encrypted connections only.</p>
<p>Setting <code>TransitEncryptionMode</code> to <code>required</code>
is a two-step process that requires you to first set the
<code>TransitEncryptionMode</code> to <code>preferred</code>, after that
you can set <code>TransitEncryptionMode</code> to
<code>required</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="elasticache_modify_replication_group_:_ClusterMode">ClusterMode</code></td>
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

    svc$modify_replication_group(
      ReplicationGroupId = "string",
      ReplicationGroupDescription = "string",
      PrimaryClusterId = "string",
      SnapshottingClusterId = "string",
      AutomaticFailoverEnabled = TRUE|FALSE,
      MultiAZEnabled = TRUE|FALSE,
      NodeGroupId = "string",
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
      UserGroupIdsToAdd = list(
        "string"
      ),
      UserGroupIdsToRemove = list(
        "string"
      ),
      RemoveUserGroups = TRUE|FALSE,
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
      IpDiscovery = "ipv4"|"ipv6",
      TransitEncryptionEnabled = TRUE|FALSE,
      TransitEncryptionMode = "preferred"|"required",
      ClusterMode = "enabled"|"disabled"|"compatible"
    )
