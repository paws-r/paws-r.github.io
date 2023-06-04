<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>elasticache</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Amazon ElastiCache

### Description

Amazon ElastiCache is a web service that makes it easier to set up,
operate, and scale a distributed cache in the cloud.

With ElastiCache, customers get all of the benefits of a
high-performance, in-memory cache with less of the administrative burden
involved in launching and managing a distributed cache. The service
makes setup, scaling, and cluster failure handling much simpler than in
a self-managed cache deployment.

In addition, through integration with Amazon CloudWatch, customers get
enhanced visibility into the key performance statistics associated with
their cache and can receive alarms if a part of their cache runs hot.

### Usage

    elasticache(config = list())

### Arguments

<table>
<colgroup>
<col style="width: 15%" />
<col style="width: 85%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="elasticache_:_config">config</code></td>
<td><p>Optional configuration of credentials, endpoint, and/or
region.</p>
<ul>
<li><p><strong>access_key_id</strong>: AWS access key ID</p></li>
<li><p><strong>secret_access_key</strong>: AWS secret access
key</p></li>
<li><p><strong>session_token</strong>: AWS temporary session
token</p></li>
<li><p><strong>profile</strong>: The name of a profile to use. If not
given, then the default profile is used.</p></li>
<li><p><strong>anonymous</strong>: Set anonymous credentials.</p></li>
<li><p><strong>endpoint</strong>: The complete URL to use for the
constructed client.</p></li>
<li><p><strong>region</strong>: The AWS Region used in instantiating the
client.</p></li>
<li><p><strong>close_connection</strong>: Immediately close all HTTP
connections.</p></li>
<li><p><strong>timeout</strong>: The time in seconds till a timeout
exception is thrown when attempting to make a connection. The default is
60 seconds.</p></li>
<li><p><strong>s3_force_path_style</strong>: Set this to
<code>true</code> to force the request to use path-style addressing,
i.e., <code
style="white-space: pre;">⁠http://s3.amazonaws.com/BUCKET/KEY⁠</code>.</p></li>
</ul></td>
</tr>
</tbody>
</table>

### Value

A client for the service. You can call the service's operations using
syntax like `svc$operation(...)`, where `svc` is the name you've
assigned to the client. The available operations are listed in the
Operations section.

### Service syntax

    svc <- elasticache(
      config = list(
        credentials = list(
          creds = list(
            access_key_id = "string",
            secret_access_key = "string",
            session_token = "string"
          ),
          profile = "string",
          anonymous = "logical"
        ),
        endpoint = "string",
        region = "string",
        close_connection = "logical",
        timeout = "numeric",
        s3_force_path_style = "logical"
      )
    )

### Operations

