<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>route53resolver</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Amazon Route 53 Resolver

### Description

When you create a VPC using Amazon VPC, you automatically get DNS
resolution within the VPC from Route 53 Resolver. By default, Resolver
answers DNS queries for VPC domain names such as domain names for EC2
instances or Elastic Load Balancing load balancers. Resolver performs
recursive lookups against public name servers for all other domain
names.

You can also configure DNS resolution between your VPC and your network
over a Direct Connect or VPN connection:

**Forward DNS queries from resolvers on your network to Route 53
Resolver**

DNS resolvers on your network can forward DNS queries to Resolver in a
specified VPC. This allows your DNS resolvers to easily resolve domain
names for Amazon Web Services resources such as EC2 instances or records
in a Route 53 private hosted zone. For more information, see [How DNS
Resolvers on Your Network Forward DNS Queries to Route 53
Resolver](https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/resolver.html#resolver-overview-forward-network-to-vpc)
in the *Amazon Route 53 Developer Guide*.

**Conditionally forward queries from a VPC to resolvers on your
network**

You can configure Resolver to forward queries that it receives from EC2
instances in your VPCs to DNS resolvers on your network. To forward
selected queries, you create Resolver rules that specify the domain
names for the DNS queries that you want to forward (such as
example.com), and the IP addresses of the DNS resolvers on your network
that you want to forward the queries to. If a query matches multiple
rules (example.com, acme.example.com), Resolver chooses the rule with
the most specific match (acme.example.com) and forwards the query to the
IP addresses that you specified in that rule. For more information, see
[How Route 53 Resolver Forwards DNS Queries from Your VPCs to Your
Network](https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/resolver.html#resolver-overview-forward-vpc-to-network)
in the *Amazon Route 53 Developer Guide*.

Like Amazon VPC, Resolver is Regional. In each Region where you have
VPCs, you can choose whether to forward queries from your VPCs to your
network (outbound queries), from your network to your VPCs (inbound
queries), or both.

### Usage

    route53resolver(config = list())

### Arguments

<table>
<colgroup>
<col style="width: 15%" />
<col style="width: 85%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="route53resolver_:_config">config</code></td>
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

    svc <- route53resolver(
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
<td style="text-align: left;"><a href="../route53resolver_associate_firewall_rule_group/"> associate_firewall_rule_group </a></td>
<td style="text-align: left;">Associates a FirewallRuleGroup with a VPC,
to provide DNS filtering for the VPC</td>
</tr>
<tr class="even">
<td
style="text-align: left;"><a href="../route53resolver_associate_resolver_endpoint_ip_address/"> associate_resolver_endpoint_ip_address </a></td>
<td style="text-align: left;">Adds IP addresses to an inbound or an
outbound Resolver endpoint</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../route53resolver_associate_resolver_query_log_config/"> associate_resolver_query_log_config </a></td>
<td style="text-align: left;">Associates an Amazon VPC with a specified
query logging configuration</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../route53resolver_associate_resolver_rule/"> associate_resolver_rule </a></td>
<td style="text-align: left;">Associates a Resolver rule with a VPC</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../route53resolver_create_firewall_domain_list/"> create_firewall_domain_list </a></td>
<td style="text-align: left;">Creates an empty firewall domain list for
use in DNS Firewall rules</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../route53resolver_create_firewall_rule/"> create_firewall_rule </a></td>
<td style="text-align: left;">Creates a single DNS Firewall rule in the
specified rule group, using the specified domain list</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../route53resolver_create_firewall_rule_group/"> create_firewall_rule_group </a></td>
<td style="text-align: left;">Creates an empty DNS Firewall rule group
for filtering DNS network traffic in a VPC</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../route53resolver_create_resolver_endpoint/"> create_resolver_endpoint </a></td>
<td style="text-align: left;">Creates a Resolver endpoint</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../route53resolver_create_resolver_query_log_config/"> create_resolver_query_log_config </a></td>
<td style="text-align: left;">Creates a Resolver query logging
configuration, which defines where you want Resolver to save DNS query
logs that originate in your VPCs</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../route53resolver_create_resolver_rule/"> create_resolver_rule </a></td>
<td style="text-align: left;">For DNS queries that originate in your
VPCs, specifies which Resolver endpoint the queries pass through, one
domain name that you want to forward to your network, and the IP
addresses of the DNS resolvers in your network</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../route53resolver_delete_firewall_domain_list/"> delete_firewall_domain_list </a></td>
<td style="text-align: left;">Deletes the specified domain list</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../route53resolver_delete_firewall_rule/"> delete_firewall_rule </a></td>
<td style="text-align: left;">Deletes the specified firewall rule</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../route53resolver_delete_firewall_rule_group/"> delete_firewall_rule_group </a></td>
<td style="text-align: left;">Deletes the specified firewall rule
group</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../route53resolver_delete_resolver_endpoint/"> delete_resolver_endpoint </a></td>
<td style="text-align: left;">Deletes a Resolver endpoint</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../route53resolver_delete_resolver_query_log_config/"> delete_resolver_query_log_config </a></td>
<td style="text-align: left;">Deletes a query logging configuration</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../route53resolver_delete_resolver_rule/"> delete_resolver_rule </a></td>
<td style="text-align: left;">Deletes a Resolver rule</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../route53resolver_disassociate_firewall_rule_group/"> disassociate_firewall_rule_group </a></td>
<td style="text-align: left;">Disassociates a FirewallRuleGroup from a
VPC, to remove DNS filtering from the VPC</td>
</tr>
<tr class="even">
<td
style="text-align: left;"><a href="../route53resolver_disassociate_resolver_endpoint_ip_address/"> disassociate_resolver_endpoint_ip_address </a></td>
<td style="text-align: left;">Removes IP addresses from an inbound or an
outbound Resolver endpoint</td>
</tr>
<tr class="odd">
<td
style="text-align: left;"><a href="../route53resolver_disassociate_resolver_query_log_config/"> disassociate_resolver_query_log_config </a></td>
<td style="text-align: left;">Disassociates a VPC from a query logging
configuration</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../route53resolver_disassociate_resolver_rule/"> disassociate_resolver_rule </a></td>
<td style="text-align: left;">Removes the association between a
specified Resolver rule and a specified VPC</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../route53resolver_get_firewall_config/"> get_firewall_config </a></td>
<td style="text-align: left;">Retrieves the configuration of the
firewall behavior provided by DNS Firewall for a single VPC from Amazon
Virtual Private Cloud (Amazon VPC)</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../route53resolver_get_firewall_domain_list/"> get_firewall_domain_list </a></td>
<td style="text-align: left;">Retrieves the specified firewall domain
list</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../route53resolver_get_firewall_rule_group/"> get_firewall_rule_group </a></td>
<td style="text-align: left;">Retrieves the specified firewall rule
group</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../route53resolver_get_firewall_rule_group_association/"> get_firewall_rule_group_association </a></td>
<td style="text-align: left;">Retrieves a firewall rule group
association, which enables DNS filtering for a VPC with one rule
group</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../route53resolver_get_firewall_rule_group_policy/"> get_firewall_rule_group_policy </a></td>
<td style="text-align: left;">Returns the Identity and Access Management
(Amazon Web Services IAM) policy for sharing the specified rule
group</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../route53resolver_get_resolver_config/"> get_resolver_config </a></td>
<td style="text-align: left;">Retrieves the behavior configuration of
Route 53 Resolver behavior for a single VPC from Amazon Virtual Private
Cloud</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../route53resolver_get_resolver_dnssec_config/"> get_resolver_dnssec_config </a></td>
<td style="text-align: left;">Gets DNSSEC validation information for a
specified resource</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../route53resolver_get_resolver_endpoint/"> get_resolver_endpoint </a></td>
<td style="text-align: left;">Gets information about a specified
Resolver endpoint, such as whether it's an inbound or an outbound
Resolver endpoint, and the current status of the endpoint</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../route53resolver_get_resolver_query_log_config/"> get_resolver_query_log_config </a></td>
<td style="text-align: left;">Gets information about a specified
Resolver query logging configuration, such as the number of VPCs that
the configuration is logging queries for and the location that logs are
sent to</td>
</tr>
<tr class="even">
<td
style="text-align: left;"><a href="../route53resolver_get_resolver_query_log_config_association/"> get_resolver_query_log_config_association </a></td>
<td style="text-align: left;">Gets information about a specified
association between a Resolver query logging configuration and an Amazon
VPC</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../route53resolver_get_resolver_query_log_config_policy/"> get_resolver_query_log_config_policy </a></td>
<td style="text-align: left;">Gets information about a query logging
policy</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../route53resolver_get_resolver_rule/"> get_resolver_rule </a></td>
<td style="text-align: left;">Gets information about a specified
Resolver rule, such as the domain name that the rule forwards DNS
queries for and the ID of the outbound Resolver endpoint that the rule
is associated with</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../route53resolver_get_resolver_rule_association/"> get_resolver_rule_association </a></td>
<td style="text-align: left;">Gets information about an association
between a specified Resolver rule and a VPC</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../route53resolver_get_resolver_rule_policy/"> get_resolver_rule_policy </a></td>
<td style="text-align: left;">Gets information about the Resolver rule
policy for a specified rule</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../route53resolver_import_firewall_domains/"> import_firewall_domains </a></td>
<td style="text-align: left;">Imports domain names from a file into a
domain list, for use in a DNS firewall rule group</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../route53resolver_list_firewall_configs/"> list_firewall_configs </a></td>
<td style="text-align: left;">Retrieves the firewall configurations that
you have defined</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../route53resolver_list_firewall_domain_lists/"> list_firewall_domain_lists </a></td>
<td style="text-align: left;">Retrieves the firewall domain lists that
you have defined</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../route53resolver_list_firewall_domains/"> list_firewall_domains </a></td>
<td style="text-align: left;">Retrieves the domains that you have
defined for the specified firewall domain list</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../route53resolver_list_firewall_rule_group_associations/"> list_firewall_rule_group_associations </a></td>
<td style="text-align: left;">Retrieves the firewall rule group
associations that you have defined</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../route53resolver_list_firewall_rule_groups/"> list_firewall_rule_groups </a></td>
<td style="text-align: left;">Retrieves the minimal high-level
information for the rule groups that you have defined</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../route53resolver_list_firewall_rules/"> list_firewall_rules </a></td>
<td style="text-align: left;">Retrieves the firewall rules that you have
defined for the specified firewall rule group</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../route53resolver_list_resolver_configs/"> list_resolver_configs </a></td>
<td style="text-align: left;">Retrieves the Resolver configurations that
you have defined</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../route53resolver_list_resolver_dnssec_configs/"> list_resolver_dnssec_configs </a></td>
<td style="text-align: left;">Lists the configurations for DNSSEC
validation that are associated with the current Amazon Web Services
account</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../route53resolver_list_resolver_endpoint_ip_addresses/"> list_resolver_endpoint_ip_addresses </a></td>
<td style="text-align: left;">Gets the IP addresses for a specified
Resolver endpoint</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../route53resolver_list_resolver_endpoints/"> list_resolver_endpoints </a></td>
<td style="text-align: left;">Lists all the Resolver endpoints that were
created using the current Amazon Web Services account</td>
</tr>
<tr class="even">
<td
style="text-align: left;"><a href="../route53resolver_list_resolver_query_log_config_associations/"> list_resolver_query_log_config_associations </a></td>
<td style="text-align: left;">Lists information about associations
between Amazon VPCs and query logging configurations</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../route53resolver_list_resolver_query_log_configs/"> list_resolver_query_log_configs </a></td>
<td style="text-align: left;">Lists information about the specified
query logging configurations</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../route53resolver_list_resolver_rule_associations/"> list_resolver_rule_associations </a></td>
<td style="text-align: left;">Lists the associations that were created
between Resolver rules and VPCs using the current Amazon Web Services
account</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../route53resolver_list_resolver_rules/"> list_resolver_rules </a></td>
<td style="text-align: left;">Lists the Resolver rules that were created
using the current Amazon Web Services account</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../route53resolver_list_tags_for_resource/"> list_tags_for_resource </a></td>
<td style="text-align: left;">Lists the tags that you associated with
the specified resource</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../route53resolver_put_firewall_rule_group_policy/"> put_firewall_rule_group_policy </a></td>
<td style="text-align: left;">Attaches an Identity and Access Management
(Amazon Web Services IAM) policy for sharing the rule group</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../route53resolver_put_resolver_query_log_config_policy/"> put_resolver_query_log_config_policy </a></td>
<td style="text-align: left;">Specifies an Amazon Web Services account
that you want to share a query logging configuration with, the query
logging configuration that you want to share, and the operations that
you want the account to be able to perform on the configuration</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../route53resolver_put_resolver_rule_policy/"> put_resolver_rule_policy </a></td>
<td style="text-align: left;">Specifies an Amazon Web Services rule that
you want to share with another account, the account that you want to
share the rule with, and the operations that you want the account to be
able to perform on the rule</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../route53resolver_tag_resource/"> tag_resource </a></td>
<td style="text-align: left;">Adds one or more tags to a specified
resource</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../route53resolver_untag_resource/"> untag_resource </a></td>
<td style="text-align: left;">Removes one or more tags from a specified
resource</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../route53resolver_update_firewall_config/"> update_firewall_config </a></td>
<td style="text-align: left;">Updates the configuration of the firewall
behavior provided by DNS Firewall for a single VPC from Amazon Virtual
Private Cloud (Amazon VPC)</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../route53resolver_update_firewall_domains/"> update_firewall_domains </a></td>
<td style="text-align: left;">Updates the firewall domain list from an
array of domain specifications</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../route53resolver_update_firewall_rule/"> update_firewall_rule </a></td>
<td style="text-align: left;">Updates the specified firewall rule</td>
</tr>
<tr class="odd">
<td
style="text-align: left;"><a href="../route53resolver_update_firewall_rule_group_association/"> update_firewall_rule_group_association </a></td>
<td style="text-align: left;">Changes the association of a
FirewallRuleGroup with a VPC</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../route53resolver_update_resolver_config/"> update_resolver_config </a></td>
<td style="text-align: left;">Updates the behavior configuration of
Route 53 Resolver behavior for a single VPC from Amazon Virtual Private
Cloud</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../route53resolver_update_resolver_dnssec_config/"> update_resolver_dnssec_config </a></td>
<td style="text-align: left;">Updates an existing DNSSEC validation
configuration</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../route53resolver_update_resolver_endpoint/"> update_resolver_endpoint </a></td>
<td style="text-align: left;">Updates the name, or enpoint type for an
inbound or an outbound Resolver endpoint</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../route53resolver_update_resolver_rule/"> update_resolver_rule </a></td>
<td style="text-align: left;">Updates settings for a specified Resolver
rule</td>
</tr>
</tbody>
</table>

### Examples

    ## Not run: 
    svc <- route53resolver()
    svc$associate_firewall_rule_group(
      Foo = 123
    )

    ## End(Not run)
