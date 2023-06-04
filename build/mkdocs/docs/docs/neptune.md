<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>neptune</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Amazon Neptune

### Description

Amazon Neptune is a fast, reliable, fully-managed graph database service
that makes it easy to build and run applications that work with highly
connected datasets. The core of Amazon Neptune is a purpose-built,
high-performance graph database engine optimized for storing billions of
relationships and querying the graph with milliseconds latency. Amazon
Neptune supports popular graph models Property Graph and W3C's RDF, and
their respective query languages Apache TinkerPop Gremlin and SPARQL,
allowing you to easily build queries that efficiently navigate highly
connected datasets. Neptune powers graph use cases such as
recommendation engines, fraud detection, knowledge graphs, drug
discovery, and network security.

This interface reference for Amazon Neptune contains documentation for a
programming or command line interface you can use to manage Amazon
Neptune. Note that Amazon Neptune is asynchronous, which means that some
interfaces might require techniques such as polling or callback
functions to determine when a command has been applied. In this
reference, the parameter descriptions indicate whether a command is
applied immediately, on the next instance reboot, or during the
maintenance window. The reference structure is as follows, and we list
following some related topics from the user guide.

### Usage

    neptune(config = list())

### Arguments

<table>
<colgroup>
<col style="width: 15%" />
<col style="width: 85%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="neptune_:_config">config</code></td>
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

    svc <- neptune(
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
<td style="text-align: left;"><a href="../neptune_add_role_to_db_cluster/"> add_role_to_db_cluster </a></td>
<td style="text-align: left;">Associates an Identity and Access
Management (IAM) role with an Neptune DB cluster</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../neptune_add_source_identifier_to_subscription/"> add_source_identifier_to_subscription </a></td>
<td style="text-align: left;">Adds a source identifier to an existing
event notification subscription</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../neptune_add_tags_to_resource/"> add_tags_to_resource </a></td>
<td style="text-align: left;">Adds metadata tags to an Amazon Neptune
resource</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../neptune_apply_pending_maintenance_action/"> apply_pending_maintenance_action </a></td>
<td style="text-align: left;">Applies a pending maintenance action to a
resource (for example, to a DB instance)</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../neptune_copy_db_cluster_parameter_group/"> copy_db_cluster_parameter_group </a></td>
<td style="text-align: left;">Copies the specified DB cluster parameter
group</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../neptune_copy_db_cluster_snapshot/"> copy_db_cluster_snapshot </a></td>
<td style="text-align: left;">Copies a snapshot of a DB cluster</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../neptune_copy_db_parameter_group/"> copy_db_parameter_group </a></td>
<td style="text-align: left;">Copies the specified DB parameter
group</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../neptune_create_db_cluster/"> create_db_cluster </a></td>
<td style="text-align: left;">Creates a new Amazon Neptune DB
cluster</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../neptune_create_db_cluster_endpoint/"> create_db_cluster_endpoint </a></td>
<td style="text-align: left;">Creates a new custom endpoint and
associates it with an Amazon Neptune DB cluster</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../neptune_create_db_cluster_parameter_group/"> create_db_cluster_parameter_group </a></td>
<td style="text-align: left;">Creates a new DB cluster parameter
group</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../neptune_create_db_cluster_snapshot/"> create_db_cluster_snapshot </a></td>
<td style="text-align: left;">Creates a snapshot of a DB cluster</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../neptune_create_db_instance/"> create_db_instance </a></td>
<td style="text-align: left;">Creates a new DB instance</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../neptune_create_db_parameter_group/"> create_db_parameter_group </a></td>
<td style="text-align: left;">Creates a new DB parameter group</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../neptune_create_db_subnet_group/"> create_db_subnet_group </a></td>
<td style="text-align: left;">Creates a new DB subnet group</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../neptune_create_event_subscription/"> create_event_subscription </a></td>
<td style="text-align: left;">Creates an event notification
subscription</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../neptune_create_global_cluster/"> create_global_cluster </a></td>
<td style="text-align: left;">Creates a Neptune global database spread
across multiple Amazon Regions</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../neptune_delete_db_cluster/"> delete_db_cluster </a></td>
<td style="text-align: left;">The DeleteDBCluster action deletes a
previously provisioned DB cluster</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../neptune_delete_db_cluster_endpoint/"> delete_db_cluster_endpoint </a></td>
<td style="text-align: left;">Deletes a custom endpoint and removes it
from an Amazon Neptune DB cluster</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../neptune_delete_db_cluster_parameter_group/"> delete_db_cluster_parameter_group </a></td>
<td style="text-align: left;">Deletes a specified DB cluster parameter
group</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../neptune_delete_db_cluster_snapshot/"> delete_db_cluster_snapshot </a></td>
<td style="text-align: left;">Deletes a DB cluster snapshot</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../neptune_delete_db_instance/"> delete_db_instance </a></td>
<td style="text-align: left;">The DeleteDBInstance action deletes a
previously provisioned DB instance</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../neptune_delete_db_parameter_group/"> delete_db_parameter_group </a></td>
<td style="text-align: left;">Deletes a specified DBParameterGroup</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../neptune_delete_db_subnet_group/"> delete_db_subnet_group </a></td>
<td style="text-align: left;">Deletes a DB subnet group</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../neptune_delete_event_subscription/"> delete_event_subscription </a></td>
<td style="text-align: left;">Deletes an event notification
subscription</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../neptune_delete_global_cluster/"> delete_global_cluster </a></td>
<td style="text-align: left;">Deletes a global database</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../neptune_describe_db_cluster_endpoints/"> describe_db_cluster_endpoints </a></td>
<td style="text-align: left;">Returns information about endpoints for an
Amazon Neptune DB cluster</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../neptune_describe_db_cluster_parameter_groups/"> describe_db_cluster_parameter_groups </a></td>
<td style="text-align: left;">Returns a list of DBClusterParameterGroup
descriptions</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../neptune_describe_db_cluster_parameters/"> describe_db_cluster_parameters </a></td>
<td style="text-align: left;">Returns the detailed parameter list for a
particular DB cluster parameter group</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../neptune_describe_db_clusters/"> describe_db_clusters </a></td>
<td style="text-align: left;">Returns information about provisioned DB
clusters, and supports pagination</td>
</tr>
<tr class="even">
<td
style="text-align: left;"><a href="../neptune_describe_db_cluster_snapshot_attributes/"> describe_db_cluster_snapshot_attributes </a></td>
<td style="text-align: left;">Returns a list of DB cluster snapshot
attribute names and values for a manual DB cluster snapshot</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../neptune_describe_db_cluster_snapshots/"> describe_db_cluster_snapshots </a></td>
<td style="text-align: left;">Returns information about DB cluster
snapshots</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../neptune_describe_db_engine_versions/"> describe_db_engine_versions </a></td>
<td style="text-align: left;">Returns a list of the available DB
engines</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../neptune_describe_db_instances/"> describe_db_instances </a></td>
<td style="text-align: left;">Returns information about provisioned
instances, and supports pagination</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../neptune_describe_db_parameter_groups/"> describe_db_parameter_groups </a></td>
<td style="text-align: left;">Returns a list of DBParameterGroup
descriptions</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../neptune_describe_db_parameters/"> describe_db_parameters </a></td>
<td style="text-align: left;">Returns the detailed parameter list for a
particular DB parameter group</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../neptune_describe_db_subnet_groups/"> describe_db_subnet_groups </a></td>
<td style="text-align: left;">Returns a list of DBSubnetGroup
descriptions</td>
</tr>
<tr class="odd">
<td
style="text-align: left;"><a href="../neptune_describe_engine_default_cluster_parameters/"> describe_engine_default_cluster_parameters </a></td>
<td style="text-align: left;">Returns the default engine and system
parameter information for the cluster database engine</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../neptune_describe_engine_default_parameters/"> describe_engine_default_parameters </a></td>
<td style="text-align: left;">Returns the default engine and system
parameter information for the specified database engine</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../neptune_describe_event_categories/"> describe_event_categories </a></td>
<td style="text-align: left;">Displays a list of categories for all
event source types, or, if specified, for a specified source type</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../neptune_describe_events/"> describe_events </a></td>
<td style="text-align: left;">Returns events related to DB instances, DB
security groups, DB snapshots, and DB parameter groups for the past 14
days</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../neptune_describe_event_subscriptions/"> describe_event_subscriptions </a></td>
<td style="text-align: left;">Lists all the subscription descriptions
for a customer account</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../neptune_describe_global_clusters/"> describe_global_clusters </a></td>
<td style="text-align: left;">Returns information about Neptune global
database clusters</td>
</tr>
<tr class="odd">
<td
style="text-align: left;"><a href="../neptune_describe_orderable_db_instance_options/"> describe_orderable_db_instance_options </a></td>
<td style="text-align: left;">Returns a list of orderable DB instance
options for the specified engine</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../neptune_describe_pending_maintenance_actions/"> describe_pending_maintenance_actions </a></td>
<td style="text-align: left;">Returns a list of resources (for example,
DB instances) that have at least one pending maintenance action</td>
</tr>
<tr class="odd">
<td
style="text-align: left;"><a href="../neptune_describe_valid_db_instance_modifications/"> describe_valid_db_instance_modifications </a></td>
<td style="text-align: left;">You can call
DescribeValidDBInstanceModifications to learn what modifications you can
make to your DB instance</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../neptune_failover_db_cluster/"> failover_db_cluster </a></td>
<td style="text-align: left;">Forces a failover for a DB cluster</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../neptune_failover_global_cluster/"> failover_global_cluster </a></td>
<td style="text-align: left;">Initiates the failover process for a
Neptune global database</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../neptune_list_tags_for_resource/"> list_tags_for_resource </a></td>
<td style="text-align: left;">Lists all tags on an Amazon Neptune
resource</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../neptune_modify_db_cluster/"> modify_db_cluster </a></td>
<td style="text-align: left;">Modify a setting for a DB cluster</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../neptune_modify_db_cluster_endpoint/"> modify_db_cluster_endpoint </a></td>
<td style="text-align: left;">Modifies the properties of an endpoint in
an Amazon Neptune DB cluster</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../neptune_modify_db_cluster_parameter_group/"> modify_db_cluster_parameter_group </a></td>
<td style="text-align: left;">Modifies the parameters of a DB cluster
parameter group</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../neptune_modify_db_cluster_snapshot_attribute/"> modify_db_cluster_snapshot_attribute </a></td>
<td style="text-align: left;">Adds an attribute and values to, or
removes an attribute and values from, a manual DB cluster snapshot</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../neptune_modify_db_instance/"> modify_db_instance </a></td>
<td style="text-align: left;">Modifies settings for a DB instance</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../neptune_modify_db_parameter_group/"> modify_db_parameter_group </a></td>
<td style="text-align: left;">Modifies the parameters of a DB parameter
group</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../neptune_modify_db_subnet_group/"> modify_db_subnet_group </a></td>
<td style="text-align: left;">Modifies an existing DB subnet group</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../neptune_modify_event_subscription/"> modify_event_subscription </a></td>
<td style="text-align: left;">Modifies an existing event notification
subscription</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../neptune_modify_global_cluster/"> modify_global_cluster </a></td>
<td style="text-align: left;">Modify a setting for an Amazon Neptune
global cluster</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../neptune_promote_read_replica_db_cluster/"> promote_read_replica_db_cluster </a></td>
<td style="text-align: left;">Not supported</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../neptune_reboot_db_instance/"> reboot_db_instance </a></td>
<td style="text-align: left;">You might need to reboot your DB instance,
usually for maintenance reasons</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../neptune_remove_from_global_cluster/"> remove_from_global_cluster </a></td>
<td style="text-align: left;">Detaches a Neptune DB cluster from a
Neptune global database</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../neptune_remove_role_from_db_cluster/"> remove_role_from_db_cluster </a></td>
<td style="text-align: left;">Disassociates an Identity and Access
Management (IAM) role from a DB cluster</td>
</tr>
<tr class="even">
<td
style="text-align: left;"><a href="../neptune_remove_source_identifier_from_subscription/"> remove_source_identifier_from_subscription </a></td>
<td style="text-align: left;">Removes a source identifier from an
existing event notification subscription</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../neptune_remove_tags_from_resource/"> remove_tags_from_resource </a></td>
<td style="text-align: left;">Removes metadata tags from an Amazon
Neptune resource</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../neptune_reset_db_cluster_parameter_group/"> reset_db_cluster_parameter_group </a></td>
<td style="text-align: left;">Modifies the parameters of a DB cluster
parameter group to the default value</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../neptune_reset_db_parameter_group/"> reset_db_parameter_group </a></td>
<td style="text-align: left;">Modifies the parameters of a DB parameter
group to the engine/system default value</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../neptune_restore_db_cluster_from_snapshot/"> restore_db_cluster_from_snapshot </a></td>
<td style="text-align: left;">Creates a new DB cluster from a DB
snapshot or DB cluster snapshot</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../neptune_restore_db_cluster_to_point_in_time/"> restore_db_cluster_to_point_in_time </a></td>
<td style="text-align: left;">Restores a DB cluster to an arbitrary
point in time</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../neptune_start_db_cluster/"> start_db_cluster </a></td>
<td style="text-align: left;">Starts an Amazon Neptune DB cluster that
was stopped using the Amazon console, the Amazon CLI stop-db-cluster
command, or the StopDBCluster API</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../neptune_stop_db_cluster/"> stop_db_cluster </a></td>
<td style="text-align: left;">Stops an Amazon Neptune DB cluster</td>
</tr>
</tbody>
</table>

### Examples

    ## Not run: 
    svc <- neptune()
    svc$add_role_to_db_cluster(
      Foo = 123
    )

    ## End(Not run)