<table>
<tbody>
<tr class="odd">
<td style="text-align: left;"><a href="../elasticache_add_tags_to_resource/"> add_tags_to_resource </a></td>
<td style="text-align: left;">A tag is a key-value pair where the key
and value are case-sensitive</td>
</tr>
<tr class="even">
<td
style="text-align: left;"><a href="../elasticache_authorize_cache_security_group_ingress/"> authorize_cache_security_group_ingress </a></td>
<td style="text-align: left;">Allows network ingress to a cache security
group</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../elasticache_batch_apply_update_action/"> batch_apply_update_action </a></td>
<td style="text-align: left;">Apply the service update</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../elasticache_batch_stop_update_action/"> batch_stop_update_action </a></td>
<td style="text-align: left;">Stop the service update</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../elasticache_complete_migration/"> complete_migration </a></td>
<td style="text-align: left;">Complete the migration of data</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../elasticache_copy_snapshot/"> copy_snapshot </a></td>
<td style="text-align: left;">Makes a copy of an existing snapshot</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../elasticache_create_cache_cluster/"> create_cache_cluster </a></td>
<td style="text-align: left;">Creates a cluster</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../elasticache_create_cache_parameter_group/"> create_cache_parameter_group </a></td>
<td style="text-align: left;">Creates a new Amazon ElastiCache cache
parameter group</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../elasticache_create_cache_security_group/"> create_cache_security_group </a></td>
<td style="text-align: left;">Creates a new cache security group</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../elasticache_create_cache_subnet_group/"> create_cache_subnet_group </a></td>
<td style="text-align: left;">Creates a new cache subnet group</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../elasticache_create_global_replication_group/"> create_global_replication_group </a></td>
<td style="text-align: left;">Global Datastore for Redis offers fully
managed, fast, reliable and secure cross-region replication</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../elasticache_create_replication_group/"> create_replication_group </a></td>
<td style="text-align: left;">Creates a Redis (cluster mode disabled) or
a Redis (cluster mode enabled) replication group</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../elasticache_create_snapshot/"> create_snapshot </a></td>
<td style="text-align: left;">Creates a copy of an entire cluster or
replication group at a specific moment in time</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../elasticache_create_user/"> create_user </a></td>
<td style="text-align: left;">For Redis engine version 6</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../elasticache_create_user_group/"> create_user_group </a></td>
<td style="text-align: left;">For Redis engine version 6</td>
</tr>
<tr class="even">
<td
style="text-align: left;"><a href="../elasticache_decrease_node_groups_in_global_replication_group/"> decrease_node_groups_in_global_replication_group </a></td>
<td style="text-align: left;">Decreases the number of node groups in a
Global datastore</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../elasticache_decrease_replica_count/"> decrease_replica_count </a></td>
<td style="text-align: left;">Dynamically decreases the number of
replicas in a Redis (cluster mode disabled) replication group or the
number of replica nodes in one or more node groups (shards) of a Redis
(cluster mode enabled) replication group</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../elasticache_delete_cache_cluster/"> delete_cache_cluster </a></td>
<td style="text-align: left;">Deletes a previously provisioned
cluster</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../elasticache_delete_cache_parameter_group/"> delete_cache_parameter_group </a></td>
<td style="text-align: left;">Deletes the specified cache parameter
group</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../elasticache_delete_cache_security_group/"> delete_cache_security_group </a></td>
<td style="text-align: left;">Deletes a cache security group</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../elasticache_delete_cache_subnet_group/"> delete_cache_subnet_group </a></td>
<td style="text-align: left;">Deletes a cache subnet group</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../elasticache_delete_global_replication_group/"> delete_global_replication_group </a></td>
<td style="text-align: left;">Deleting a Global datastore is a two-step
process:</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../elasticache_delete_replication_group/"> delete_replication_group </a></td>
<td style="text-align: left;">Deletes an existing replication group</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../elasticache_delete_snapshot/"> delete_snapshot </a></td>
<td style="text-align: left;">Deletes an existing snapshot</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../elasticache_delete_user/"> delete_user </a></td>
<td style="text-align: left;">For Redis engine version 6</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../elasticache_delete_user_group/"> delete_user_group </a></td>
<td style="text-align: left;">For Redis engine version 6</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../elasticache_describe_cache_clusters/"> describe_cache_clusters </a></td>
<td style="text-align: left;">Returns information about all provisioned
clusters if no cluster identifier is specified, or about a specific
cache cluster if a cluster identifier is supplied</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../elasticache_describe_cache_engine_versions/"> describe_cache_engine_versions </a></td>
<td style="text-align: left;">Returns a list of the available cache
engines and their versions</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../elasticache_describe_cache_parameter_groups/"> describe_cache_parameter_groups </a></td>
<td style="text-align: left;">Returns a list of cache parameter group
descriptions</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../elasticache_describe_cache_parameters/"> describe_cache_parameters </a></td>
<td style="text-align: left;">Returns the detailed parameter list for a
particular cache parameter group</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../elasticache_describe_cache_security_groups/"> describe_cache_security_groups </a></td>
<td style="text-align: left;">Returns a list of cache security group
descriptions</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../elasticache_describe_cache_subnet_groups/"> describe_cache_subnet_groups </a></td>
<td style="text-align: left;">Returns a list of cache subnet group
descriptions</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../elasticache_describe_engine_default_parameters/"> describe_engine_default_parameters </a></td>
<td style="text-align: left;">Returns the default engine and system
parameter information for the specified cache engine</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../elasticache_describe_events/"> describe_events </a></td>
<td style="text-align: left;">Returns events related to clusters, cache
security groups, and cache parameter groups</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../elasticache_describe_global_replication_groups/"> describe_global_replication_groups </a></td>
<td style="text-align: left;">Returns information about a particular
global replication group</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../elasticache_describe_replication_groups/"> describe_replication_groups </a></td>
<td style="text-align: left;">Returns information about a particular
replication group</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../elasticache_describe_reserved_cache_nodes/"> describe_reserved_cache_nodes </a></td>
<td style="text-align: left;">Returns information about reserved cache
nodes for this account, or about a specified reserved cache node</td>
</tr>
<tr class="even">
<td
style="text-align: left;"><a href="../elasticache_describe_reserved_cache_nodes_offerings/"> describe_reserved_cache_nodes_offerings </a></td>
<td style="text-align: left;">Lists available reserved cache node
offerings</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../elasticache_describe_service_updates/"> describe_service_updates </a></td>
<td style="text-align: left;">Returns details of the service
updates</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../elasticache_describe_snapshots/"> describe_snapshots </a></td>
<td style="text-align: left;">Returns information about cluster or
replication group snapshots</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../elasticache_describe_update_actions/"> describe_update_actions </a></td>
<td style="text-align: left;">Returns details of the update actions</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../elasticache_describe_user_groups/"> describe_user_groups </a></td>
<td style="text-align: left;">Returns a list of user groups</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../elasticache_describe_users/"> describe_users </a></td>
<td style="text-align: left;">Returns a list of users</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../elasticache_disassociate_global_replication_group/"> disassociate_global_replication_group </a></td>
<td style="text-align: left;">Remove a secondary cluster from the Global
datastore using the Global datastore name</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../elasticache_failover_global_replication_group/"> failover_global_replication_group </a></td>
<td style="text-align: left;">Used to failover the primary region to a
secondary region</td>
</tr>
<tr class="even">
<td
style="text-align: left;"><a href="../elasticache_increase_node_groups_in_global_replication_group/"> increase_node_groups_in_global_replication_group </a></td>
<td style="text-align: left;">Increase the number of node groups in the
Global datastore</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../elasticache_increase_replica_count/"> increase_replica_count </a></td>
<td style="text-align: left;">Dynamically increases the number of
replicas in a Redis (cluster mode disabled) replication group or the
number of replica nodes in one or more node groups (shards) of a Redis
(cluster mode enabled) replication group</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../elasticache_list_allowed_node_type_modifications/"> list_allowed_node_type_modifications </a></td>
<td style="text-align: left;">Lists all available node types that you
can scale your Redis cluster's or replication group's current node
type</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../elasticache_list_tags_for_resource/"> list_tags_for_resource </a></td>
<td style="text-align: left;">Lists all tags currently on a named
resource</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../elasticache_modify_cache_cluster/"> modify_cache_cluster </a></td>
<td style="text-align: left;">Modifies the settings for a cluster</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../elasticache_modify_cache_parameter_group/"> modify_cache_parameter_group </a></td>
<td style="text-align: left;">Modifies the parameters of a cache
parameter group</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../elasticache_modify_cache_subnet_group/"> modify_cache_subnet_group </a></td>
<td style="text-align: left;">Modifies an existing cache subnet
group</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../elasticache_modify_global_replication_group/"> modify_global_replication_group </a></td>
<td style="text-align: left;">Modifies the settings for a Global
datastore</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../elasticache_modify_replication_group/"> modify_replication_group </a></td>
<td style="text-align: left;">Modifies the settings for a replication
group</td>
</tr>
<tr class="odd">
<td
style="text-align: left;"><a href="../elasticache_modify_replication_group_shard_configuration/"> modify_replication_group_shard_configuration </a></td>
<td style="text-align: left;">Modifies a replication group's shards
(node groups) by allowing you to add shards, remove shards, or rebalance
the keyspaces among existing shards</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../elasticache_modify_user/"> modify_user </a></td>
<td style="text-align: left;">Changes user password(s) and/or access
string</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../elasticache_modify_user_group/"> modify_user_group </a></td>
<td style="text-align: left;">Changes the list of users that belong to
the user group</td>
</tr>
<tr class="even">
<td
style="text-align: left;"><a href="../elasticache_purchase_reserved_cache_nodes_offering/"> purchase_reserved_cache_nodes_offering </a></td>
<td style="text-align: left;">Allows you to purchase a reserved cache
node offering</td>
</tr>
<tr class="odd">
<td
style="text-align: left;"><a href="../elasticache_rebalance_slots_in_global_replication_group/"> rebalance_slots_in_global_replication_group </a></td>
<td style="text-align: left;">Redistribute slots to ensure uniform
distribution across existing shards in the cluster</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../elasticache_reboot_cache_cluster/"> reboot_cache_cluster </a></td>
<td style="text-align: left;">Reboots some, or all, of the cache nodes
within a provisioned cluster</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../elasticache_remove_tags_from_resource/"> remove_tags_from_resource </a></td>
<td style="text-align: left;">Removes the tags identified by the TagKeys
list from the named resource</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../elasticache_reset_cache_parameter_group/"> reset_cache_parameter_group </a></td>
<td style="text-align: left;">Modifies the parameters of a cache
parameter group to the engine or system default value</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../elasticache_revoke_cache_security_group_ingress/"> revoke_cache_security_group_ingress </a></td>
<td style="text-align: left;">Revokes ingress from a cache security
group</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../elasticache_start_migration/"> start_migration </a></td>
<td style="text-align: left;">Start the migration of data</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../elasticache_test_failover/"> test_failover </a></td>
<td style="text-align: left;">Represents the input of a TestFailover
operation which test automatic failover on a specified node group
(called shard in the console) in a replication group (called cluster in
the console)</td>
</tr>
</tbody>
</table>

### Examples

    ## Not run: 
    svc <- elasticache()
    svc$add_tags_to_resource(
      Foo = 123
    )

    ## End(Not run)
