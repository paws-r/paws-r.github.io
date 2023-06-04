<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>elasticsearchservice</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Amazon Elasticsearch Service

### Description

Amazon Elasticsearch Configuration Service

Use the Amazon Elasticsearch Configuration API to create, configure, and
manage Elasticsearch domains.

For sample code that uses the Configuration API, see the [Amazon
Elasticsearch Service Developer
Guide](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/configuration-samples.html).
The guide also contains [sample code for sending signed HTTP requests to
the Elasticsearch
APIs](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/request-signing.html).

The endpoint for configuration service requests is region-specific:
es.*region*.amazonaws.com. For example, es.us-east-1.amazonaws.com. For
a current list of supported regions and endpoints, see <a
href="https://docs.aws.amazon.com/general/latest/gr/rande.html#elasticsearch-service-regions"
target="_blank">Regions and Endpoints</a>.

### Usage

    elasticsearchservice(config = list())

### Arguments

<table>
<colgroup>
<col style="width: 15%" />
<col style="width: 85%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="elasticsearchservice_:_config">config</code></td>
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

    svc <- elasticsearchservice(
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
<td
style="text-align: left;"><a href="../elasticsearchservice_accept_inbound_cross_cluster_search_connection/"> accept_inbound_cross_cluster_search_connection </a></td>
<td style="text-align: left;">Allows the destination domain owner to
accept an inbound cross-cluster search connection request</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../elasticsearchservice_add_tags/"> add_tags </a></td>
<td style="text-align: left;">Attaches tags to an existing Elasticsearch
domain</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../elasticsearchservice_associate_package/"> associate_package </a></td>
<td style="text-align: left;">Associates a package with an Amazon ES
domain</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../elasticsearchservice_authorize_vpc_endpoint_access/"> authorize_vpc_endpoint_access </a></td>
<td style="text-align: left;">Provides access to an Amazon OpenSearch
Service domain through the use of an interface VPC endpoint</td>
</tr>
<tr class="odd">
<td
style="text-align: left;"><a href="../elasticsearchservice_cancel_elasticsearch_service_software_update/"> cancel_elasticsearch_service_software_update </a></td>
<td style="text-align: left;">Cancels a scheduled service software
update for an Amazon ES domain</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../elasticsearchservice_create_elasticsearch_domain/"> create_elasticsearch_domain </a></td>
<td style="text-align: left;">Creates a new Elasticsearch domain</td>
</tr>
<tr class="odd">
<td
style="text-align: left;"><a href="../elasticsearchservice_create_outbound_cross_cluster_search_connection/"> create_outbound_cross_cluster_search_connection </a></td>
<td style="text-align: left;">Creates a new cross-cluster search
connection from a source domain to a destination domain</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../elasticsearchservice_create_package/"> create_package </a></td>
<td style="text-align: left;">Create a package for use with Amazon ES
domains</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../elasticsearchservice_create_vpc_endpoint/"> create_vpc_endpoint </a></td>
<td style="text-align: left;">Creates an Amazon OpenSearch
Service-managed VPC endpoint</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../elasticsearchservice_delete_elasticsearch_domain/"> delete_elasticsearch_domain </a></td>
<td style="text-align: left;">Permanently deletes the specified
Elasticsearch domain and all of its data</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../elasticsearchservice_delete_elasticsearch_service_role/"> delete_elasticsearch_service_role </a></td>
<td style="text-align: left;">Deletes the service-linked role that
Elasticsearch Service uses to manage and maintain VPC domains</td>
</tr>
<tr class="even">
<td
style="text-align: left;"><a href="../elasticsearchservice_delete_inbound_cross_cluster_search_connection/"> delete_inbound_cross_cluster_search_connection </a></td>
<td style="text-align: left;">Allows the destination domain owner to
delete an existing inbound cross-cluster search connection</td>
</tr>
<tr class="odd">
<td
style="text-align: left;"><a href="../elasticsearchservice_delete_outbound_cross_cluster_search_connection/"> delete_outbound_cross_cluster_search_connection </a></td>
<td style="text-align: left;">Allows the source domain owner to delete
an existing outbound cross-cluster search connection</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../elasticsearchservice_delete_package/"> delete_package </a></td>
<td style="text-align: left;">Delete the package</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../elasticsearchservice_delete_vpc_endpoint/"> delete_vpc_endpoint </a></td>
<td style="text-align: left;">Deletes an Amazon OpenSearch
Service-managed interface VPC endpoint</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../elasticsearchservice_describe_domain_auto_tunes/"> describe_domain_auto_tunes </a></td>
<td style="text-align: left;">Provides scheduled Auto-Tune action
details for the Elasticsearch domain, such as Auto-Tune action type,
description, severity, and scheduled date</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../elasticsearchservice_describe_domain_change_progress/"> describe_domain_change_progress </a></td>
<td style="text-align: left;">Returns information about the current
blue/green deployment happening on a domain, including a change ID,
status, and progress stages</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../elasticsearchservice_describe_elasticsearch_domain/"> describe_elasticsearch_domain </a></td>
<td style="text-align: left;">Returns domain configuration information
about the specified Elasticsearch domain, including the domain ID,
domain endpoint, and domain ARN</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../elasticsearchservice_describe_elasticsearch_domain_config/"> describe_elasticsearch_domain_config </a></td>
<td style="text-align: left;">Provides cluster configuration information
about the specified Elasticsearch domain, such as the state, creation
date, update version, and update date for cluster options</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../elasticsearchservice_describe_elasticsearch_domains/"> describe_elasticsearch_domains </a></td>
<td style="text-align: left;">Returns domain configuration information
about the specified Elasticsearch domains, including the domain ID,
domain endpoint, and domain ARN</td>
</tr>
<tr class="odd">
<td
style="text-align: left;"><a href="../elasticsearchservice_describe_elasticsearch_instance_type_limits/"> describe_elasticsearch_instance_type_limits </a></td>
<td style="text-align: left;">Describe Elasticsearch Limits for a given
InstanceType and ElasticsearchVersion</td>
</tr>
<tr class="even">
<td
style="text-align: left;"><a href="../elasticsearchservice_describe_inbound_cross_cluster_search_connections/"> describe_inbound_cross_cluster_search_connections </a></td>
<td style="text-align: left;">Lists all the inbound cross-cluster search
connections for a destination domain</td>
</tr>
<tr class="odd">
<td
style="text-align: left;"><a href="../elasticsearchservice_describe_outbound_cross_cluster_search_connections/"> describe_outbound_cross_cluster_search_connections </a></td>
<td style="text-align: left;">Lists all the outbound cross-cluster
search connections for a source domain</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../elasticsearchservice_describe_packages/"> describe_packages </a></td>
<td style="text-align: left;">Describes all packages available to Amazon
ES</td>
</tr>
<tr class="odd">
<td
style="text-align: left;"><a href="../elasticsearchservice_describe_reserved_elasticsearch_instance_offerings/"> describe_reserved_elasticsearch_instance_offerings </a></td>
<td style="text-align: left;">Lists available reserved Elasticsearch
instance offerings</td>
</tr>
<tr class="even">
<td
style="text-align: left;"><a href="../elasticsearchservice_describe_reserved_elasticsearch_instances/"> describe_reserved_elasticsearch_instances </a></td>
<td style="text-align: left;">Returns information about reserved
Elasticsearch instances for this account</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../elasticsearchservice_describe_vpc_endpoints/"> describe_vpc_endpoints </a></td>
<td style="text-align: left;">Describes one or more Amazon OpenSearch
Service-managed VPC endpoints</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../elasticsearchservice_dissociate_package/"> dissociate_package </a></td>
<td style="text-align: left;">Dissociates a package from the Amazon ES
domain</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../elasticsearchservice_get_compatible_elasticsearch_versions/"> get_compatible_elasticsearch_versions </a></td>
<td style="text-align: left;">Returns a list of upgrade compatible
Elastisearch versions</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../elasticsearchservice_get_package_version_history/"> get_package_version_history </a></td>
<td style="text-align: left;">Returns a list of versions of the package,
along with their creation time and commit message</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../elasticsearchservice_get_upgrade_history/"> get_upgrade_history </a></td>
<td style="text-align: left;">Retrieves the complete history of the last
10 upgrades that were performed on the domain</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../elasticsearchservice_get_upgrade_status/"> get_upgrade_status </a></td>
<td style="text-align: left;">Retrieves the latest status of the last
upgrade or upgrade eligibility check that was performed on the
domain</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../elasticsearchservice_list_domain_names/"> list_domain_names </a></td>
<td style="text-align: left;">Returns the name of all Elasticsearch
domains owned by the current user's account</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../elasticsearchservice_list_domains_for_package/"> list_domains_for_package </a></td>
<td style="text-align: left;">Lists all Amazon ES domains associated
with the package</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../elasticsearchservice_list_elasticsearch_instance_types/"> list_elasticsearch_instance_types </a></td>
<td style="text-align: left;">List all Elasticsearch instance types that
are supported for given ElasticsearchVersion</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../elasticsearchservice_list_elasticsearch_versions/"> list_elasticsearch_versions </a></td>
<td style="text-align: left;">List all supported Elasticsearch
versions</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../elasticsearchservice_list_packages_for_domain/"> list_packages_for_domain </a></td>
<td style="text-align: left;">Lists all packages associated with the
Amazon ES domain</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../elasticsearchservice_list_tags/"> list_tags </a></td>
<td style="text-align: left;">Returns all tags for the given
Elasticsearch domain</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../elasticsearchservice_list_vpc_endpoint_access/"> list_vpc_endpoint_access </a></td>
<td style="text-align: left;">Retrieves information about each principal
that is allowed to access a given Amazon OpenSearch Service domain
through the use of an interface VPC endpoint</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../elasticsearchservice_list_vpc_endpoints/"> list_vpc_endpoints </a></td>
<td style="text-align: left;">Retrieves all Amazon OpenSearch
Service-managed VPC endpoints in the current account and Region</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../elasticsearchservice_list_vpc_endpoints_for_domain/"> list_vpc_endpoints_for_domain </a></td>
<td style="text-align: left;">Retrieves all Amazon OpenSearch
Service-managed VPC endpoints associated with a particular domain</td>
</tr>
<tr class="even">
<td
style="text-align: left;"><a href="../elasticsearchservice_purchase_reserved_elasticsearch_instance_offering/"> purchase_reserved_elasticsearch_instance_offering </a></td>
<td style="text-align: left;">Allows you to purchase reserved
Elasticsearch instances</td>
</tr>
<tr class="odd">
<td
style="text-align: left;"><a href="../elasticsearchservice_reject_inbound_cross_cluster_search_connection/"> reject_inbound_cross_cluster_search_connection </a></td>
<td style="text-align: left;">Allows the destination domain owner to
reject an inbound cross-cluster search connection request</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../elasticsearchservice_remove_tags/"> remove_tags </a></td>
<td style="text-align: left;">Removes the specified set of tags from the
specified Elasticsearch domain</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../elasticsearchservice_revoke_vpc_endpoint_access/"> revoke_vpc_endpoint_access </a></td>
<td style="text-align: left;">Revokes access to an Amazon OpenSearch
Service domain that was provided through an interface VPC endpoint</td>
</tr>
<tr class="even">
<td
style="text-align: left;"><a href="../elasticsearchservice_start_elasticsearch_service_software_update/"> start_elasticsearch_service_software_update </a></td>
<td style="text-align: left;">Schedules a service software update for an
Amazon ES domain</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../elasticsearchservice_update_elasticsearch_domain_config/"> update_elasticsearch_domain_config </a></td>
<td style="text-align: left;">Modifies the cluster configuration of the
specified Elasticsearch domain, setting as setting the instance type and
the number of instances</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../elasticsearchservice_update_package/"> update_package </a></td>
<td style="text-align: left;">Updates a package for use with Amazon ES
domains</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../elasticsearchservice_update_vpc_endpoint/"> update_vpc_endpoint </a></td>
<td style="text-align: left;">Modifies an Amazon OpenSearch
Service-managed interface VPC endpoint</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../elasticsearchservice_upgrade_elasticsearch_domain/"> upgrade_elasticsearch_domain </a></td>
<td style="text-align: left;">Allows you to either upgrade your domain
or perform an Upgrade eligibility check to a compatible Elasticsearch
version</td>
</tr>
</tbody>
</table>

### Examples

    ## Not run: 
    svc <- elasticsearchservice()
    svc$accept_inbound_cross_cluster_search_connection(
      Foo = 123
    )

    ## End(Not run)
