<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>elbv2</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Elastic Load Balancing

### Description

A load balancer distributes incoming traffic across targets, such as
your EC2 instances. This enables you to increase the availability of
your application. The load balancer also monitors the health of its
registered targets and ensures that it routes traffic only to healthy
targets. You configure your load balancer to accept incoming traffic by
specifying one or more listeners, which are configured with a protocol
and port number for connections from clients to the load balancer. You
configure a target group with a protocol and port number for connections
from the load balancer to the targets, and with health check settings to
be used when checking the health status of the targets.

Elastic Load Balancing supports the following types of load balancers:
Application Load Balancers, Network Load Balancers, Gateway Load
Balancers, and Classic Load Balancers. This reference covers the
following load balancer types:

-   Application Load Balancer - Operates at the application layer
    (layer 7) and supports HTTP and HTTPS.

-   Network Load Balancer - Operates at the transport layer (layer 4)
    and supports TCP, TLS, and UDP.

-   Gateway Load Balancer - Operates at the network layer (layer 3).

For more information, see the [Elastic Load Balancing User
Guide](https://docs.aws.amazon.com/elasticloadbalancing/latest/userguide/).

All Elastic Load Balancing operations are idempotent, which means that
they complete at most one time. If you repeat an operation, it succeeds.

### Usage

    elbv2(config = list())

### Arguments

<table>
<colgroup>
<col style="width: 15%" />
<col style="width: 85%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="elbv2_:_config">config</code></td>
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

    svc <- elbv2(
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
<td style="text-align: left;"><a href="../elbv2_add_listener_certificates/"> add_listener_certificates </a></td>
<td style="text-align: left;">Adds the specified SSL server certificate
to the certificate list for the specified HTTPS or TLS listener</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../elbv2_add_tags/"> add_tags </a></td>
<td style="text-align: left;">Adds the specified tags to the specified
Elastic Load Balancing resource</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../elbv2_create_listener/"> create_listener </a></td>
<td style="text-align: left;">Creates a listener for the specified
Application Load Balancer, Network Load Balancer, or Gateway Load
Balancer</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../elbv2_create_load_balancer/"> create_load_balancer </a></td>
<td style="text-align: left;">Creates an Application Load Balancer,
Network Load Balancer, or Gateway Load Balancer</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../elbv2_create_rule/"> create_rule </a></td>
<td style="text-align: left;">Creates a rule for the specified
listener</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../elbv2_create_target_group/"> create_target_group </a></td>
<td style="text-align: left;">Creates a target group</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../elbv2_delete_listener/"> delete_listener </a></td>
<td style="text-align: left;">Deletes the specified listener</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../elbv2_delete_load_balancer/"> delete_load_balancer </a></td>
<td style="text-align: left;">Deletes the specified Application Load
Balancer, Network Load Balancer, or Gateway Load Balancer</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../elbv2_delete_rule/"> delete_rule </a></td>
<td style="text-align: left;">Deletes the specified rule</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../elbv2_delete_target_group/"> delete_target_group </a></td>
<td style="text-align: left;">Deletes the specified target group</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../elbv2_deregister_targets/"> deregister_targets </a></td>
<td style="text-align: left;">Deregisters the specified targets from the
specified target group</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../elbv2_describe_account_limits/"> describe_account_limits </a></td>
<td style="text-align: left;">Describes the current Elastic Load
Balancing resource limits for your Amazon Web Services account</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../elbv2_describe_listener_certificates/"> describe_listener_certificates </a></td>
<td style="text-align: left;">Describes the default certificate and the
certificate list for the specified HTTPS or TLS listener</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../elbv2_describe_listeners/"> describe_listeners </a></td>
<td style="text-align: left;">Describes the specified listeners or the
listeners for the specified Application Load Balancer, Network Load
Balancer, or Gateway Load Balancer</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../elbv2_describe_load_balancer_attributes/"> describe_load_balancer_attributes </a></td>
<td style="text-align: left;">Describes the attributes for the specified
Application Load Balancer, Network Load Balancer, or Gateway Load
Balancer</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../elbv2_describe_load_balancers/"> describe_load_balancers </a></td>
<td style="text-align: left;">Describes the specified load balancers or
all of your load balancers</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../elbv2_describe_rules/"> describe_rules </a></td>
<td style="text-align: left;">Describes the specified rules or the rules
for the specified listener</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../elbv2_describe_ssl_policies/"> describe_ssl_policies </a></td>
<td style="text-align: left;">Describes the specified policies or all
policies used for SSL negotiation</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../elbv2_describe_tags/"> describe_tags </a></td>
<td style="text-align: left;">Describes the tags for the specified
Elastic Load Balancing resources</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../elbv2_describe_target_group_attributes/"> describe_target_group_attributes </a></td>
<td style="text-align: left;">Describes the attributes for the specified
target group</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../elbv2_describe_target_groups/"> describe_target_groups </a></td>
<td style="text-align: left;">Describes the specified target groups or
all of your target groups</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../elbv2_describe_target_health/"> describe_target_health </a></td>
<td style="text-align: left;">Describes the health of the specified
targets or all of your targets</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../elbv2_modify_listener/"> modify_listener </a></td>
<td style="text-align: left;">Replaces the specified properties of the
specified listener</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../elbv2_modify_load_balancer_attributes/"> modify_load_balancer_attributes </a></td>
<td style="text-align: left;">Modifies the specified attributes of the
specified Application Load Balancer, Network Load Balancer, or Gateway
Load Balancer</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../elbv2_modify_rule/"> modify_rule </a></td>
<td style="text-align: left;">Replaces the specified properties of the
specified rule</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../elbv2_modify_target_group/"> modify_target_group </a></td>
<td style="text-align: left;">Modifies the health checks used when
evaluating the health state of the targets in the specified target
group</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../elbv2_modify_target_group_attributes/"> modify_target_group_attributes </a></td>
<td style="text-align: left;">Modifies the specified attributes of the
specified target group</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../elbv2_register_targets/"> register_targets </a></td>
<td style="text-align: left;">Registers the specified targets with the
specified target group</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../elbv2_remove_listener_certificates/"> remove_listener_certificates </a></td>
<td style="text-align: left;">Removes the specified certificate from the
certificate list for the specified HTTPS or TLS listener</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../elbv2_remove_tags/"> remove_tags </a></td>
<td style="text-align: left;">Removes the specified tags from the
specified Elastic Load Balancing resources</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../elbv2_set_ip_address_type/"> set_ip_address_type </a></td>
<td style="text-align: left;">Sets the type of IP addresses used by the
subnets of the specified load balancer</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../elbv2_set_rule_priorities/"> set_rule_priorities </a></td>
<td style="text-align: left;">Sets the priorities of the specified
rules</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../elbv2_set_security_groups/"> set_security_groups </a></td>
<td style="text-align: left;">Associates the specified security groups
with the specified Application Load Balancer</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../elbv2_set_subnets/"> set_subnets </a></td>
<td style="text-align: left;">Enables the Availability Zones for the
specified public subnets for the specified Application Load Balancer or
Network Load Balancer</td>
</tr>
</tbody>
</table>

### Examples

    ## Not run: 
    svc <- elbv2()
    # This example adds the specified tags to the specified load balancer.
    svc$add_tags(
      ResourceArns = list(
        "arn:aws:elasticloadbalancing:us-west-2:123456789012:loadbalancer/app/m..."
      ),
      Tags = list(
        list(
          Key = "project",
          Value = "lima"
        ),
        list(
          Key = "department",
          Value = "digital-media"
        )
      )
    )

    ## End(Not run)
