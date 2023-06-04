<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>opensearchservice</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Amazon OpenSearch Service

### Description

Use the Amazon OpenSearch Service configuration API to create,
configure, and manage OpenSearch Service domains.

For sample code that uses the configuration API, see the [*Amazon
OpenSearch Service Developer
Guide*](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/)
. The guide also contains [sample
code](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/request-signing.html)
for sending signed HTTP requests to the OpenSearch APIs. The endpoint
for configuration service requests is Region specific:
es.*region*.amazonaws.com. For example, es.us-east-1.amazonaws.com. For
a current list of supported Regions and endpoints, see [Amazon Web
Services service
endpoints](https://docs.aws.amazon.com/general/latest/gr/rande.html#service-regions).

### Usage

    opensearchservice(config = list())

### Arguments

<table>
<colgroup>
<col style="width: 15%" />
<col style="width: 85%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="opensearchservice_:_config">config</code></td>
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

    svc <- opensearchservice(
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
<td style="text-align: left;"><a href="../opensearchservice_accept_inbound_connection/"> accept_inbound_connection </a></td>
<td style="text-align: left;">Allows the destination Amazon OpenSearch
Service domain owner to accept an inbound cross-cluster search
connection request</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../opensearchservice_add_tags/"> add_tags </a></td>
<td style="text-align: left;">Attaches tags to an existing Amazon
OpenSearch Service domain</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../opensearchservice_associate_package/"> associate_package </a></td>
<td style="text-align: left;">Associates a package with an Amazon
OpenSearch Service domain</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../opensearchservice_authorize_vpc_endpoint_access/"> authorize_vpc_endpoint_access </a></td>
<td style="text-align: left;">Provides access to an Amazon OpenSearch
Service domain through the use of an interface VPC endpoint</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../opensearchservice_cancel_service_software_update/"> cancel_service_software_update </a></td>
<td style="text-align: left;">Cancels a scheduled service software
update for an Amazon OpenSearch Service domain</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../opensearchservice_create_domain/"> create_domain </a></td>
<td style="text-align: left;">Creates an Amazon OpenSearch Service
domain</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../opensearchservice_create_outbound_connection/"> create_outbound_connection </a></td>
<td style="text-align: left;">Creates a new cross-cluster search
connection from a source Amazon OpenSearch Service domain to a
destination domain</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../opensearchservice_create_package/"> create_package </a></td>
<td style="text-align: left;">Creates a package for use with Amazon
OpenSearch Service domains</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../opensearchservice_create_vpc_endpoint/"> create_vpc_endpoint </a></td>
<td style="text-align: left;">Creates an Amazon OpenSearch
Service-managed VPC endpoint</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../opensearchservice_delete_domain/"> delete_domain </a></td>
<td style="text-align: left;">Deletes an Amazon OpenSearch Service
domain and all of its data</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../opensearchservice_delete_inbound_connection/"> delete_inbound_connection </a></td>
<td style="text-align: left;">Allows the destination Amazon OpenSearch
Service domain owner to delete an existing inbound cross-cluster search
connection</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../opensearchservice_delete_outbound_connection/"> delete_outbound_connection </a></td>
<td style="text-align: left;">Allows the source Amazon OpenSearch
Service domain owner to delete an existing outbound cross-cluster search
connection</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../opensearchservice_delete_package/"> delete_package </a></td>
<td style="text-align: left;">Deletes an Amazon OpenSearch Service
package</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../opensearchservice_delete_vpc_endpoint/"> delete_vpc_endpoint </a></td>
<td style="text-align: left;">Deletes an Amazon OpenSearch
Service-managed interface VPC endpoint</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../opensearchservice_describe_domain/"> describe_domain </a></td>
<td style="text-align: left;">Describes the domain configuration for the
specified Amazon OpenSearch Service domain, including the domain ID,
domain service endpoint, and domain ARN</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../opensearchservice_describe_domain_auto_tunes/"> describe_domain_auto_tunes </a></td>
<td style="text-align: left;">Returns the list of optimizations that
Auto-Tune has made to an Amazon OpenSearch Service domain</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../opensearchservice_describe_domain_change_progress/"> describe_domain_change_progress </a></td>
<td style="text-align: left;">Returns information about the current
blue/green deployment happening on an Amazon OpenSearch Service
domain</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../opensearchservice_describe_domain_config/"> describe_domain_config </a></td>
<td style="text-align: left;">Returns the configuration of an Amazon
OpenSearch Service domain</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../opensearchservice_describe_domain_health/"> describe_domain_health </a></td>
<td style="text-align: left;">Returns information about domain and node
health, the standby Availability Zone, number of nodes per Availability
Zone, and shard count per node</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../opensearchservice_describe_domain_nodes/"> describe_domain_nodes </a></td>
<td style="text-align: left;">Returns information about domain and
nodes, including data nodes, master nodes, ultrawarm nodes, Availability
Zone(s), standby nodes, node configurations, and node states</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../opensearchservice_describe_domains/"> describe_domains </a></td>
<td style="text-align: left;">Returns domain configuration information
about the specified Amazon OpenSearch Service domains</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../opensearchservice_describe_dry_run_progress/"> describe_dry_run_progress </a></td>
<td style="text-align: left;">Describes the progress of a pre-update dry
run analysis on an Amazon OpenSearch Service domain</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../opensearchservice_describe_inbound_connections/"> describe_inbound_connections </a></td>
<td style="text-align: left;">Lists all the inbound cross-cluster search
connections for a destination (remote) Amazon OpenSearch Service
domain</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../opensearchservice_describe_instance_type_limits/"> describe_instance_type_limits </a></td>
<td style="text-align: left;">Describes the instance count, storage, and
master node limits for a given OpenSearch or Elasticsearch version and
instance type</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../opensearchservice_describe_outbound_connections/"> describe_outbound_connections </a></td>
<td style="text-align: left;">Lists all the outbound cross-cluster
connections for a local (source) Amazon OpenSearch Service domain</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../opensearchservice_describe_packages/"> describe_packages </a></td>
<td style="text-align: left;">Describes all packages available to
OpenSearch Service</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../opensearchservice_describe_reserved_instance_offerings/"> describe_reserved_instance_offerings </a></td>
<td style="text-align: left;">Describes the available Amazon OpenSearch
Service Reserved Instance offerings for a given Region</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../opensearchservice_describe_reserved_instances/"> describe_reserved_instances </a></td>
<td style="text-align: left;">Describes the Amazon OpenSearch Service
instances that you have reserved in a given Region</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../opensearchservice_describe_vpc_endpoints/"> describe_vpc_endpoints </a></td>
<td style="text-align: left;">Describes one or more Amazon OpenSearch
Service-managed VPC endpoints</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../opensearchservice_dissociate_package/"> dissociate_package </a></td>
<td style="text-align: left;">Removes a package from the specified
Amazon OpenSearch Service domain</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../opensearchservice_get_compatible_versions/"> get_compatible_versions </a></td>
<td style="text-align: left;">Returns a map of OpenSearch or
Elasticsearch versions and the versions you can upgrade them to</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../opensearchservice_get_package_version_history/"> get_package_version_history </a></td>
<td style="text-align: left;">Returns a list of Amazon OpenSearch
Service package versions, along with their creation time, commit
message, and plugin properties (if the package is a zip plugin
package)</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../opensearchservice_get_upgrade_history/"> get_upgrade_history </a></td>
<td style="text-align: left;">Retrieves the complete history of the last
10 upgrades performed on an Amazon OpenSearch Service domain</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../opensearchservice_get_upgrade_status/"> get_upgrade_status </a></td>
<td style="text-align: left;">Returns the most recent status of the last
upgrade or upgrade eligibility check performed on an Amazon OpenSearch
Service domain</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../opensearchservice_list_domain_names/"> list_domain_names </a></td>
<td style="text-align: left;">Returns the names of all Amazon OpenSearch
Service domains owned by the current user in the active Region</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../opensearchservice_list_domains_for_package/"> list_domains_for_package </a></td>
<td style="text-align: left;">Lists all Amazon OpenSearch Service
domains associated with a given package</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../opensearchservice_list_instance_type_details/"> list_instance_type_details </a></td>
<td style="text-align: left;">Lists all instance types and available
features for a given OpenSearch or Elasticsearch version</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../opensearchservice_list_packages_for_domain/"> list_packages_for_domain </a></td>
<td style="text-align: left;">Lists all packages associated with an
Amazon OpenSearch Service domain</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../opensearchservice_list_scheduled_actions/"> list_scheduled_actions </a></td>
<td style="text-align: left;">Retrieves a list of configuration changes
that are scheduled for a domain</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../opensearchservice_list_tags/"> list_tags </a></td>
<td style="text-align: left;">Returns all resource tags for an Amazon
OpenSearch Service domain</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../opensearchservice_list_versions/"> list_versions </a></td>
<td style="text-align: left;">Lists all versions of OpenSearch and
Elasticsearch that Amazon OpenSearch Service supports</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../opensearchservice_list_vpc_endpoint_access/"> list_vpc_endpoint_access </a></td>
<td style="text-align: left;">Retrieves information about each Amazon
Web Services principal that is allowed to access a given Amazon
OpenSearch Service domain through the use of an interface VPC
endpoint</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../opensearchservice_list_vpc_endpoints/"> list_vpc_endpoints </a></td>
<td style="text-align: left;">Retrieves all Amazon OpenSearch
Service-managed VPC endpoints in the current Amazon Web Services account
and Region</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../opensearchservice_list_vpc_endpoints_for_domain/"> list_vpc_endpoints_for_domain </a></td>
<td style="text-align: left;">Retrieves all Amazon OpenSearch
Service-managed VPC endpoints associated with a particular domain</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../opensearchservice_purchase_reserved_instance_offering/"> purchase_reserved_instance_offering </a></td>
<td style="text-align: left;">Allows you to purchase Amazon OpenSearch
Service Reserved Instances</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../opensearchservice_reject_inbound_connection/"> reject_inbound_connection </a></td>
<td style="text-align: left;">Allows the remote Amazon OpenSearch
Service domain owner to reject an inbound cross-cluster connection
request</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../opensearchservice_remove_tags/"> remove_tags </a></td>
<td style="text-align: left;">Removes the specified set of tags from an
Amazon OpenSearch Service domain</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../opensearchservice_revoke_vpc_endpoint_access/"> revoke_vpc_endpoint_access </a></td>
<td style="text-align: left;">Revokes access to an Amazon OpenSearch
Service domain that was provided through an interface VPC endpoint</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../opensearchservice_start_service_software_update/"> start_service_software_update </a></td>
<td style="text-align: left;">Schedules a service software update for an
Amazon OpenSearch Service domain</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../opensearchservice_update_domain_config/"> update_domain_config </a></td>
<td style="text-align: left;">Modifies the cluster configuration of the
specified Amazon OpenSearch Service domain</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../opensearchservice_update_package/"> update_package </a></td>
<td style="text-align: left;">Updates a package for use with Amazon
OpenSearch Service domains</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../opensearchservice_update_scheduled_action/"> update_scheduled_action </a></td>
<td style="text-align: left;">Reschedules a planned domain configuration
change for a later time</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../opensearchservice_update_vpc_endpoint/"> update_vpc_endpoint </a></td>
<td style="text-align: left;">Modifies an Amazon OpenSearch
Service-managed interface VPC endpoint</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../opensearchservice_upgrade_domain/"> upgrade_domain </a></td>
<td style="text-align: left;">Allows you to either upgrade your Amazon
OpenSearch Service domain or perform an upgrade eligibility check to a
compatible version of OpenSearch or Elasticsearch</td>
</tr>
</tbody>
</table>

### Examples

    ## Not run: 
    svc <- opensearchservice()
    svc$accept_inbound_connection(
      Foo = 123
    )

    ## End(Not run)
