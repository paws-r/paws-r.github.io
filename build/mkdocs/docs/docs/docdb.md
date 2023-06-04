<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>docdb</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Amazon DocumentDB with MongoDB compatibility

### Description

Amazon DocumentDB API documentation

### Usage

    docdb(config = list())

### Arguments

<table>
<colgroup>
<col style="width: 15%" />
<col style="width: 85%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="docdb_:_config">config</code></td>
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

    svc <- docdb(
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
<td style="text-align: left;"><a href="../docdb_add_source_identifier_to_subscription/"> add_source_identifier_to_subscription </a></td>
<td style="text-align: left;">Adds a source identifier to an existing
event notification subscription</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../docdb_add_tags_to_resource/"> add_tags_to_resource </a></td>
<td style="text-align: left;">Adds metadata tags to an Amazon DocumentDB
resource</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../docdb_apply_pending_maintenance_action/"> apply_pending_maintenance_action </a></td>
<td style="text-align: left;">Applies a pending maintenance action to a
resource (for example, to an Amazon DocumentDB instance)</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../docdb_copy_db_cluster_parameter_group/"> copy_db_cluster_parameter_group </a></td>
<td style="text-align: left;">Copies the specified cluster parameter
group</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../docdb_copy_db_cluster_snapshot/"> copy_db_cluster_snapshot </a></td>
<td style="text-align: left;">Copies a snapshot of a cluster</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../docdb_create_db_cluster/"> create_db_cluster </a></td>
<td style="text-align: left;">Creates a new Amazon DocumentDB
cluster</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../docdb_create_db_cluster_parameter_group/"> create_db_cluster_parameter_group </a></td>
<td style="text-align: left;">Creates a new cluster parameter group</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../docdb_create_db_cluster_snapshot/"> create_db_cluster_snapshot </a></td>
<td style="text-align: left;">Creates a snapshot of a cluster</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../docdb_create_db_instance/"> create_db_instance </a></td>
<td style="text-align: left;">Creates a new instance</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../docdb_create_db_subnet_group/"> create_db_subnet_group </a></td>
<td style="text-align: left;">Creates a new subnet group</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../docdb_create_event_subscription/"> create_event_subscription </a></td>
<td style="text-align: left;">Creates an Amazon DocumentDB event
notification subscription</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../docdb_create_global_cluster/"> create_global_cluster </a></td>
<td style="text-align: left;">Creates an Amazon DocumentDB global
cluster that can span multiple multiple Amazon Web Services Regions</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../docdb_delete_db_cluster/"> delete_db_cluster </a></td>
<td style="text-align: left;">Deletes a previously provisioned
cluster</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../docdb_delete_db_cluster_parameter_group/"> delete_db_cluster_parameter_group </a></td>
<td style="text-align: left;">Deletes a specified cluster parameter
group</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../docdb_delete_db_cluster_snapshot/"> delete_db_cluster_snapshot </a></td>
<td style="text-align: left;">Deletes a cluster snapshot</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../docdb_delete_db_instance/"> delete_db_instance </a></td>
<td style="text-align: left;">Deletes a previously provisioned
instance</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../docdb_delete_db_subnet_group/"> delete_db_subnet_group </a></td>
<td style="text-align: left;">Deletes a subnet group</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../docdb_delete_event_subscription/"> delete_event_subscription </a></td>
<td style="text-align: left;">Deletes an Amazon DocumentDB event
notification subscription</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../docdb_delete_global_cluster/"> delete_global_cluster </a></td>
<td style="text-align: left;">Deletes a global cluster</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../docdb_describe_certificates/"> describe_certificates </a></td>
<td style="text-align: left;">Returns a list of certificate authority
(CA) certificates provided by Amazon DocumentDB for this Amazon Web
Services account</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../docdb_describe_db_cluster_parameter_groups/"> describe_db_cluster_parameter_groups </a></td>
<td style="text-align: left;">Returns a list of DBClusterParameterGroup
descriptions</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../docdb_describe_db_cluster_parameters/"> describe_db_cluster_parameters </a></td>
<td style="text-align: left;">Returns the detailed parameter list for a
particular cluster parameter group</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../docdb_describe_db_clusters/"> describe_db_clusters </a></td>
<td style="text-align: left;">Returns information about provisioned
Amazon DocumentDB clusters</td>
</tr>
<tr class="even">
<td
style="text-align: left;"><a href="../docdb_describe_db_cluster_snapshot_attributes/"> describe_db_cluster_snapshot_attributes </a></td>
<td style="text-align: left;">Returns a list of cluster snapshot
attribute names and values for a manual DB cluster snapshot</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../docdb_describe_db_cluster_snapshots/"> describe_db_cluster_snapshots </a></td>
<td style="text-align: left;">Returns information about cluster
snapshots</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../docdb_describe_db_engine_versions/"> describe_db_engine_versions </a></td>
<td style="text-align: left;">Returns a list of the available
engines</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../docdb_describe_db_instances/"> describe_db_instances </a></td>
<td style="text-align: left;">Returns information about provisioned
Amazon DocumentDB instances</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../docdb_describe_db_subnet_groups/"> describe_db_subnet_groups </a></td>
<td style="text-align: left;">Returns a list of DBSubnetGroup
descriptions</td>
</tr>
<tr class="odd">
<td
style="text-align: left;"><a href="../docdb_describe_engine_default_cluster_parameters/"> describe_engine_default_cluster_parameters </a></td>
<td style="text-align: left;">Returns the default engine and system
parameter information for the cluster database engine</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../docdb_describe_event_categories/"> describe_event_categories </a></td>
<td style="text-align: left;">Displays a list of categories for all
event source types, or, if specified, for a specified source type</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../docdb_describe_events/"> describe_events </a></td>
<td style="text-align: left;">Returns events related to instances,
security groups, snapshots, and DB parameter groups for the past 14
days</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../docdb_describe_event_subscriptions/"> describe_event_subscriptions </a></td>
<td style="text-align: left;">Lists all the subscription descriptions
for a customer account</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../docdb_describe_global_clusters/"> describe_global_clusters </a></td>
<td style="text-align: left;">Returns information about Amazon
DocumentDB global clusters</td>
</tr>
<tr class="even">
<td
style="text-align: left;"><a href="../docdb_describe_orderable_db_instance_options/"> describe_orderable_db_instance_options </a></td>
<td style="text-align: left;">Returns a list of orderable instance
options for the specified engine</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../docdb_describe_pending_maintenance_actions/"> describe_pending_maintenance_actions </a></td>
<td style="text-align: left;">Returns a list of resources (for example,
instances) that have at least one pending maintenance action</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../docdb_failover_db_cluster/"> failover_db_cluster </a></td>
<td style="text-align: left;">Forces a failover for a cluster</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../docdb_list_tags_for_resource/"> list_tags_for_resource </a></td>
<td style="text-align: left;">Lists all tags on an Amazon DocumentDB
resource</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../docdb_modify_db_cluster/"> modify_db_cluster </a></td>
<td style="text-align: left;">Modifies a setting for an Amazon
DocumentDB cluster</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../docdb_modify_db_cluster_parameter_group/"> modify_db_cluster_parameter_group </a></td>
<td style="text-align: left;">Modifies the parameters of a cluster
parameter group</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../docdb_modify_db_cluster_snapshot_attribute/"> modify_db_cluster_snapshot_attribute </a></td>
<td style="text-align: left;">Adds an attribute and values to, or
removes an attribute and values from, a manual cluster snapshot</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../docdb_modify_db_instance/"> modify_db_instance </a></td>
<td style="text-align: left;">Modifies settings for an instance</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../docdb_modify_db_subnet_group/"> modify_db_subnet_group </a></td>
<td style="text-align: left;">Modifies an existing subnet group</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../docdb_modify_event_subscription/"> modify_event_subscription </a></td>
<td style="text-align: left;">Modifies an existing Amazon DocumentDB
event notification subscription</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../docdb_modify_global_cluster/"> modify_global_cluster </a></td>
<td style="text-align: left;">Modify a setting for an Amazon DocumentDB
global cluster</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../docdb_reboot_db_instance/"> reboot_db_instance </a></td>
<td style="text-align: left;">You might need to reboot your instance,
usually for maintenance reasons</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../docdb_remove_from_global_cluster/"> remove_from_global_cluster </a></td>
<td style="text-align: left;">Detaches an Amazon DocumentDB secondary
cluster from a global cluster</td>
</tr>
<tr class="odd">
<td
style="text-align: left;"><a href="../docdb_remove_source_identifier_from_subscription/"> remove_source_identifier_from_subscription </a></td>
<td style="text-align: left;">Removes a source identifier from an
existing Amazon DocumentDB event notification subscription</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../docdb_remove_tags_from_resource/"> remove_tags_from_resource </a></td>
<td style="text-align: left;">Removes metadata tags from an Amazon
DocumentDB resource</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../docdb_reset_db_cluster_parameter_group/"> reset_db_cluster_parameter_group </a></td>
<td style="text-align: left;">Modifies the parameters of a cluster
parameter group to the default value</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../docdb_restore_db_cluster_from_snapshot/"> restore_db_cluster_from_snapshot </a></td>
<td style="text-align: left;">Creates a new cluster from a snapshot or
cluster snapshot</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../docdb_restore_db_cluster_to_point_in_time/"> restore_db_cluster_to_point_in_time </a></td>
<td style="text-align: left;">Restores a cluster to an arbitrary point
in time</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../docdb_start_db_cluster/"> start_db_cluster </a></td>
<td style="text-align: left;">Restarts the stopped cluster that is
specified by DBClusterIdentifier</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../docdb_stop_db_cluster/"> stop_db_cluster </a></td>
<td style="text-align: left;">Stops the running cluster that is
specified by DBClusterIdentifier</td>
</tr>
</tbody>
</table>

### Examples

    ## Not run: 
    svc <- docdb()
    svc$add_source_identifier_to_subscription(
      Foo = 123
    )

    ## End(Not run)
