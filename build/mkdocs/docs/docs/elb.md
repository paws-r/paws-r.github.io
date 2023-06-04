<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>elb</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Elastic Load Balancing

### Description

A load balancer can distribute incoming traffic across your EC2
instances. This enables you to increase the availability of your
application. The load balancer also monitors the health of its
registered instances and ensures that it routes traffic only to healthy
instances. You configure your load balancer to accept incoming traffic
by specifying one or more listeners, which are configured with a
protocol and port number for connections from clients to the load
balancer and a protocol and port number for connections from the load
balancer to the instances.

Elastic Load Balancing supports three types of load balancers:
Application Load Balancers, Network Load Balancers, and Classic Load
Balancers. You can select a load balancer based on your application
needs. For more information, see the [Elastic Load Balancing User
Guide](https://docs.aws.amazon.com/elasticloadbalancing/latest/userguide/).

This reference covers the 2012-06-01 API, which supports Classic Load
Balancers. The 2015-12-01 API supports Application Load Balancers and
Network Load Balancers.

To get started, create a load balancer with one or more listeners using
`create_load_balancer`. Register your instances with the load balancer
using `register_instances_with_load_balancer`.

All Elastic Load Balancing operations are *idempotent*, which means that
they complete at most one time. If you repeat an operation, it succeeds
with a 200 OK response code.

### Usage

    elb(config = list())

### Arguments

<table>
<colgroup>
<col style="width: 15%" />
<col style="width: 85%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="elb_:_config">config</code></td>
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

    svc <- elb(
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
<td style="text-align: left;"><a href="../elb_add_tags/"> add_tags </a></td>
<td style="text-align: left;">Adds the specified tags to the specified
load balancer</td>
</tr>
<tr class="even">
<td
style="text-align: left;"><a href="../elb_apply_security_groups_to_load_balancer/"> apply_security_groups_to_load_balancer </a></td>
<td style="text-align: left;">Associates one or more security groups
with your load balancer in a virtual private cloud (VPC)</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../elb_attach_load_balancer_to_subnets/"> attach_load_balancer_to_subnets </a></td>
<td style="text-align: left;">Adds one or more subnets to the set of
configured subnets for the specified load balancer</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../elb_configure_health_check/"> configure_health_check </a></td>
<td style="text-align: left;">Specifies the health check settings to use
when evaluating the health state of your EC2 instances</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../elb_create_app_cookie_stickiness_policy/"> create_app_cookie_stickiness_policy </a></td>
<td style="text-align: left;">Generates a stickiness policy with sticky
session lifetimes that follow that of an application-generated
cookie</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../elb_create_lb_cookie_stickiness_policy/"> create_lb_cookie_stickiness_policy </a></td>
<td style="text-align: left;">Generates a stickiness policy with sticky
session lifetimes controlled by the lifetime of the browser (user-agent)
or a specified expiration period</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../elb_create_load_balancer/"> create_load_balancer </a></td>
<td style="text-align: left;">Creates a Classic Load Balancer</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../elb_create_load_balancer_listeners/"> create_load_balancer_listeners </a></td>
<td style="text-align: left;">Creates one or more listeners for the
specified load balancer</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../elb_create_load_balancer_policy/"> create_load_balancer_policy </a></td>
<td style="text-align: left;">Creates a policy with the specified
attributes for the specified load balancer</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../elb_delete_load_balancer/"> delete_load_balancer </a></td>
<td style="text-align: left;">Deletes the specified load balancer</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../elb_delete_load_balancer_listeners/"> delete_load_balancer_listeners </a></td>
<td style="text-align: left;">Deletes the specified listeners from the
specified load balancer</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../elb_delete_load_balancer_policy/"> delete_load_balancer_policy </a></td>
<td style="text-align: left;">Deletes the specified policy from the
specified load balancer</td>
</tr>
<tr class="odd">
<td
style="text-align: left;"><a href="../elb_deregister_instances_from_load_balancer/"> deregister_instances_from_load_balancer </a></td>
<td style="text-align: left;">Deregisters the specified instances from
the specified load balancer</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../elb_describe_account_limits/"> describe_account_limits </a></td>
<td style="text-align: left;">Describes the current Elastic Load
Balancing resource limits for your AWS account</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../elb_describe_instance_health/"> describe_instance_health </a></td>
<td style="text-align: left;">Describes the state of the specified
instances with respect to the specified load balancer</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../elb_describe_load_balancer_attributes/"> describe_load_balancer_attributes </a></td>
<td style="text-align: left;">Describes the attributes for the specified
load balancer</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../elb_describe_load_balancer_policies/"> describe_load_balancer_policies </a></td>
<td style="text-align: left;">Describes the specified policies</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../elb_describe_load_balancer_policy_types/"> describe_load_balancer_policy_types </a></td>
<td style="text-align: left;">Describes the specified load balancer
policy types or all load balancer policy types</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../elb_describe_load_balancers/"> describe_load_balancers </a></td>
<td style="text-align: left;">Describes the specified the load
balancers</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../elb_describe_tags/"> describe_tags </a></td>
<td style="text-align: left;">Describes the tags associated with the
specified load balancers</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../elb_detach_load_balancer_from_subnets/"> detach_load_balancer_from_subnets </a></td>
<td style="text-align: left;">Removes the specified subnets from the set
of configured subnets for the load balancer</td>
</tr>
<tr class="even">
<td
style="text-align: left;"><a href="../elb_disable_availability_zones_for_load_balancer/"> disable_availability_zones_for_load_balancer </a></td>
<td style="text-align: left;">Removes the specified Availability Zones
from the set of Availability Zones for the specified load balancer in
EC2-Classic or a default VPC</td>
</tr>
<tr class="odd">
<td
style="text-align: left;"><a href="../elb_enable_availability_zones_for_load_balancer/"> enable_availability_zones_for_load_balancer </a></td>
<td style="text-align: left;">Adds the specified Availability Zones to
the set of Availability Zones for the specified load balancer in
EC2-Classic or a default VPC</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../elb_modify_load_balancer_attributes/"> modify_load_balancer_attributes </a></td>
<td style="text-align: left;">Modifies the attributes of the specified
load balancer</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../elb_register_instances_with_load_balancer/"> register_instances_with_load_balancer </a></td>
<td style="text-align: left;">Adds the specified instances to the
specified load balancer</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../elb_remove_tags/"> remove_tags </a></td>
<td style="text-align: left;">Removes one or more tags from the
specified load balancer</td>
</tr>
<tr class="odd">
<td
style="text-align: left;"><a href="../elb_set_load_balancer_listener_ssl_certificate/"> set_load_balancer_listener_ssl_certificate </a></td>
<td style="text-align: left;">Sets the certificate that terminates the
specified listener's SSL connections</td>
</tr>
<tr class="even">
<td
style="text-align: left;"><a href="../elb_set_load_balancer_policies_for_backend_server/"> set_load_balancer_policies_for_backend_server </a></td>
<td style="text-align: left;">Replaces the set of policies associated
with the specified port on which the EC2 instance is listening with a
new set of policies</td>
</tr>
<tr class="odd">
<td
style="text-align: left;"><a href="../elb_set_load_balancer_policies_of_listener/"> set_load_balancer_policies_of_listener </a></td>
<td style="text-align: left;">Replaces the current set of policies for
the specified load balancer port with the specified set of policies</td>
</tr>
</tbody>
</table>

### Examples

    ## Not run: 
    svc <- elb()
    # This example adds two tags to the specified load balancer.
    svc$add_tags(
      LoadBalancerNames = list(
        "my-load-balancer"
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
