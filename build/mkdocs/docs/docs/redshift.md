<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>redshift</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Amazon Redshift

### Description

**Overview**

This is an interface reference for Amazon Redshift. It contains
documentation for one of the programming or command line interfaces you
can use to manage Amazon Redshift clusters. Note that Amazon Redshift is
asynchronous, which means that some interfaces may require techniques,
such as polling or asynchronous callback handlers, to determine when a
command has been applied. In this reference, the parameter descriptions
indicate whether a change is applied immediately, on the next instance
reboot, or during the next maintenance window. For a summary of the
Amazon Redshift cluster management interfaces, go to [Using the Amazon
Redshift Management
Interfaces](https://docs.aws.amazon.com/redshift/latest/mgmt/using-aws-sdk.html).

Amazon Redshift manages all the work of setting up, operating, and
scaling a data warehouse: provisioning capacity, monitoring and backing
up the cluster, and applying patches and upgrades to the Amazon Redshift
engine. You can focus on using your data to acquire new insights for
your business and customers.

If you are a first-time user of Amazon Redshift, we recommend that you
begin by reading the [Amazon Redshift Getting Started
Guide](https://docs.aws.amazon.com/redshift/latest/gsg/getting-started.html).

If you are a database developer, the [Amazon Redshift Database Developer
Guide](https://docs.aws.amazon.com/redshift/latest/dg/welcome.html)
explains how to design, build, query, and maintain the databases that
make up your data warehouse.

### Usage

    redshift(config = list())

### Arguments

<table>
<colgroup>
<col style="width: 15%" />
<col style="width: 85%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="redshift_:_config">config</code></td>
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

    svc <- redshift(
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
<td style="text-align: left;"><a href="../redshift_accept_reserved_node_exchange/"> accept_reserved_node_exchange </a></td>
<td style="text-align: left;">Exchanges a DC1 Reserved Node for a DC2
Reserved Node with no changes to the configuration (term, payment type,
or number of nodes) and no additional costs</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../redshift_add_partner/"> add_partner </a></td>
<td style="text-align: left;">Adds a partner integration to a
cluster</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../redshift_associate_data_share_consumer/"> associate_data_share_consumer </a></td>
<td style="text-align: left;">From a datashare consumer account,
associates a datashare with the account (AssociateEntireAccount) or the
specified namespace (ConsumerArn)</td>
</tr>
<tr class="even">
<td
style="text-align: left;"><a href="../redshift_authorize_cluster_security_group_ingress/"> authorize_cluster_security_group_ingress </a></td>
<td style="text-align: left;">Adds an inbound (ingress) rule to an
Amazon Redshift security group</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../redshift_authorize_data_share/"> authorize_data_share </a></td>
<td style="text-align: left;">From a data producer account, authorizes
the sharing of a datashare with one or more consumer accounts or
managing entities</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../redshift_authorize_endpoint_access/"> authorize_endpoint_access </a></td>
<td style="text-align: left;">Grants access to a cluster</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../redshift_authorize_snapshot_access/"> authorize_snapshot_access </a></td>
<td style="text-align: left;">Authorizes the specified Amazon Web
Services account to restore the specified snapshot</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../redshift_batch_delete_cluster_snapshots/"> batch_delete_cluster_snapshots </a></td>
<td style="text-align: left;">Deletes a set of cluster snapshots</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../redshift_batch_modify_cluster_snapshots/"> batch_modify_cluster_snapshots </a></td>
<td style="text-align: left;">Modifies the settings for a set of cluster
snapshots</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../redshift_cancel_resize/"> cancel_resize </a></td>
<td style="text-align: left;">Cancels a resize operation for a
cluster</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../redshift_copy_cluster_snapshot/"> copy_cluster_snapshot </a></td>
<td style="text-align: left;">Copies the specified automated cluster
snapshot to a new manual cluster snapshot</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../redshift_create_authentication_profile/"> create_authentication_profile </a></td>
<td style="text-align: left;">Creates an authentication profile with the
specified parameters</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../redshift_create_cluster/"> create_cluster </a></td>
<td style="text-align: left;">Creates a new cluster with the specified
parameters</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../redshift_create_cluster_parameter_group/"> create_cluster_parameter_group </a></td>
<td style="text-align: left;">Creates an Amazon Redshift parameter
group</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../redshift_create_cluster_security_group/"> create_cluster_security_group </a></td>
<td style="text-align: left;">Creates a new Amazon Redshift security
group</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../redshift_create_cluster_snapshot/"> create_cluster_snapshot </a></td>
<td style="text-align: left;">Creates a manual snapshot of the specified
cluster</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../redshift_create_cluster_subnet_group/"> create_cluster_subnet_group </a></td>
<td style="text-align: left;">Creates a new Amazon Redshift subnet
group</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../redshift_create_endpoint_access/"> create_endpoint_access </a></td>
<td style="text-align: left;">Creates a Redshift-managed VPC
endpoint</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../redshift_create_event_subscription/"> create_event_subscription </a></td>
<td style="text-align: left;">Creates an Amazon Redshift event
notification subscription</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../redshift_create_hsm_client_certificate/"> create_hsm_client_certificate </a></td>
<td style="text-align: left;">Creates an HSM client certificate that an
Amazon Redshift cluster will use to connect to the client's HSM in order
to store and retrieve the keys used to encrypt the cluster
databases</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../redshift_create_hsm_configuration/"> create_hsm_configuration </a></td>
<td style="text-align: left;">Creates an HSM configuration that contains
the information required by an Amazon Redshift cluster to store and use
database encryption keys in a Hardware Security Module (HSM)</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../redshift_create_scheduled_action/"> create_scheduled_action </a></td>
<td style="text-align: left;">Creates a scheduled action</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../redshift_create_snapshot_copy_grant/"> create_snapshot_copy_grant </a></td>
<td style="text-align: left;">Creates a snapshot copy grant that permits
Amazon Redshift to use an encrypted symmetric key from Key Management
Service (KMS) to encrypt copied snapshots in a destination region</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../redshift_create_snapshot_schedule/"> create_snapshot_schedule </a></td>
<td style="text-align: left;">Create a snapshot schedule that can be
associated to a cluster and which overrides the default system backup
schedule</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../redshift_create_tags/"> create_tags </a></td>
<td style="text-align: left;">Adds tags to a cluster</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../redshift_create_usage_limit/"> create_usage_limit </a></td>
<td style="text-align: left;">Creates a usage limit for a specified
Amazon Redshift feature on a cluster</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../redshift_deauthorize_data_share/"> deauthorize_data_share </a></td>
<td style="text-align: left;">From a datashare producer account, removes
authorization from the specified datashare</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../redshift_delete_authentication_profile/"> delete_authentication_profile </a></td>
<td style="text-align: left;">Deletes an authentication profile</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../redshift_delete_cluster/"> delete_cluster </a></td>
<td style="text-align: left;">Deletes a previously provisioned cluster
without its final snapshot being created</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../redshift_delete_cluster_parameter_group/"> delete_cluster_parameter_group </a></td>
<td style="text-align: left;">Deletes a specified Amazon Redshift
parameter group</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../redshift_delete_cluster_security_group/"> delete_cluster_security_group </a></td>
<td style="text-align: left;">Deletes an Amazon Redshift security
group</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../redshift_delete_cluster_snapshot/"> delete_cluster_snapshot </a></td>
<td style="text-align: left;">Deletes the specified manual snapshot</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../redshift_delete_cluster_subnet_group/"> delete_cluster_subnet_group </a></td>
<td style="text-align: left;">Deletes the specified cluster subnet
group</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../redshift_delete_endpoint_access/"> delete_endpoint_access </a></td>
<td style="text-align: left;">Deletes a Redshift-managed VPC
endpoint</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../redshift_delete_event_subscription/"> delete_event_subscription </a></td>
<td style="text-align: left;">Deletes an Amazon Redshift event
notification subscription</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../redshift_delete_hsm_client_certificate/"> delete_hsm_client_certificate </a></td>
<td style="text-align: left;">Deletes the specified HSM client
certificate</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../redshift_delete_hsm_configuration/"> delete_hsm_configuration </a></td>
<td style="text-align: left;">Deletes the specified Amazon Redshift HSM
configuration</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../redshift_delete_partner/"> delete_partner </a></td>
<td style="text-align: left;">Deletes a partner integration from a
cluster</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../redshift_delete_scheduled_action/"> delete_scheduled_action </a></td>
<td style="text-align: left;">Deletes a scheduled action</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../redshift_delete_snapshot_copy_grant/"> delete_snapshot_copy_grant </a></td>
<td style="text-align: left;">Deletes the specified snapshot copy
grant</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../redshift_delete_snapshot_schedule/"> delete_snapshot_schedule </a></td>
<td style="text-align: left;">Deletes a snapshot schedule</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../redshift_delete_tags/"> delete_tags </a></td>
<td style="text-align: left;">Deletes tags from a resource</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../redshift_delete_usage_limit/"> delete_usage_limit </a></td>
<td style="text-align: left;">Deletes a usage limit from a cluster</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../redshift_describe_account_attributes/"> describe_account_attributes </a></td>
<td style="text-align: left;">Returns a list of attributes attached to
an account</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../redshift_describe_authentication_profiles/"> describe_authentication_profiles </a></td>
<td style="text-align: left;">Describes an authentication profile</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../redshift_describe_cluster_db_revisions/"> describe_cluster_db_revisions </a></td>
<td style="text-align: left;">Returns an array of ClusterDbRevision
objects</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../redshift_describe_cluster_parameter_groups/"> describe_cluster_parameter_groups </a></td>
<td style="text-align: left;">Returns a list of Amazon Redshift
parameter groups, including parameter groups you created and the default
parameter group</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../redshift_describe_cluster_parameters/"> describe_cluster_parameters </a></td>
<td style="text-align: left;">Returns a detailed list of parameters
contained within the specified Amazon Redshift parameter group</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../redshift_describe_clusters/"> describe_clusters </a></td>
<td style="text-align: left;">Returns properties of provisioned clusters
including general cluster properties, cluster database properties,
maintenance and backup properties, and security and access
properties</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../redshift_describe_cluster_security_groups/"> describe_cluster_security_groups </a></td>
<td style="text-align: left;">Returns information about Amazon Redshift
security groups</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../redshift_describe_cluster_snapshots/"> describe_cluster_snapshots </a></td>
<td style="text-align: left;">Returns one or more snapshot objects,
which contain metadata about your cluster snapshots</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../redshift_describe_cluster_subnet_groups/"> describe_cluster_subnet_groups </a></td>
<td style="text-align: left;">Returns one or more cluster subnet group
objects, which contain metadata about your cluster subnet groups</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../redshift_describe_cluster_tracks/"> describe_cluster_tracks </a></td>
<td style="text-align: left;">Returns a list of all the available
maintenance tracks</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../redshift_describe_cluster_versions/"> describe_cluster_versions </a></td>
<td style="text-align: left;">Returns descriptions of the available
Amazon Redshift cluster versions</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../redshift_describe_data_shares/"> describe_data_shares </a></td>
<td style="text-align: left;">Shows the status of any inbound or
outbound datashares available in the specified account</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../redshift_describe_data_shares_for_consumer/"> describe_data_shares_for_consumer </a></td>
<td style="text-align: left;">Returns a list of datashares where the
account identifier being called is a consumer account identifier</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../redshift_describe_data_shares_for_producer/"> describe_data_shares_for_producer </a></td>
<td style="text-align: left;">Returns a list of datashares when the
account identifier being called is a producer account identifier</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../redshift_describe_default_cluster_parameters/"> describe_default_cluster_parameters </a></td>
<td style="text-align: left;">Returns a list of parameter settings for
the specified parameter group family</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../redshift_describe_endpoint_access/"> describe_endpoint_access </a></td>
<td style="text-align: left;">Describes a Redshift-managed VPC
endpoint</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../redshift_describe_endpoint_authorization/"> describe_endpoint_authorization </a></td>
<td style="text-align: left;">Describes an endpoint authorization</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../redshift_describe_event_categories/"> describe_event_categories </a></td>
<td style="text-align: left;">Displays a list of event categories for
all event source types, or for a specified source type</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../redshift_describe_events/"> describe_events </a></td>
<td style="text-align: left;">Returns events related to clusters,
security groups, snapshots, and parameter groups for the past 14
days</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../redshift_describe_event_subscriptions/"> describe_event_subscriptions </a></td>
<td style="text-align: left;">Lists descriptions of all the Amazon
Redshift event notification subscriptions for a customer account</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../redshift_describe_hsm_client_certificates/"> describe_hsm_client_certificates </a></td>
<td style="text-align: left;">Returns information about the specified
HSM client certificate</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../redshift_describe_hsm_configurations/"> describe_hsm_configurations </a></td>
<td style="text-align: left;">Returns information about the specified
Amazon Redshift HSM configuration</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../redshift_describe_logging_status/"> describe_logging_status </a></td>
<td style="text-align: left;">Describes whether information, such as
queries and connection attempts, is being logged for the specified
Amazon Redshift cluster</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../redshift_describe_node_configuration_options/"> describe_node_configuration_options </a></td>
<td style="text-align: left;">Returns properties of possible node
configurations such as node type, number of nodes, and disk usage for
the specified action type</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../redshift_describe_orderable_cluster_options/"> describe_orderable_cluster_options </a></td>
<td style="text-align: left;">Returns a list of orderable cluster
options</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../redshift_describe_partners/"> describe_partners </a></td>
<td style="text-align: left;">Returns information about the partner
integrations defined for a cluster</td>
</tr>
<tr class="even">
<td
style="text-align: left;"><a href="../redshift_describe_reserved_node_exchange_status/"> describe_reserved_node_exchange_status </a></td>
<td style="text-align: left;">Returns exchange status details and
associated metadata for a reserved-node exchange</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../redshift_describe_reserved_node_offerings/"> describe_reserved_node_offerings </a></td>
<td style="text-align: left;">Returns a list of the available reserved
node offerings by Amazon Redshift with their descriptions including the
node type, the fixed and recurring costs of reserving the node and
duration the node will be reserved for you</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../redshift_describe_reserved_nodes/"> describe_reserved_nodes </a></td>
<td style="text-align: left;">Returns the descriptions of the reserved
nodes</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../redshift_describe_resize/"> describe_resize </a></td>
<td style="text-align: left;">Returns information about the last resize
operation for the specified cluster</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../redshift_describe_scheduled_actions/"> describe_scheduled_actions </a></td>
<td style="text-align: left;">Describes properties of scheduled
actions</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../redshift_describe_snapshot_copy_grants/"> describe_snapshot_copy_grants </a></td>
<td style="text-align: left;">Returns a list of snapshot copy grants
owned by the Amazon Web Services account in the destination region</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../redshift_describe_snapshot_schedules/"> describe_snapshot_schedules </a></td>
<td style="text-align: left;">Returns a list of snapshot schedules</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../redshift_describe_storage/"> describe_storage </a></td>
<td style="text-align: left;">Returns account level backups storage size
and provisional storage</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../redshift_describe_table_restore_status/"> describe_table_restore_status </a></td>
<td style="text-align: left;">Lists the status of one or more table
restore requests made using the RestoreTableFromClusterSnapshot API
action</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../redshift_describe_tags/"> describe_tags </a></td>
<td style="text-align: left;">Returns a list of tags</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../redshift_describe_usage_limits/"> describe_usage_limits </a></td>
<td style="text-align: left;">Shows usage limits on a cluster</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../redshift_disable_logging/"> disable_logging </a></td>
<td style="text-align: left;">Stops logging information, such as queries
and connection attempts, for the specified Amazon Redshift cluster</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../redshift_disable_snapshot_copy/"> disable_snapshot_copy </a></td>
<td style="text-align: left;">Disables the automatic copying of
snapshots from one region to another region for a specified cluster</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../redshift_disassociate_data_share_consumer/"> disassociate_data_share_consumer </a></td>
<td style="text-align: left;">From a datashare consumer account, remove
association for the specified datashare</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../redshift_enable_logging/"> enable_logging </a></td>
<td style="text-align: left;">Starts logging information, such as
queries and connection attempts, for the specified Amazon Redshift
cluster</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../redshift_enable_snapshot_copy/"> enable_snapshot_copy </a></td>
<td style="text-align: left;">Enables the automatic copy of snapshots
from one region to another region for a specified cluster</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../redshift_get_cluster_credentials/"> get_cluster_credentials </a></td>
<td style="text-align: left;">Returns a database user name and temporary
password with temporary authorization to log on to an Amazon Redshift
database</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../redshift_get_cluster_credentials_with_iam/"> get_cluster_credentials_with_iam </a></td>
<td style="text-align: left;">Returns a database user name and temporary
password with temporary authorization to log in to an Amazon Redshift
database</td>
</tr>
<tr class="even">
<td
style="text-align: left;"><a href="../redshift_get_reserved_node_exchange_configuration_options/"> get_reserved_node_exchange_configuration_options </a></td>
<td style="text-align: left;">Gets the configuration options for the
reserved-node exchange</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../redshift_get_reserved_node_exchange_offerings/"> get_reserved_node_exchange_offerings </a></td>
<td style="text-align: left;">Returns an array of DC2
ReservedNodeOfferings that matches the payment type, term, and usage
price of the given DC1 reserved node</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../redshift_modify_aqua_configuration/"> modify_aqua_configuration </a></td>
<td style="text-align: left;">This operation is retired</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../redshift_modify_authentication_profile/"> modify_authentication_profile </a></td>
<td style="text-align: left;">Modifies an authentication profile</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../redshift_modify_cluster/"> modify_cluster </a></td>
<td style="text-align: left;">Modifies the settings for a cluster</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../redshift_modify_cluster_db_revision/"> modify_cluster_db_revision </a></td>
<td style="text-align: left;">Modifies the database revision of a
cluster</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../redshift_modify_cluster_iam_roles/"> modify_cluster_iam_roles </a></td>
<td style="text-align: left;">Modifies the list of Identity and Access
Management (IAM) roles that can be used by the cluster to access other
Amazon Web Services services</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../redshift_modify_cluster_maintenance/"> modify_cluster_maintenance </a></td>
<td style="text-align: left;">Modifies the maintenance settings of a
cluster</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../redshift_modify_cluster_parameter_group/"> modify_cluster_parameter_group </a></td>
<td style="text-align: left;">Modifies the parameters of a parameter
group</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../redshift_modify_cluster_snapshot/"> modify_cluster_snapshot </a></td>
<td style="text-align: left;">Modifies the settings for a snapshot</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../redshift_modify_cluster_snapshot_schedule/"> modify_cluster_snapshot_schedule </a></td>
<td style="text-align: left;">Modifies a snapshot schedule for a
cluster</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../redshift_modify_cluster_subnet_group/"> modify_cluster_subnet_group </a></td>
<td style="text-align: left;">Modifies a cluster subnet group to include
the specified list of VPC subnets</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../redshift_modify_endpoint_access/"> modify_endpoint_access </a></td>
<td style="text-align: left;">Modifies a Redshift-managed VPC
endpoint</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../redshift_modify_event_subscription/"> modify_event_subscription </a></td>
<td style="text-align: left;">Modifies an existing Amazon Redshift event
notification subscription</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../redshift_modify_scheduled_action/"> modify_scheduled_action </a></td>
<td style="text-align: left;">Modifies a scheduled action</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../redshift_modify_snapshot_copy_retention_period/"> modify_snapshot_copy_retention_period </a></td>
<td style="text-align: left;">Modifies the number of days to retain
snapshots in the destination Amazon Web Services Region after they are
copied from the source Amazon Web Services Region</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../redshift_modify_snapshot_schedule/"> modify_snapshot_schedule </a></td>
<td style="text-align: left;">Modifies a snapshot schedule</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../redshift_modify_usage_limit/"> modify_usage_limit </a></td>
<td style="text-align: left;">Modifies a usage limit in a cluster</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../redshift_pause_cluster/"> pause_cluster </a></td>
<td style="text-align: left;">Pauses a cluster</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../redshift_purchase_reserved_node_offering/"> purchase_reserved_node_offering </a></td>
<td style="text-align: left;">Allows you to purchase reserved nodes</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../redshift_reboot_cluster/"> reboot_cluster </a></td>
<td style="text-align: left;">Reboots a cluster</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../redshift_reject_data_share/"> reject_data_share </a></td>
<td style="text-align: left;">From a datashare consumer account, rejects
the specified datashare</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../redshift_reset_cluster_parameter_group/"> reset_cluster_parameter_group </a></td>
<td style="text-align: left;">Sets one or more parameters of the
specified parameter group to their default values and sets the source
values of the parameters to "engine-default"</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../redshift_resize_cluster/"> resize_cluster </a></td>
<td style="text-align: left;">Changes the size of the cluster</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../redshift_restore_from_cluster_snapshot/"> restore_from_cluster_snapshot </a></td>
<td style="text-align: left;">Creates a new cluster from a snapshot</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../redshift_restore_table_from_cluster_snapshot/"> restore_table_from_cluster_snapshot </a></td>
<td style="text-align: left;">Creates a new table from a table in an
Amazon Redshift cluster snapshot</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../redshift_resume_cluster/"> resume_cluster </a></td>
<td style="text-align: left;">Resumes a paused cluster</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../redshift_revoke_cluster_security_group_ingress/"> revoke_cluster_security_group_ingress </a></td>
<td style="text-align: left;">Revokes an ingress rule in an Amazon
Redshift security group for a previously authorized IP range or Amazon
EC2 security group</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../redshift_revoke_endpoint_access/"> revoke_endpoint_access </a></td>
<td style="text-align: left;">Revokes access to a cluster</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../redshift_revoke_snapshot_access/"> revoke_snapshot_access </a></td>
<td style="text-align: left;">Removes the ability of the specified
Amazon Web Services account to restore the specified snapshot</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../redshift_rotate_encryption_key/"> rotate_encryption_key </a></td>
<td style="text-align: left;">Rotates the encryption keys for a
cluster</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../redshift_update_partner_status/"> update_partner_status </a></td>
<td style="text-align: left;">Updates the status of a partner
integration</td>
</tr>
</tbody>
</table>

### Examples

    ## Not run: 
    svc <- redshift()
    svc$accept_reserved_node_exchange(
      Foo = 123
    )

    ## End(Not run)
