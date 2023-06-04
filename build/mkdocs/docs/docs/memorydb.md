<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>memorydb</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Amazon MemoryDB

### Description

MemoryDB for Redis is a fully managed, Redis-compatible, in-memory
database that delivers ultra-fast performance and Multi-AZ durability
for modern applications built using microservices architectures.
MemoryDB stores the entire database in-memory, enabling low latency and
high throughput data access. It is compatible with Redis, a popular open
source data store, enabling you to leverage Redis’ flexible and friendly
data structures, APIs, and commands.

### Usage

    memorydb(config = list())

### Arguments

<table>
<colgroup>
<col style="width: 15%" />
<col style="width: 85%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="memorydb_:_config">config</code></td>
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

    svc <- memorydb(
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
<td style="text-align: left;"><a href="../memorydb_batch_update_cluster/"> batch_update_cluster </a></td>
<td style="text-align: left;">Apply the service update to a list of
clusters supplied</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../memorydb_copy_snapshot/"> copy_snapshot </a></td>
<td style="text-align: left;">Makes a copy of an existing snapshot</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../memorydb_create_acl/"> create_acl </a></td>
<td style="text-align: left;">Creates an Access Control List</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../memorydb_create_cluster/"> create_cluster </a></td>
<td style="text-align: left;">Creates a cluster</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../memorydb_create_parameter_group/"> create_parameter_group </a></td>
<td style="text-align: left;">Creates a new MemoryDB parameter
group</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../memorydb_create_snapshot/"> create_snapshot </a></td>
<td style="text-align: left;">Creates a copy of an entire cluster at a
specific moment in time</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../memorydb_create_subnet_group/"> create_subnet_group </a></td>
<td style="text-align: left;">Creates a subnet group</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../memorydb_create_user/"> create_user </a></td>
<td style="text-align: left;">Creates a MemoryDB user</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../memorydb_delete_acl/"> delete_acl </a></td>
<td style="text-align: left;">Deletes an Access Control List</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../memorydb_delete_cluster/"> delete_cluster </a></td>
<td style="text-align: left;">Deletes a cluster</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../memorydb_delete_parameter_group/"> delete_parameter_group </a></td>
<td style="text-align: left;">Deletes the specified parameter group</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../memorydb_delete_snapshot/"> delete_snapshot </a></td>
<td style="text-align: left;">Deletes an existing snapshot</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../memorydb_delete_subnet_group/"> delete_subnet_group </a></td>
<td style="text-align: left;">Deletes a subnet group</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../memorydb_delete_user/"> delete_user </a></td>
<td style="text-align: left;">Deletes a user</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../memorydb_describe_ac_ls/"> describe_ac_ls </a></td>
<td style="text-align: left;">Returns a list of ACLs</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../memorydb_describe_clusters/"> describe_clusters </a></td>
<td style="text-align: left;">Returns information about all provisioned
clusters if no cluster identifier is specified, or about a specific
cluster if a cluster name is supplied</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../memorydb_describe_engine_versions/"> describe_engine_versions </a></td>
<td style="text-align: left;">Returns a list of the available Redis
engine versions</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../memorydb_describe_events/"> describe_events </a></td>
<td style="text-align: left;">Returns events related to clusters,
security groups, and parameter groups</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../memorydb_describe_parameter_groups/"> describe_parameter_groups </a></td>
<td style="text-align: left;">Returns a list of parameter group
descriptions</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../memorydb_describe_parameters/"> describe_parameters </a></td>
<td style="text-align: left;">Returns the detailed parameter list for a
particular parameter group</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../memorydb_describe_reserved_nodes/"> describe_reserved_nodes </a></td>
<td style="text-align: left;">Returns information about reserved nodes
for this account, or about a specified reserved node</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../memorydb_describe_reserved_nodes_offerings/"> describe_reserved_nodes_offerings </a></td>
<td style="text-align: left;">Lists available reserved node
offerings</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../memorydb_describe_service_updates/"> describe_service_updates </a></td>
<td style="text-align: left;">Returns details of the service
updates</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../memorydb_describe_snapshots/"> describe_snapshots </a></td>
<td style="text-align: left;">Returns information about cluster
snapshots</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../memorydb_describe_subnet_groups/"> describe_subnet_groups </a></td>
<td style="text-align: left;">Returns a list of subnet group
descriptions</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../memorydb_describe_users/"> describe_users </a></td>
<td style="text-align: left;">Returns a list of users</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../memorydb_failover_shard/"> failover_shard </a></td>
<td style="text-align: left;">Used to failover a shard</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../memorydb_list_allowed_node_type_updates/"> list_allowed_node_type_updates </a></td>
<td style="text-align: left;">Lists all available node types that you
can scale to from your cluster's current node type</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../memorydb_list_tags/"> list_tags </a></td>
<td style="text-align: left;">Lists all tags currently on a named
resource</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../memorydb_purchase_reserved_nodes_offering/"> purchase_reserved_nodes_offering </a></td>
<td style="text-align: left;">Allows you to purchase a reserved node
offering</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../memorydb_reset_parameter_group/"> reset_parameter_group </a></td>
<td style="text-align: left;">Modifies the parameters of a parameter
group to the engine or system default value</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../memorydb_tag_resource/"> tag_resource </a></td>
<td style="text-align: left;">A tag is a key-value pair where the key
and value are case-sensitive</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../memorydb_untag_resource/"> untag_resource </a></td>
<td style="text-align: left;">Use this operation to remove tags on a
resource</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../memorydb_update_acl/"> update_acl </a></td>
<td style="text-align: left;">Changes the list of users that belong to
the Access Control List</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../memorydb_update_cluster/"> update_cluster </a></td>
<td style="text-align: left;">Modifies the settings for a cluster</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../memorydb_update_parameter_group/"> update_parameter_group </a></td>
<td style="text-align: left;">Updates the parameters of a parameter
group</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../memorydb_update_subnet_group/"> update_subnet_group </a></td>
<td style="text-align: left;">Updates a subnet group</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../memorydb_update_user/"> update_user </a></td>
<td style="text-align: left;">Changes user password(s) and/or access
string</td>
</tr>
</tbody>
</table>

### Examples

    ## Not run: 
    svc <- memorydb()
    svc$batch_update_cluster(
      Foo = 123
    )

    ## End(Not run)
