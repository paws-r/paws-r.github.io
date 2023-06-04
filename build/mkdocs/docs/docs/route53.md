<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>route53</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Amazon Route 53

### Description

Amazon Route 53 is a highly available and scalable Domain Name System
(DNS) web service.

You can use Route 53 to:

-   Register domain names.

    For more information, see [How domain registration
    works](https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/welcome-domain-registration.html).

-   Route internet traffic to the resources for your domain

    For more information, see [How internet traffic is routed to your
    website or web
    application](https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/welcome-dns-service.html).

-   Check the health of your resources.

    For more information, see [How Route 53 checks the health of your
    resources](https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/welcome-health-checks.html).

### Usage

    route53(config = list())

### Arguments

<table>
<colgroup>
<col style="width: 15%" />
<col style="width: 85%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="route53_:_config">config</code></td>
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

    svc <- route53(
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
<td style="text-align: left;"><a href="../route53_activate_key_signing_key/"> activate_key_signing_key </a></td>
<td style="text-align: left;">Activates a key-signing key (KSK) so that
it can be used for signing by DNSSEC</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../route53_associate_vpc_with_hosted_zone/"> associate_vpc_with_hosted_zone </a></td>
<td style="text-align: left;">Associates an Amazon VPC with a private
hosted zone</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../route53_change_cidr_collection/"> change_cidr_collection </a></td>
<td style="text-align: left;">Creates, changes, or deletes CIDR blocks
within a collection</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../route53_change_resource_record_sets/"> change_resource_record_sets </a></td>
<td style="text-align: left;">Creates, changes, or deletes a resource
record set, which contains authoritative DNS information for a specified
domain name or subdomain name</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../route53_change_tags_for_resource/"> change_tags_for_resource </a></td>
<td style="text-align: left;">Adds, edits, or deletes tags for a health
check or a hosted zone</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../route53_create_cidr_collection/"> create_cidr_collection </a></td>
<td style="text-align: left;">Creates a CIDR collection in the current
Amazon Web Services account</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../route53_create_health_check/"> create_health_check </a></td>
<td style="text-align: left;">Creates a new health check</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../route53_create_hosted_zone/"> create_hosted_zone </a></td>
<td style="text-align: left;">Creates a new public or private hosted
zone</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../route53_create_key_signing_key/"> create_key_signing_key </a></td>
<td style="text-align: left;">Creates a new key-signing key (KSK)
associated with a hosted zone</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../route53_create_query_logging_config/"> create_query_logging_config </a></td>
<td style="text-align: left;">Creates a configuration for DNS query
logging</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../route53_create_reusable_delegation_set/"> create_reusable_delegation_set </a></td>
<td style="text-align: left;">Creates a delegation set (a group of four
name servers) that can be reused by multiple hosted zones that were
created by the same Amazon Web Services account</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../route53_create_traffic_policy/"> create_traffic_policy </a></td>
<td style="text-align: left;">Creates a traffic policy, which you use to
create multiple DNS resource record sets for one domain name (such as
example</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../route53_create_traffic_policy_instance/"> create_traffic_policy_instance </a></td>
<td style="text-align: left;">Creates resource record sets in a
specified hosted zone based on the settings in a specified traffic
policy version</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../route53_create_traffic_policy_version/"> create_traffic_policy_version </a></td>
<td style="text-align: left;">Creates a new version of an existing
traffic policy</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../route53_create_vpc_association_authorization/"> create_vpc_association_authorization </a></td>
<td style="text-align: left;">Authorizes the Amazon Web Services account
that created a specified VPC to submit an AssociateVPCWithHostedZone
request to associate the VPC with a specified hosted zone that was
created by a different account</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../route53_deactivate_key_signing_key/"> deactivate_key_signing_key </a></td>
<td style="text-align: left;">Deactivates a key-signing key (KSK) so
that it will not be used for signing by DNSSEC</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../route53_delete_cidr_collection/"> delete_cidr_collection </a></td>
<td style="text-align: left;">Deletes a CIDR collection in the current
Amazon Web Services account</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../route53_delete_health_check/"> delete_health_check </a></td>
<td style="text-align: left;">Deletes a health check</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../route53_delete_hosted_zone/"> delete_hosted_zone </a></td>
<td style="text-align: left;">Deletes a hosted zone</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../route53_delete_key_signing_key/"> delete_key_signing_key </a></td>
<td style="text-align: left;">Deletes a key-signing key (KSK)</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../route53_delete_query_logging_config/"> delete_query_logging_config </a></td>
<td style="text-align: left;">Deletes a configuration for DNS query
logging</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../route53_delete_reusable_delegation_set/"> delete_reusable_delegation_set </a></td>
<td style="text-align: left;">Deletes a reusable delegation set</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../route53_delete_traffic_policy/"> delete_traffic_policy </a></td>
<td style="text-align: left;">Deletes a traffic policy</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../route53_delete_traffic_policy_instance/"> delete_traffic_policy_instance </a></td>
<td style="text-align: left;">Deletes a traffic policy instance and all
of the resource record sets that Amazon Route 53 created when you
created the instance</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../route53_delete_vpc_association_authorization/"> delete_vpc_association_authorization </a></td>
<td style="text-align: left;">Removes authorization to submit an
AssociateVPCWithHostedZone request to associate a specified VPC with a
hosted zone that was created by a different account</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../route53_disable_hosted_zone_dnssec/"> disable_hosted_zone_dnssec </a></td>
<td style="text-align: left;">Disables DNSSEC signing in a specific
hosted zone</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../route53_disassociate_vpc_from_hosted_zone/"> disassociate_vpc_from_hosted_zone </a></td>
<td style="text-align: left;">Disassociates an Amazon Virtual Private
Cloud (Amazon VPC) from an Amazon Route 53 private hosted zone</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../route53_enable_hosted_zone_dnssec/"> enable_hosted_zone_dnssec </a></td>
<td style="text-align: left;">Enables DNSSEC signing in a specific
hosted zone</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../route53_get_account_limit/"> get_account_limit </a></td>
<td style="text-align: left;">Gets the specified limit for the current
account, for example, the maximum number of health checks that you can
create using the account</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../route53_get_change/"> get_change </a></td>
<td style="text-align: left;">Returns the current status of a change
batch request</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../route53_get_checker_ip_ranges/"> get_checker_ip_ranges </a></td>
<td style="text-align: left;">Route 53 does not perform authorization
for this API because it retrieves information that is already available
to the public</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../route53_get_dnssec/"> get_dnssec </a></td>
<td style="text-align: left;">Returns information about DNSSEC for a
specific hosted zone, including the key-signing keys (KSKs) in the
hosted zone</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../route53_get_geo_location/"> get_geo_location </a></td>
<td style="text-align: left;">Gets information about whether a specified
geographic location is supported for Amazon Route 53 geolocation
resource record sets</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../route53_get_health_check/"> get_health_check </a></td>
<td style="text-align: left;">Gets information about a specified health
check</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../route53_get_health_check_count/"> get_health_check_count </a></td>
<td style="text-align: left;">Retrieves the number of health checks that
are associated with the current Amazon Web Services account</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../route53_get_health_check_last_failure_reason/"> get_health_check_last_failure_reason </a></td>
<td style="text-align: left;">Gets the reason that a specified health
check failed most recently</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../route53_get_health_check_status/"> get_health_check_status </a></td>
<td style="text-align: left;">Gets status of a specified health
check</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../route53_get_hosted_zone/"> get_hosted_zone </a></td>
<td style="text-align: left;">Gets information about a specified hosted
zone including the four name servers assigned to the hosted zone</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../route53_get_hosted_zone_count/"> get_hosted_zone_count </a></td>
<td style="text-align: left;">Retrieves the number of hosted zones that
are associated with the current Amazon Web Services account</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../route53_get_hosted_zone_limit/"> get_hosted_zone_limit </a></td>
<td style="text-align: left;">Gets the specified limit for a specified
hosted zone, for example, the maximum number of records that you can
create in the hosted zone</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../route53_get_query_logging_config/"> get_query_logging_config </a></td>
<td style="text-align: left;">Gets information about a specified
configuration for DNS query logging</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../route53_get_reusable_delegation_set/"> get_reusable_delegation_set </a></td>
<td style="text-align: left;">Retrieves information about a specified
reusable delegation set, including the four name servers that are
assigned to the delegation set</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../route53_get_reusable_delegation_set_limit/"> get_reusable_delegation_set_limit </a></td>
<td style="text-align: left;">Gets the maximum number of hosted zones
that you can associate with the specified reusable delegation set</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../route53_get_traffic_policy/"> get_traffic_policy </a></td>
<td style="text-align: left;">Gets information about a specific traffic
policy version</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../route53_get_traffic_policy_instance/"> get_traffic_policy_instance </a></td>
<td style="text-align: left;">Gets information about a specified traffic
policy instance</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../route53_get_traffic_policy_instance_count/"> get_traffic_policy_instance_count </a></td>
<td style="text-align: left;">Gets the number of traffic policy
instances that are associated with the current Amazon Web Services
account</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../route53_list_cidr_blocks/"> list_cidr_blocks </a></td>
<td style="text-align: left;">Returns a paginated list of location
objects and their CIDR blocks</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../route53_list_cidr_collections/"> list_cidr_collections </a></td>
<td style="text-align: left;">Returns a paginated list of CIDR
collections in the Amazon Web Services account (metadata only)</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../route53_list_cidr_locations/"> list_cidr_locations </a></td>
<td style="text-align: left;">Returns a paginated list of CIDR locations
for the given collection (metadata only, does not include CIDR
blocks)</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../route53_list_geo_locations/"> list_geo_locations </a></td>
<td style="text-align: left;">Retrieves a list of supported geographic
locations</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../route53_list_health_checks/"> list_health_checks </a></td>
<td style="text-align: left;">Retrieve a list of the health checks that
are associated with the current Amazon Web Services account</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../route53_list_hosted_zones/"> list_hosted_zones </a></td>
<td style="text-align: left;">Retrieves a list of the public and private
hosted zones that are associated with the current Amazon Web Services
account</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../route53_list_hosted_zones_by_name/"> list_hosted_zones_by_name </a></td>
<td style="text-align: left;">Retrieves a list of your hosted zones in
lexicographic order</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../route53_list_hosted_zones_by_vpc/"> list_hosted_zones_by_vpc </a></td>
<td style="text-align: left;">Lists all the private hosted zones that a
specified VPC is associated with, regardless of which Amazon Web
Services account or Amazon Web Services service owns the hosted
zones</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../route53_list_query_logging_configs/"> list_query_logging_configs </a></td>
<td style="text-align: left;">Lists the configurations for DNS query
logging that are associated with the current Amazon Web Services account
or the configuration that is associated with a specified hosted
zone</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../route53_list_resource_record_sets/"> list_resource_record_sets </a></td>
<td style="text-align: left;">Lists the resource record sets in a
specified hosted zone</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../route53_list_reusable_delegation_sets/"> list_reusable_delegation_sets </a></td>
<td style="text-align: left;">Retrieves a list of the reusable
delegation sets that are associated with the current Amazon Web Services
account</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../route53_list_tags_for_resource/"> list_tags_for_resource </a></td>
<td style="text-align: left;">Lists tags for one health check or hosted
zone</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../route53_list_tags_for_resources/"> list_tags_for_resources </a></td>
<td style="text-align: left;">Lists tags for up to 10 health checks or
hosted zones</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../route53_list_traffic_policies/"> list_traffic_policies </a></td>
<td style="text-align: left;">Gets information about the latest version
for every traffic policy that is associated with the current Amazon Web
Services account</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../route53_list_traffic_policy_instances/"> list_traffic_policy_instances </a></td>
<td style="text-align: left;">Gets information about the traffic policy
instances that you created by using the current Amazon Web Services
account</td>
</tr>
<tr class="even">
<td
style="text-align: left;"><a href="../route53_list_traffic_policy_instances_by_hosted_zone/"> list_traffic_policy_instances_by_hosted_zone </a></td>
<td style="text-align: left;">Gets information about the traffic policy
instances that you created in a specified hosted zone</td>
</tr>
<tr class="odd">
<td
style="text-align: left;"><a href="../route53_list_traffic_policy_instances_by_policy/"> list_traffic_policy_instances_by_policy </a></td>
<td style="text-align: left;">Gets information about the traffic policy
instances that you created by using a specify traffic policy
version</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../route53_list_traffic_policy_versions/"> list_traffic_policy_versions </a></td>
<td style="text-align: left;">Gets information about all of the versions
for a specified traffic policy</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../route53_list_vpc_association_authorizations/"> list_vpc_association_authorizations </a></td>
<td style="text-align: left;">Gets a list of the VPCs that were created
by other accounts and that can be associated with a specified hosted
zone because you've submitted one or more
CreateVPCAssociationAuthorization requests</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../route53_test_dns_answer/"> test_dns_answer </a></td>
<td style="text-align: left;">Gets the value that Amazon Route 53
returns in response to a DNS request for a specified record name and
type</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../route53_update_health_check/"> update_health_check </a></td>
<td style="text-align: left;">Updates an existing health check</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../route53_update_hosted_zone_comment/"> update_hosted_zone_comment </a></td>
<td style="text-align: left;">Updates the comment for a specified hosted
zone</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../route53_update_traffic_policy_comment/"> update_traffic_policy_comment </a></td>
<td style="text-align: left;">Updates the comment for a specified
traffic policy version</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../route53_update_traffic_policy_instance/"> update_traffic_policy_instance </a></td>
<td style="text-align: left;">Updates the resource record sets in a
specified hosted zone that were created based on the settings in a
specified traffic policy version</td>
</tr>
</tbody>
</table>

### Examples

    ## Not run: 
    svc <- route53()
    # The following example associates the VPC with ID vpc-1a2b3c4d with the
    # hosted zone with ID Z3M3LMPEXAMPLE.
    svc$associate_vpc_with_hosted_zone(
      Comment = "",
      HostedZoneId = "Z3M3LMPEXAMPLE",
      VPC = list(
        VPCId = "vpc-1a2b3c4d",
        VPCRegion = "us-east-2"
      )
    )

    ## End(Not run)
