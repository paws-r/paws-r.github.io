<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>rds</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Amazon Relational Database Service

### Description

Amazon Relational Database Service (Amazon RDS) is a web service that
makes it easier to set up, operate, and scale a relational database in
the cloud. It provides cost-efficient, resizeable capacity for an
industry-standard relational database and manages common database
administration tasks, freeing up developers to focus on what makes their
applications and businesses unique.

Amazon RDS gives you access to the capabilities of a MySQL, MariaDB,
PostgreSQL, Microsoft SQL Server, Oracle, or Amazon Aurora database
server. These capabilities mean that the code, applications, and tools
you already use today with your existing databases work with Amazon RDS
without modification. Amazon RDS automatically backs up your database
and maintains the database software that powers your DB instance. Amazon
RDS is flexible: you can scale your DB instance's compute resources and
storage capacity to meet your application's demand. As with all Amazon
Web Services, there are no up-front investments, and you pay only for
the resources you use.

This interface reference for Amazon RDS contains documentation for a
programming or command line interface you can use to manage Amazon RDS.
Amazon RDS is asynchronous, which means that some interfaces might
require techniques such as polling or callback functions to determine
when a command has been applied. In this reference, the parameter
descriptions indicate whether a command is applied immediately, on the
next instance reboot, or during the maintenance window. The reference
structure is as follows, and we list following some related topics from
the user guide.

**Amazon RDS API Reference**

