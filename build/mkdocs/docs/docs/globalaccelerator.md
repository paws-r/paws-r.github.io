<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>globalaccelerator</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## AWS Global Accelerator

### Description

Global Accelerator

This is the *Global Accelerator API Reference*. This guide is for
developers who need detailed information about Global Accelerator API
actions, data types, and errors. For more information about Global
Accelerator features, see the [Global Accelerator Developer
Guide](https://docs.aws.amazon.com/global-accelerator/latest/dg/what-is-global-accelerator.html).

Global Accelerator is a service in which you create *accelerators* to
improve the performance of your applications for local and global users.
Depending on the type of accelerator you choose, you can gain additional
benefits.

-   By using a standard accelerator, you can improve availability of
    your internet applications that are used by a global audience. With
    a standard accelerator, Global Accelerator directs traffic to
    optimal endpoints over the Amazon Web Services global network.

-   For other scenarios, you might choose a custom routing accelerator.
    With a custom routing accelerator, you can use application logic to
    directly map one or more users to a specific endpoint among many
    endpoints.

Global Accelerator is a global service that supports endpoints in
multiple Amazon Web Services Regions but you must specify the US West
(Oregon) Region to create, update, or otherwise work with accelerators.
That is, for example, specify `⁠--region us-west-2⁠` on AWS CLI commands.

By default, Global Accelerator provides you with static IP addresses
that you associate with your accelerator. The static IP addresses are
anycast from the Amazon Web Services edge network. For IPv4, Global
Accelerator provides two static IPv4 addresses. For dual-stack, Global
Accelerator provides a total of four addresses: two static IPv4
addresses and two static IPv6 addresses. With a standard accelerator for
IPv4, instead of using the addresses that Global Accelerator provides,
you can configure these entry points to be IPv4 addresses from your own
IP address ranges that you bring toGlobal Accelerator (BYOIP).

For a standard accelerator, they distribute incoming application traffic
across multiple endpoint resources in multiple Amazon Web Services
Regions , which increases the availability of your applications.
Endpoints for standard accelerators can be Network Load Balancers,
Application Load Balancers, Amazon EC2 instances, or Elastic IP
addresses that are located in one Amazon Web Services Region or multiple
Amazon Web Services Regions. For custom routing accelerators, you map
traffic that arrives to the static IP addresses to specific Amazon EC2
servers in endpoints that are virtual private cloud (VPC) subnets.

The static IP addresses remain assigned to your accelerator for as long
as it exists, even if you disable the accelerator and it no longer
accepts or routes traffic. However, when you *delete* an accelerator,
you lose the static IP addresses that are assigned to it, so you can no
longer route traffic by using them. You can use IAM policies like
tag-based permissions with Global Accelerator to limit the users who
have permissions to delete an accelerator. For more information, see
[Tag-based
policies](https://docs.aws.amazon.com/global-accelerator/latest/dg/).

For standard accelerators, Global Accelerator uses the Amazon Web
Services global network to route traffic to the optimal regional
endpoint based on health, client location, and policies that you
configure. The service reacts instantly to changes in health or
configuration to ensure that internet traffic from clients is always
directed to healthy endpoints.

For more information about understanding and using Global Accelerator,
see the [Global Accelerator Developer
Guide](https://docs.aws.amazon.com/global-accelerator/latest/dg/what-is-global-accelerator.html).

### Usage

    globalaccelerator(config = list())

### Arguments

<table>
<colgroup>
<col style="width: 15%" />
<col style="width: 85%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="globalaccelerator_:_config">config</code></td>
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

    svc <- globalaccelerator(
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
<td style="text-align: left;"><a href="../globalaccelerator_add_custom_routing_endpoints/"> add_custom_routing_endpoints </a></td>
<td style="text-align: left;">Associate a virtual private cloud (VPC)
subnet endpoint with your custom routing accelerator</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../globalaccelerator_add_endpoints/"> add_endpoints </a></td>
<td style="text-align: left;">Add endpoints to an endpoint group</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../globalaccelerator_advertise_byoip_cidr/"> advertise_byoip_cidr </a></td>
<td style="text-align: left;">Advertises an IPv4 address range that is
provisioned for use with your Amazon Web Services resources through
bring your own IP addresses (BYOIP)</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../globalaccelerator_allow_custom_routing_traffic/"> allow_custom_routing_traffic </a></td>
<td style="text-align: left;">Specify the Amazon EC2 instance
(destination) IP addresses and ports for a VPC subnet endpoint that can
receive traffic for a custom routing accelerator</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../globalaccelerator_create_accelerator/"> create_accelerator </a></td>
<td style="text-align: left;">Create an accelerator</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../globalaccelerator_create_custom_routing_accelerator/"> create_custom_routing_accelerator </a></td>
<td style="text-align: left;">Create a custom routing accelerator</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../globalaccelerator_create_custom_routing_endpoint_group/"> create_custom_routing_endpoint_group </a></td>
<td style="text-align: left;">Create an endpoint group for the specified
listener for a custom routing accelerator</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../globalaccelerator_create_custom_routing_listener/"> create_custom_routing_listener </a></td>
<td style="text-align: left;">Create a listener to process inbound
connections from clients to a custom routing accelerator</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../globalaccelerator_create_endpoint_group/"> create_endpoint_group </a></td>
<td style="text-align: left;">Create an endpoint group for the specified
listener</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../globalaccelerator_create_listener/"> create_listener </a></td>
<td style="text-align: left;">Create a listener to process inbound
connections from clients to an accelerator</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../globalaccelerator_delete_accelerator/"> delete_accelerator </a></td>
<td style="text-align: left;">Delete an accelerator</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../globalaccelerator_delete_custom_routing_accelerator/"> delete_custom_routing_accelerator </a></td>
<td style="text-align: left;">Delete a custom routing accelerator</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../globalaccelerator_delete_custom_routing_endpoint_group/"> delete_custom_routing_endpoint_group </a></td>
<td style="text-align: left;">Delete an endpoint group from a listener
for a custom routing accelerator</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../globalaccelerator_delete_custom_routing_listener/"> delete_custom_routing_listener </a></td>
<td style="text-align: left;">Delete a listener for a custom routing
accelerator</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../globalaccelerator_delete_endpoint_group/"> delete_endpoint_group </a></td>
<td style="text-align: left;">Delete an endpoint group from a
listener</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../globalaccelerator_delete_listener/"> delete_listener </a></td>
<td style="text-align: left;">Delete a listener from an accelerator</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../globalaccelerator_deny_custom_routing_traffic/"> deny_custom_routing_traffic </a></td>
<td style="text-align: left;">Specify the Amazon EC2 instance
(destination) IP addresses and ports for a VPC subnet endpoint that
cannot receive traffic for a custom routing accelerator</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../globalaccelerator_deprovision_byoip_cidr/"> deprovision_byoip_cidr </a></td>
<td style="text-align: left;">Releases the specified address range that
you provisioned to use with your Amazon Web Services resources through
bring your own IP addresses (BYOIP) and deletes the corresponding
address pool</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../globalaccelerator_describe_accelerator/"> describe_accelerator </a></td>
<td style="text-align: left;">Describe an accelerator</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../globalaccelerator_describe_accelerator_attributes/"> describe_accelerator_attributes </a></td>
<td style="text-align: left;">Describe the attributes of an
accelerator</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../globalaccelerator_describe_custom_routing_accelerator/"> describe_custom_routing_accelerator </a></td>
<td style="text-align: left;">Describe a custom routing accelerator</td>
</tr>
<tr class="even">
<td
style="text-align: left;"><a href="../globalaccelerator_describe_custom_routing_accelerator_attributes/"> describe_custom_routing_accelerator_attributes </a></td>
<td style="text-align: left;">Describe the attributes of a custom
routing accelerator</td>
</tr>
<tr class="odd">
<td
style="text-align: left;"><a href="../globalaccelerator_describe_custom_routing_endpoint_group/"> describe_custom_routing_endpoint_group </a></td>
<td style="text-align: left;">Describe an endpoint group for a custom
routing accelerator</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../globalaccelerator_describe_custom_routing_listener/"> describe_custom_routing_listener </a></td>
<td style="text-align: left;">The description of a listener for a custom
routing accelerator</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../globalaccelerator_describe_endpoint_group/"> describe_endpoint_group </a></td>
<td style="text-align: left;">Describe an endpoint group</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../globalaccelerator_describe_listener/"> describe_listener </a></td>
<td style="text-align: left;">Describe a listener</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../globalaccelerator_list_accelerators/"> list_accelerators </a></td>
<td style="text-align: left;">List the accelerators for an Amazon Web
Services account</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../globalaccelerator_list_byoip_cidrs/"> list_byoip_cidrs </a></td>
<td style="text-align: left;">Lists the IP address ranges that were
specified in calls to ProvisionByoipCidr, including the current state
and a history of state changes</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../globalaccelerator_list_custom_routing_accelerators/"> list_custom_routing_accelerators </a></td>
<td style="text-align: left;">List the custom routing accelerators for
an Amazon Web Services account</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../globalaccelerator_list_custom_routing_endpoint_groups/"> list_custom_routing_endpoint_groups </a></td>
<td style="text-align: left;">List the endpoint groups that are
associated with a listener for a custom routing accelerator</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../globalaccelerator_list_custom_routing_listeners/"> list_custom_routing_listeners </a></td>
<td style="text-align: left;">List the listeners for a custom routing
accelerator</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../globalaccelerator_list_custom_routing_port_mappings/"> list_custom_routing_port_mappings </a></td>
<td style="text-align: left;">Provides a complete mapping from the
public accelerator IP address and port to destination EC2 instance IP
addresses and ports in the virtual public cloud (VPC) subnet endpoint
for a custom routing accelerator</td>
</tr>
<tr class="odd">
<td
style="text-align: left;"><a href="../globalaccelerator_list_custom_routing_port_mappings_by_destination/"> list_custom_routing_port_mappings_by_destination </a></td>
<td style="text-align: left;">List the port mappings for a specific EC2
instance (destination) in a VPC subnet endpoint</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../globalaccelerator_list_endpoint_groups/"> list_endpoint_groups </a></td>
<td style="text-align: left;">List the endpoint groups that are
associated with a listener</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../globalaccelerator_list_listeners/"> list_listeners </a></td>
<td style="text-align: left;">List the listeners for an accelerator</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../globalaccelerator_list_tags_for_resource/"> list_tags_for_resource </a></td>
<td style="text-align: left;">List all tags for an accelerator</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../globalaccelerator_provision_byoip_cidr/"> provision_byoip_cidr </a></td>
<td style="text-align: left;">Provisions an IP address range to use with
your Amazon Web Services resources through bring your own IP addresses
(BYOIP) and creates a corresponding address pool</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../globalaccelerator_remove_custom_routing_endpoints/"> remove_custom_routing_endpoints </a></td>
<td style="text-align: left;">Remove endpoints from a custom routing
accelerator</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../globalaccelerator_remove_endpoints/"> remove_endpoints </a></td>
<td style="text-align: left;">Remove endpoints from an endpoint
group</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../globalaccelerator_tag_resource/"> tag_resource </a></td>
<td style="text-align: left;">Add tags to an accelerator resource</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../globalaccelerator_untag_resource/"> untag_resource </a></td>
<td style="text-align: left;">Remove tags from a Global Accelerator
resource</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../globalaccelerator_update_accelerator/"> update_accelerator </a></td>
<td style="text-align: left;">Update an accelerator</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../globalaccelerator_update_accelerator_attributes/"> update_accelerator_attributes </a></td>
<td style="text-align: left;">Update the attributes for an
accelerator</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../globalaccelerator_update_custom_routing_accelerator/"> update_custom_routing_accelerator </a></td>
<td style="text-align: left;">Update a custom routing accelerator</td>
</tr>
<tr class="odd">
<td
style="text-align: left;"><a href="../globalaccelerator_update_custom_routing_accelerator_attributes/"> update_custom_routing_accelerator_attributes </a></td>
<td style="text-align: left;">Update the attributes for a custom routing
accelerator</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../globalaccelerator_update_custom_routing_listener/"> update_custom_routing_listener </a></td>
<td style="text-align: left;">Update a listener for a custom routing
accelerator</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../globalaccelerator_update_endpoint_group/"> update_endpoint_group </a></td>
<td style="text-align: left;">Update an endpoint group</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../globalaccelerator_update_listener/"> update_listener </a></td>
<td style="text-align: left;">Update a listener</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../globalaccelerator_withdraw_byoip_cidr/"> withdraw_byoip_cidr </a></td>
<td style="text-align: left;">Stops advertising an address range that is
provisioned as an address pool</td>
</tr>
</tbody>
</table>

### Examples

    ## Not run: 
    svc <- globalaccelerator()
    svc$add_custom_routing_endpoints(
      Foo = 123
    )

    ## End(Not run)
