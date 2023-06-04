<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>networkfirewall</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## AWS Network Firewall

### Description

This is the API Reference for Network Firewall. This guide is for
developers who need detailed information about the Network Firewall API
actions, data types, and errors.

-   The REST API requires you to handle connection details, such as
    calculating signatures, handling request retries, and error
    handling. For general information about using the Amazon Web
    Services REST APIs, see [Amazon Web Services
    APIs](https://docs.aws.amazon.com/general/latest/gr/).

    To access Network Firewall using the REST API endpoint:
    `⁠https://network-firewall.<region>.amazonaws.com ⁠`

-   Alternatively, you can use one of the Amazon Web Services SDKs to
    access an API that's tailored to the programming language or
    platform that you're using. For more information, see [Amazon Web
    Services SDKs](https://aws.amazon.com/developer/tools/#SDKs).

-   For descriptions of Network Firewall features, including and
    step-by-step instructions on how to use them through the Network
    Firewall console, see the [Network Firewall Developer
    Guide](https://docs.aws.amazon.com/network-firewall/latest/developerguide/).

Network Firewall is a stateful, managed, network firewall and intrusion
detection and prevention service for Amazon Virtual Private Cloud
(Amazon VPC). With Network Firewall, you can filter traffic at the
perimeter of your VPC. This includes filtering traffic going to and
coming from an internet gateway, NAT gateway, or over VPN or Direct
Connect. Network Firewall uses rules that are compatible with Suricata,
a free, open source network analysis and threat detection engine.
Network Firewall supports Suricata version 6.0.9. For information about
Suricata, see the [Suricata website](https://suricata.io/).

You can use Network Firewall to monitor and protect your VPC traffic in
a number of ways. The following are just a few examples:

-   Allow domains or IP addresses for known Amazon Web Services service
    endpoints, such as Amazon S3, and block all other forms of traffic.

-   Use custom lists of known bad domains to limit the types of domain
    names that your applications can access.

-   Perform deep packet inspection on traffic entering or leaving your
    VPC.

-   Use stateful protocol detection to filter protocols like HTTPS,
    regardless of the port used.

To enable Network Firewall for your VPCs, you perform steps in both
Amazon VPC and in Network Firewall. For information about using Amazon
VPC, see [Amazon VPC User
Guide](https://docs.aws.amazon.com/vpc/latest/userguide/).

To start using Network Firewall, do the following:

1.  (Optional) If you don't already have a VPC that you want to protect,
    create it in Amazon VPC.

2.  In Amazon VPC, in each Availability Zone where you want to have a
    firewall endpoint, create a subnet for the sole use of Network
    Firewall.

3.  In Network Firewall, create stateless and stateful rule groups, to
    define the components of the network traffic filtering behavior that
    you want your firewall to have.

4.  In Network Firewall, create a firewall policy that uses your rule
    groups and specifies additional default traffic filtering behavior.

5.  In Network Firewall, create a firewall and specify your new firewall
    policy and VPC subnets. Network Firewall creates a firewall endpoint
    in each subnet that you specify, with the behavior that's defined in
    the firewall policy.

6.  In Amazon VPC, use ingress routing enhancements to route traffic
    through the new firewall endpoints.

### Usage

    networkfirewall(config = list())

### Arguments

<table>
<colgroup>
<col style="width: 15%" />
<col style="width: 85%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="networkfirewall_:_config">config</code></td>
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

    svc <- networkfirewall(
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
<td style="text-align: left;"><a href="../networkfirewall_associate_firewall_policy/"> associate_firewall_policy </a></td>
<td style="text-align: left;">Associates a FirewallPolicy to a
Firewall</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../networkfirewall_associate_subnets/"> associate_subnets </a></td>
<td style="text-align: left;">Associates the specified subnets in the
Amazon VPC to the firewall</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../networkfirewall_create_firewall/"> create_firewall </a></td>
<td style="text-align: left;">Creates an Network Firewall Firewall and
accompanying FirewallStatus for a VPC</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../networkfirewall_create_firewall_policy/"> create_firewall_policy </a></td>
<td style="text-align: left;">Creates the firewall policy for the
firewall according to the specifications</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../networkfirewall_create_rule_group/"> create_rule_group </a></td>
<td style="text-align: left;">Creates the specified stateless or
stateful rule group, which includes the rules for network traffic
inspection, a capacity setting, and tags</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../networkfirewall_create_tls_inspection_configuration/"> create_tls_inspection_configuration </a></td>
<td style="text-align: left;">Creates an Network Firewall TLS inspection
configuration</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../networkfirewall_delete_firewall/"> delete_firewall </a></td>
<td style="text-align: left;">Deletes the specified Firewall and its
FirewallStatus</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../networkfirewall_delete_firewall_policy/"> delete_firewall_policy </a></td>
<td style="text-align: left;">Deletes the specified FirewallPolicy</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../networkfirewall_delete_resource_policy/"> delete_resource_policy </a></td>
<td style="text-align: left;">Deletes a resource policy that you created
in a PutResourcePolicy request</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../networkfirewall_delete_rule_group/"> delete_rule_group </a></td>
<td style="text-align: left;">Deletes the specified RuleGroup</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../networkfirewall_delete_tls_inspection_configuration/"> delete_tls_inspection_configuration </a></td>
<td style="text-align: left;">Deletes the specified
TLSInspectionConfiguration</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../networkfirewall_describe_firewall/"> describe_firewall </a></td>
<td style="text-align: left;">Returns the data objects for the specified
firewall</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../networkfirewall_describe_firewall_policy/"> describe_firewall_policy </a></td>
<td style="text-align: left;">Returns the data objects for the specified
firewall policy</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../networkfirewall_describe_logging_configuration/"> describe_logging_configuration </a></td>
<td style="text-align: left;">Returns the logging configuration for the
specified firewall</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../networkfirewall_describe_resource_policy/"> describe_resource_policy </a></td>
<td style="text-align: left;">Retrieves a resource policy that you
created in a PutResourcePolicy request</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../networkfirewall_describe_rule_group/"> describe_rule_group </a></td>
<td style="text-align: left;">Returns the data objects for the specified
rule group</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../networkfirewall_describe_rule_group_metadata/"> describe_rule_group_metadata </a></td>
<td style="text-align: left;">High-level information about a rule group,
returned by operations like create and describe</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../networkfirewall_describe_tls_inspection_configuration/"> describe_tls_inspection_configuration </a></td>
<td style="text-align: left;">Returns the data objects for the specified
TLS inspection configuration</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../networkfirewall_disassociate_subnets/"> disassociate_subnets </a></td>
<td style="text-align: left;">Removes the specified subnet associations
from the firewall</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../networkfirewall_list_firewall_policies/"> list_firewall_policies </a></td>
<td style="text-align: left;">Retrieves the metadata for the firewall
policies that you have defined</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../networkfirewall_list_firewalls/"> list_firewalls </a></td>
<td style="text-align: left;">Retrieves the metadata for the firewalls
that you have defined</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../networkfirewall_list_rule_groups/"> list_rule_groups </a></td>
<td style="text-align: left;">Retrieves the metadata for the rule groups
that you have defined</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../networkfirewall_list_tags_for_resource/"> list_tags_for_resource </a></td>
<td style="text-align: left;">Retrieves the tags associated with the
specified resource</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../networkfirewall_list_tls_inspection_configurations/"> list_tls_inspection_configurations </a></td>
<td style="text-align: left;">Retrieves the metadata for the TLS
inspection configurations that you have defined</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../networkfirewall_put_resource_policy/"> put_resource_policy </a></td>
<td style="text-align: left;">Creates or updates an IAM policy for your
rule group or firewall policy</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../networkfirewall_tag_resource/"> tag_resource </a></td>
<td style="text-align: left;">Adds the specified tags to the specified
resource</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../networkfirewall_untag_resource/"> untag_resource </a></td>
<td style="text-align: left;">Removes the tags with the specified keys
from the specified resource</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../networkfirewall_update_firewall_delete_protection/"> update_firewall_delete_protection </a></td>
<td style="text-align: left;">Modifies the flag, DeleteProtection, which
indicates whether it is possible to delete the firewall</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../networkfirewall_update_firewall_description/"> update_firewall_description </a></td>
<td style="text-align: left;">Modifies the description for the specified
firewall</td>
</tr>
<tr class="even">
<td
style="text-align: left;"><a href="../networkfirewall_update_firewall_encryption_configuration/"> update_firewall_encryption_configuration </a></td>
<td style="text-align: left;">A complex type that contains settings for
encryption of your firewall resources</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../networkfirewall_update_firewall_policy/"> update_firewall_policy </a></td>
<td style="text-align: left;">Updates the properties of the specified
firewall policy</td>
</tr>
<tr class="even">
<td
style="text-align: left;"><a href="../networkfirewall_update_firewall_policy_change_protection/"> update_firewall_policy_change_protection </a></td>
<td style="text-align: left;">Modifies the flag, ChangeProtection, which
indicates whether it is possible to change the firewall</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../networkfirewall_update_logging_configuration/"> update_logging_configuration </a></td>
<td style="text-align: left;">Sets the logging configuration for the
specified firewall</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../networkfirewall_update_rule_group/"> update_rule_group </a></td>
<td style="text-align: left;">Updates the rule settings for the
specified rule group</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../networkfirewall_update_subnet_change_protection/"> update_subnet_change_protection </a></td>
<td style="text-align: left;">Update subnet change protection</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../networkfirewall_update_tls_inspection_configuration/"> update_tls_inspection_configuration </a></td>
<td style="text-align: left;">Updates the TLS inspection configuration
settings for the specified TLS inspection configuration</td>
</tr>
</tbody>
</table>

### Examples

    ## Not run: 
    svc <- networkfirewall()
    svc$associate_firewall_policy(
      Foo = 123
    )

    ## End(Not run)