-   For the alphabetical list of API actions, see [API
    Actions](https://docs.aws.amazon.com/AmazonRDS/latest/APIReference/API_Operations.html).

-   For the alphabetical list of data types, see [Data
    Types](https://docs.aws.amazon.com/AmazonRDS/latest/APIReference/API_Types.html).

-   For a list of common query parameters, see [Common
    Parameters](https://docs.aws.amazon.com/AmazonRDS/latest/APIReference/CommonParameters.html).

-   For descriptions of the error codes, see [Common
    Errors](https://docs.aws.amazon.com/AmazonRDS/latest/APIReference/CommonErrors.html).

**Amazon RDS User Guide**

-   For a summary of the Amazon RDS interfaces, see [Available RDS
    Interfaces](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Welcome.html#Welcome.Interfaces).

-   For more information about how to use the Query API, see [Using the
    Query
    API](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Using_the_Query_API.html).

### Usage

    rds(config = list())

### Arguments

<table>
<colgroup>
<col style="width: 15%" />
<col style="width: 85%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="rds_:_config">config</code></td>
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

    svc <- rds(
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
<td style="text-align: left;"><a href="../rds_add_role_to_db_cluster/"> add_role_to_db_cluster </a></td>
<td style="text-align: left;">Associates an Identity and Access
Management (IAM) role with a DB cluster</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../rds_add_role_to_db_instance/"> add_role_to_db_instance </a></td>
<td style="text-align: left;">Associates an Amazon Web Services Identity
and Access Management (IAM) role with a DB instance</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../rds_add_source_identifier_to_subscription/"> add_source_identifier_to_subscription </a></td>
<td style="text-align: left;">Adds a source identifier to an existing
RDS event notification subscription</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../rds_add_tags_to_resource/"> add_tags_to_resource </a></td>
<td style="text-align: left;">Adds metadata tags to an Amazon RDS
resource</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../rds_apply_pending_maintenance_action/"> apply_pending_maintenance_action </a></td>
<td style="text-align: left;">Applies a pending maintenance action to a
resource (for example, to a DB instance)</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../rds_authorize_db_security_group_ingress/"> authorize_db_security_group_ingress </a></td>
<td style="text-align: left;">Enables ingress to a DBSecurityGroup using
one of two forms of authorization</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../rds_backtrack_db_cluster/"> backtrack_db_cluster </a></td>
<td style="text-align: left;">Backtracks a DB cluster to a specific
time, without creating a new DB cluster</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../rds_build_auth_token/"> build_auth_token </a></td>
<td style="text-align: left;">Return an authentication token for a
database connection</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../rds_cancel_export_task/"> cancel_export_task </a></td>
<td style="text-align: left;">Cancels an export task in progress that is
exporting a snapshot or cluster to Amazon S3</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../rds_copy_db_cluster_parameter_group/"> copy_db_cluster_parameter_group </a></td>
<td style="text-align: left;">Copies the specified DB cluster parameter
group</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../rds_copy_db_cluster_snapshot/"> copy_db_cluster_snapshot </a></td>
<td style="text-align: left;">Copies a snapshot of a DB cluster</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../rds_copy_db_parameter_group/"> copy_db_parameter_group </a></td>
<td style="text-align: left;">Copies the specified DB parameter
group</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../rds_copy_db_snapshot/"> copy_db_snapshot </a></td>
<td style="text-align: left;">Copies the specified DB snapshot</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../rds_copy_option_group/"> copy_option_group </a></td>
<td style="text-align: left;">Copies the specified option group</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../rds_create_blue_green_deployment/"> create_blue_green_deployment </a></td>
<td style="text-align: left;">Creates a blue/green deployment</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../rds_create_custom_db_engine_version/"> create_custom_db_engine_version </a></td>
<td style="text-align: left;">Creates a custom DB engine version
(CEV)</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../rds_create_db_cluster/"> create_db_cluster </a></td>
<td style="text-align: left;">Creates a new Amazon Aurora DB cluster or
Multi-AZ DB cluster</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../rds_create_db_cluster_endpoint/"> create_db_cluster_endpoint </a></td>
<td style="text-align: left;">Creates a new custom endpoint and
associates it with an Amazon Aurora DB cluster</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../rds_create_db_cluster_parameter_group/"> create_db_cluster_parameter_group </a></td>
<td style="text-align: left;">Creates a new DB cluster parameter
group</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../rds_create_db_cluster_snapshot/"> create_db_cluster_snapshot </a></td>
<td style="text-align: left;">Creates a snapshot of a DB cluster</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../rds_create_db_instance/"> create_db_instance </a></td>
<td style="text-align: left;">Creates a new DB instance</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../rds_create_db_instance_read_replica/"> create_db_instance_read_replica </a></td>
<td style="text-align: left;">Creates a new DB instance that acts as a
read replica for an existing source DB instance or Multi-AZ DB
cluster</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../rds_create_db_parameter_group/"> create_db_parameter_group </a></td>
<td style="text-align: left;">Creates a new DB parameter group</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../rds_create_db_proxy/"> create_db_proxy </a></td>
<td style="text-align: left;">Creates a new DB proxy</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../rds_create_db_proxy_endpoint/"> create_db_proxy_endpoint </a></td>
<td style="text-align: left;">Creates a DBProxyEndpoint</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../rds_create_db_security_group/"> create_db_security_group </a></td>
<td style="text-align: left;">Creates a new DB security group</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../rds_create_db_snapshot/"> create_db_snapshot </a></td>
<td style="text-align: left;">Creates a snapshot of a DB instance</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../rds_create_db_subnet_group/"> create_db_subnet_group </a></td>
<td style="text-align: left;">Creates a new DB subnet group</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../rds_create_event_subscription/"> create_event_subscription </a></td>
<td style="text-align: left;">Creates an RDS event notification
subscription</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../rds_create_global_cluster/"> create_global_cluster </a></td>
<td style="text-align: left;">Creates an Aurora global database spread
across multiple Amazon Web Services Regions</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../rds_create_option_group/"> create_option_group </a></td>
<td style="text-align: left;">Creates a new option group</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../rds_delete_blue_green_deployment/"> delete_blue_green_deployment </a></td>
<td style="text-align: left;">Deletes a blue/green deployment</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../rds_delete_custom_db_engine_version/"> delete_custom_db_engine_version </a></td>
<td style="text-align: left;">Deletes a custom engine version</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../rds_delete_db_cluster/"> delete_db_cluster </a></td>
<td style="text-align: left;">The DeleteDBCluster action deletes a
previously provisioned DB cluster</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../rds_delete_db_cluster_endpoint/"> delete_db_cluster_endpoint </a></td>
<td style="text-align: left;">Deletes a custom endpoint and removes it
from an Amazon Aurora DB cluster</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../rds_delete_db_cluster_parameter_group/"> delete_db_cluster_parameter_group </a></td>
<td style="text-align: left;">Deletes a specified DB cluster parameter
group</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../rds_delete_db_cluster_snapshot/"> delete_db_cluster_snapshot </a></td>
<td style="text-align: left;">Deletes a DB cluster snapshot</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../rds_delete_db_instance/"> delete_db_instance </a></td>
<td style="text-align: left;">The DeleteDBInstance action deletes a
previously provisioned DB instance</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../rds_delete_db_instance_automated_backup/"> delete_db_instance_automated_backup </a></td>
<td style="text-align: left;">Deletes automated backups using the
DbiResourceId value of the source DB instance or the Amazon Resource
Name (ARN) of the automated backups</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../rds_delete_db_parameter_group/"> delete_db_parameter_group </a></td>
<td style="text-align: left;">Deletes a specified DB parameter
group</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../rds_delete_db_proxy/"> delete_db_proxy </a></td>
<td style="text-align: left;">Deletes an existing DB proxy</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../rds_delete_db_proxy_endpoint/"> delete_db_proxy_endpoint </a></td>
<td style="text-align: left;">Deletes a DBProxyEndpoint</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../rds_delete_db_security_group/"> delete_db_security_group </a></td>
<td style="text-align: left;">Deletes a DB security group</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../rds_delete_db_snapshot/"> delete_db_snapshot </a></td>
<td style="text-align: left;">Deletes a DB snapshot</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../rds_delete_db_subnet_group/"> delete_db_subnet_group </a></td>
<td style="text-align: left;">Deletes a DB subnet group</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../rds_delete_event_subscription/"> delete_event_subscription </a></td>
<td style="text-align: left;">Deletes an RDS event notification
subscription</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../rds_delete_global_cluster/"> delete_global_cluster </a></td>
<td style="text-align: left;">Deletes a global database cluster</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../rds_delete_option_group/"> delete_option_group </a></td>
<td style="text-align: left;">Deletes an existing option group</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../rds_deregister_db_proxy_targets/"> deregister_db_proxy_targets </a></td>
<td style="text-align: left;">Remove the association between one or more
DBProxyTarget data structures and a DBProxyTargetGroup</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../rds_describe_account_attributes/"> describe_account_attributes </a></td>
<td style="text-align: left;">Lists all of the attributes for a customer
account</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../rds_describe_blue_green_deployments/"> describe_blue_green_deployments </a></td>
<td style="text-align: left;">Returns information about blue/green
deployments</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../rds_describe_certificates/"> describe_certificates </a></td>
<td style="text-align: left;">Lists the set of CA certificates provided
by Amazon RDS for this Amazon Web Services account</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../rds_describe_db_cluster_backtracks/"> describe_db_cluster_backtracks </a></td>
<td style="text-align: left;">Returns information about backtracks for a
DB cluster</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../rds_describe_db_cluster_endpoints/"> describe_db_cluster_endpoints </a></td>
<td style="text-align: left;">Returns information about endpoints for an
Amazon Aurora DB cluster</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../rds_describe_db_cluster_parameter_groups/"> describe_db_cluster_parameter_groups </a></td>
<td style="text-align: left;">Returns a list of DBClusterParameterGroup
descriptions</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../rds_describe_db_cluster_parameters/"> describe_db_cluster_parameters </a></td>
<td style="text-align: left;">Returns the detailed parameter list for a
particular DB cluster parameter group</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../rds_describe_db_clusters/"> describe_db_clusters </a></td>
<td style="text-align: left;">Returns information about Amazon Aurora DB
clusters and Multi-AZ DB clusters</td>
</tr>
<tr class="even">
<td
style="text-align: left;"><a href="../rds_describe_db_cluster_snapshot_attributes/"> describe_db_cluster_snapshot_attributes </a></td>
<td style="text-align: left;">Returns a list of DB cluster snapshot
attribute names and values for a manual DB cluster snapshot</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../rds_describe_db_cluster_snapshots/"> describe_db_cluster_snapshots </a></td>
<td style="text-align: left;">Returns information about DB cluster
snapshots</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../rds_describe_db_engine_versions/"> describe_db_engine_versions </a></td>
<td style="text-align: left;">Returns a list of the available DB
engines</td>
</tr>
<tr class="odd">
<td
style="text-align: left;"><a href="../rds_describe_db_instance_automated_backups/"> describe_db_instance_automated_backups </a></td>
<td style="text-align: left;">Displays backups for both current and
deleted instances</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../rds_describe_db_instances/"> describe_db_instances </a></td>
<td style="text-align: left;">Returns information about provisioned RDS
instances</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../rds_describe_db_log_files/"> describe_db_log_files </a></td>
<td style="text-align: left;">Returns a list of DB log files for the DB
instance</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../rds_describe_db_parameter_groups/"> describe_db_parameter_groups </a></td>
<td style="text-align: left;">Returns a list of DBParameterGroup
descriptions</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../rds_describe_db_parameters/"> describe_db_parameters </a></td>
<td style="text-align: left;">Returns the detailed parameter list for a
particular DB parameter group</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../rds_describe_db_proxies/"> describe_db_proxies </a></td>
<td style="text-align: left;">Returns information about DB proxies</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../rds_describe_db_proxy_endpoints/"> describe_db_proxy_endpoints </a></td>
<td style="text-align: left;">Returns information about DB proxy
endpoints</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../rds_describe_db_proxy_target_groups/"> describe_db_proxy_target_groups </a></td>
<td style="text-align: left;">Returns information about DB proxy target
groups, represented by DBProxyTargetGroup data structures</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../rds_describe_db_proxy_targets/"> describe_db_proxy_targets </a></td>
<td style="text-align: left;">Returns information about DBProxyTarget
objects</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../rds_describe_db_security_groups/"> describe_db_security_groups </a></td>
<td style="text-align: left;">Returns a list of DBSecurityGroup
descriptions</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../rds_describe_db_snapshot_attributes/"> describe_db_snapshot_attributes </a></td>
<td style="text-align: left;">Returns a list of DB snapshot attribute
names and values for a manual DB snapshot</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../rds_describe_db_snapshots/"> describe_db_snapshots </a></td>
<td style="text-align: left;">Returns information about DB
snapshots</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../rds_describe_db_subnet_groups/"> describe_db_subnet_groups </a></td>
<td style="text-align: left;">Returns a list of DBSubnetGroup
descriptions</td>
</tr>
<tr class="even">
<td
style="text-align: left;"><a href="../rds_describe_engine_default_cluster_parameters/"> describe_engine_default_cluster_parameters </a></td>
<td style="text-align: left;">Returns the default engine and system
parameter information for the cluster database engine</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../rds_describe_engine_default_parameters/"> describe_engine_default_parameters </a></td>
<td style="text-align: left;">Returns the default engine and system
parameter information for the specified database engine</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../rds_describe_event_categories/"> describe_event_categories </a></td>
<td style="text-align: left;">Displays a list of categories for all
event source types, or, if specified, for a specified source type</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../rds_describe_events/"> describe_events </a></td>
<td style="text-align: left;">Returns events related to DB instances, DB
clusters, DB parameter groups, DB security groups, DB snapshots, DB
cluster snapshots, and RDS Proxies for the past 14 days</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../rds_describe_event_subscriptions/"> describe_event_subscriptions </a></td>
<td style="text-align: left;">Lists all the subscription descriptions
for a customer account</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../rds_describe_export_tasks/"> describe_export_tasks </a></td>
<td style="text-align: left;">Returns information about a snapshot or
cluster export to Amazon S3</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../rds_describe_global_clusters/"> describe_global_clusters </a></td>
<td style="text-align: left;">Returns information about Aurora global
database clusters</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../rds_describe_option_group_options/"> describe_option_group_options </a></td>
<td style="text-align: left;">Describes all available options</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../rds_describe_option_groups/"> describe_option_groups </a></td>
<td style="text-align: left;">Describes the available option groups</td>
</tr>
<tr class="odd">
<td
style="text-align: left;"><a href="../rds_describe_orderable_db_instance_options/"> describe_orderable_db_instance_options </a></td>
<td style="text-align: left;">Returns a list of orderable DB instance
options for the specified DB engine, DB engine version, and DB instance
class</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../rds_describe_pending_maintenance_actions/"> describe_pending_maintenance_actions </a></td>
<td style="text-align: left;">Returns a list of resources (for example,
DB instances) that have at least one pending maintenance action</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../rds_describe_reserved_db_instances/"> describe_reserved_db_instances </a></td>
<td style="text-align: left;">Returns information about reserved DB
instances for this account, or about a specified reserved DB
instance</td>
</tr>
<tr class="even">
<td
style="text-align: left;"><a href="../rds_describe_reserved_db_instances_offerings/"> describe_reserved_db_instances_offerings </a></td>
<td style="text-align: left;">Lists available reserved DB instance
offerings</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../rds_describe_source_regions/"> describe_source_regions </a></td>
<td style="text-align: left;">Returns a list of the source Amazon Web
Services Regions where the current Amazon Web Services Region can create
a read replica, copy a DB snapshot from, or replicate automated backups
from</td>
</tr>
<tr class="even">
<td
style="text-align: left;"><a href="../rds_describe_valid_db_instance_modifications/"> describe_valid_db_instance_modifications </a></td>
<td style="text-align: left;">You can call
DescribeValidDBInstanceModifications to learn what modifications you can
make to your DB instance</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../rds_download_db_log_file_portion/"> download_db_log_file_portion </a></td>
<td style="text-align: left;">Downloads all or a portion of the
specified log file, up to 1 MB in size</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../rds_failover_db_cluster/"> failover_db_cluster </a></td>
<td style="text-align: left;">Forces a failover for a DB cluster</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../rds_failover_global_cluster/"> failover_global_cluster </a></td>
<td style="text-align: left;">Initiates the failover process for an
Aurora global database (GlobalCluster)</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../rds_list_tags_for_resource/"> list_tags_for_resource </a></td>
<td style="text-align: left;">Lists all tags on an Amazon RDS
resource</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../rds_modify_activity_stream/"> modify_activity_stream </a></td>
<td style="text-align: left;">Changes the audit policy state of a
database activity stream to either locked (default) or unlocked</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../rds_modify_certificates/"> modify_certificates </a></td>
<td style="text-align: left;">Override the system-default Secure Sockets
Layer/Transport Layer Security (SSL/TLS) certificate for Amazon RDS for
new DB instances, or remove the override</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../rds_modify_current_db_cluster_capacity/"> modify_current_db_cluster_capacity </a></td>
<td style="text-align: left;">Set the capacity of an Aurora Serverless
v1 DB cluster to a specific value</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../rds_modify_custom_db_engine_version/"> modify_custom_db_engine_version </a></td>
<td style="text-align: left;">Modifies the status of a custom engine
version (CEV)</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../rds_modify_db_cluster/"> modify_db_cluster </a></td>
<td style="text-align: left;">Modify the settings for an Amazon Aurora
DB cluster or a Multi-AZ DB cluster</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../rds_modify_db_cluster_endpoint/"> modify_db_cluster_endpoint </a></td>
<td style="text-align: left;">Modifies the properties of an endpoint in
an Amazon Aurora DB cluster</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../rds_modify_db_cluster_parameter_group/"> modify_db_cluster_parameter_group </a></td>
<td style="text-align: left;">Modifies the parameters of a DB cluster
parameter group</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../rds_modify_db_cluster_snapshot_attribute/"> modify_db_cluster_snapshot_attribute </a></td>
<td style="text-align: left;">Adds an attribute and values to, or
removes an attribute and values from, a manual DB cluster snapshot</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../rds_modify_db_instance/"> modify_db_instance </a></td>
<td style="text-align: left;">Modifies settings for a DB instance</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../rds_modify_db_parameter_group/"> modify_db_parameter_group </a></td>
<td style="text-align: left;">Modifies the parameters of a DB parameter
group</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../rds_modify_db_proxy/"> modify_db_proxy </a></td>
<td style="text-align: left;">Changes the settings for an existing DB
proxy</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../rds_modify_db_proxy_endpoint/"> modify_db_proxy_endpoint </a></td>
<td style="text-align: left;">Changes the settings for an existing DB
proxy endpoint</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../rds_modify_db_proxy_target_group/"> modify_db_proxy_target_group </a></td>
<td style="text-align: left;">Modifies the properties of a
DBProxyTargetGroup</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../rds_modify_db_snapshot/"> modify_db_snapshot </a></td>
<td style="text-align: left;">Updates a manual DB snapshot with a new
engine version</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../rds_modify_db_snapshot_attribute/"> modify_db_snapshot_attribute </a></td>
<td style="text-align: left;">Adds an attribute and values to, or
removes an attribute and values from, a manual DB snapshot</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../rds_modify_db_subnet_group/"> modify_db_subnet_group </a></td>
<td style="text-align: left;">Modifies an existing DB subnet group</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../rds_modify_event_subscription/"> modify_event_subscription </a></td>
<td style="text-align: left;">Modifies an existing RDS event
notification subscription</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../rds_modify_global_cluster/"> modify_global_cluster </a></td>
<td style="text-align: left;">Modify a setting for an Amazon Aurora
global cluster</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../rds_modify_option_group/"> modify_option_group </a></td>
<td style="text-align: left;">Modifies an existing option group</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../rds_promote_read_replica/"> promote_read_replica </a></td>
<td style="text-align: left;">Promotes a read replica DB instance to a
standalone DB instance</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../rds_promote_read_replica_db_cluster/"> promote_read_replica_db_cluster </a></td>
<td style="text-align: left;">Promotes a read replica DB cluster to a
standalone DB cluster</td>
</tr>
<tr class="even">
<td
style="text-align: left;"><a href="../rds_purchase_reserved_db_instances_offering/"> purchase_reserved_db_instances_offering </a></td>
<td style="text-align: left;">Purchases a reserved DB instance
offering</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../rds_reboot_db_cluster/"> reboot_db_cluster </a></td>
<td style="text-align: left;">You might need to reboot your DB cluster,
usually for maintenance reasons</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../rds_reboot_db_instance/"> reboot_db_instance </a></td>
<td style="text-align: left;">You might need to reboot your DB instance,
usually for maintenance reasons</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../rds_register_db_proxy_targets/"> register_db_proxy_targets </a></td>
<td style="text-align: left;">Associate one or more DBProxyTarget data
structures with a DBProxyTargetGroup</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../rds_remove_from_global_cluster/"> remove_from_global_cluster </a></td>
<td style="text-align: left;">Detaches an Aurora secondary cluster from
an Aurora global database cluster</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../rds_remove_role_from_db_cluster/"> remove_role_from_db_cluster </a></td>
<td style="text-align: left;">Removes the asssociation of an Amazon Web
Services Identity and Access Management (IAM) role from a DB
cluster</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../rds_remove_role_from_db_instance/"> remove_role_from_db_instance </a></td>
<td style="text-align: left;">Disassociates an Amazon Web Services
Identity and Access Management (IAM) role from a DB instance</td>
</tr>
<tr class="odd">
<td
style="text-align: left;"><a href="../rds_remove_source_identifier_from_subscription/"> remove_source_identifier_from_subscription </a></td>
<td style="text-align: left;">Removes a source identifier from an
existing RDS event notification subscription</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../rds_remove_tags_from_resource/"> remove_tags_from_resource </a></td>
<td style="text-align: left;">Removes metadata tags from an Amazon RDS
resource</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../rds_reset_db_cluster_parameter_group/"> reset_db_cluster_parameter_group </a></td>
<td style="text-align: left;">Modifies the parameters of a DB cluster
parameter group to the default value</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../rds_reset_db_parameter_group/"> reset_db_parameter_group </a></td>
<td style="text-align: left;">Modifies the parameters of a DB parameter
group to the engine/system default value</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../rds_restore_db_cluster_from_s3/"> restore_db_cluster_from_s3 </a></td>
<td style="text-align: left;">Creates an Amazon Aurora DB cluster from
MySQL data stored in an Amazon S3 bucket</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../rds_restore_db_cluster_from_snapshot/"> restore_db_cluster_from_snapshot </a></td>
<td style="text-align: left;">Creates a new DB cluster from a DB
snapshot or DB cluster snapshot</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../rds_restore_db_cluster_to_point_in_time/"> restore_db_cluster_to_point_in_time </a></td>
<td style="text-align: left;">Restores a DB cluster to an arbitrary
point in time</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../rds_restore_db_instance_from_db_snapshot/"> restore_db_instance_from_db_snapshot </a></td>
<td style="text-align: left;">Creates a new DB instance from a DB
snapshot</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../rds_restore_db_instance_from_s3/"> restore_db_instance_from_s3 </a></td>
<td style="text-align: left;">Amazon Relational Database Service (Amazon
RDS) supports importing MySQL databases by using backup files</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../rds_restore_db_instance_to_point_in_time/"> restore_db_instance_to_point_in_time </a></td>
<td style="text-align: left;">Restores a DB instance to an arbitrary
point in time</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../rds_revoke_db_security_group_ingress/"> revoke_db_security_group_ingress </a></td>
<td style="text-align: left;">Revokes ingress from a DBSecurityGroup for
previously authorized IP ranges or EC2 or VPC security groups</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../rds_start_activity_stream/"> start_activity_stream </a></td>
<td style="text-align: left;">Starts a database activity stream to
monitor activity on the database</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../rds_start_db_cluster/"> start_db_cluster </a></td>
<td style="text-align: left;">Starts an Amazon Aurora DB cluster that
was stopped using the Amazon Web Services console, the stop-db-cluster
CLI command, or the StopDBCluster action</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../rds_start_db_instance/"> start_db_instance </a></td>
<td style="text-align: left;">Starts an Amazon RDS DB instance that was
stopped using the Amazon Web Services console, the stop-db-instance CLI
command, or the StopDBInstance action</td>
</tr>
<tr class="odd">
<td
style="text-align: left;"><a href="../rds_start_db_instance_automated_backups_replication/"> start_db_instance_automated_backups_replication </a></td>
<td style="text-align: left;">Enables replication of automated backups
to a different Amazon Web Services Region</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../rds_start_export_task/"> start_export_task </a></td>
<td style="text-align: left;">Starts an export of DB snapshot or DB
cluster data to Amazon S3</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../rds_stop_activity_stream/"> stop_activity_stream </a></td>
<td style="text-align: left;">Stops a database activity stream that was
started using the Amazon Web Services console, the start-activity-stream
CLI command, or the StartActivityStream action</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../rds_stop_db_cluster/"> stop_db_cluster </a></td>
<td style="text-align: left;">Stops an Amazon Aurora DB cluster</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../rds_stop_db_instance/"> stop_db_instance </a></td>
<td style="text-align: left;">Stops an Amazon RDS DB instance</td>
</tr>
<tr class="even">
<td
style="text-align: left;"><a href="../rds_stop_db_instance_automated_backups_replication/"> stop_db_instance_automated_backups_replication </a></td>
<td style="text-align: left;">Stops automated backup replication for a
DB instance</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../rds_switchover_blue_green_deployment/"> switchover_blue_green_deployment </a></td>
<td style="text-align: left;">Switches over a blue/green deployment</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../rds_switchover_read_replica/"> switchover_read_replica </a></td>
<td style="text-align: left;">Switches over an Oracle standby database
in an Oracle Data Guard environment, making it the new primary
database</td>
</tr>
</tbody>
</table>

### Examples

    ## Not run: 
    svc <- rds()
    svc$add_role_to_db_cluster(
      Foo = 123
    )

    ## End(Not run)
