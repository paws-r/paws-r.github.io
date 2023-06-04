<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>route53recoverycluster</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Route53 Recovery Cluster

### Description

Welcome to the Routing Control (Recovery Cluster) API Reference Guide
for Amazon Route 53 Application Recovery Controller.

With Route 53 ARC, you can use routing control with extreme reliability
to recover applications by rerouting traffic across Availability Zones
or Amazon Web Services Regions. Routing controls are simple on/off
switches hosted on a highly available cluster in Route 53 ARC. A cluster
provides a set of five redundant Regional endpoints against which you
can run API calls to get or update the state of routing controls. To
implement failover, you set one routing control On and another one Off,
to reroute traffic from one Availability Zone or Amazon Web Services
Region to another.

*Be aware that you must specify a Regional endpoint for a cluster when
you work with API cluster operations to get or update routing control
states in Route 53 ARC.* In addition, you must specify the US West
(Oregon) Region for Route 53 ARC API calls. For example, use the
parameter `⁠--region us-west-2⁠` with AWS CLI commands. For more
information, see [Get and update routing control states using the
API](https://docs.aws.amazon.com/r53recovery/latest/dg/routing-control.update.api.html)
in the Amazon Route 53 Application Recovery Controller Developer Guide.

This API guide includes information about the API operations for how to
get and update routing control states in Route 53 ARC. To work with
routing control in Route 53 ARC, you must first create the required
components (clusters, control panels, and routing controls) using the
recovery cluster configuration API.

For more information about working with routing control in Route 53 ARC,
see the following:

-   Create clusters, control panels, and routing controls by using API
    operations. For more information, see the [Recovery Control
    Configuration API Reference Guide for Amazon Route 53 Application
    Recovery
    Controller](https://docs.aws.amazon.com/recovery-cluster/latest/api/).

-   Learn about the components in recovery control, including clusters,
    routing controls, and control panels, and how to work with Route 53
    ARC in the Amazon Web Services console. For more information, see
    [Recovery control
    components](https://docs.aws.amazon.com/r53recovery/latest/dg/introduction-components.html#introduction-components-routing)
    in the Amazon Route 53 Application Recovery Controller Developer
    Guide.

-   Route 53 ARC also provides readiness checks that continually audit
    resources to help make sure that your applications are scaled and
    ready to handle failover traffic. For more information about the
    related API operations, see the [Recovery Readiness API Reference
    Guide for Amazon Route 53 Application Recovery
    Controller](https://docs.aws.amazon.com/recovery-readiness/latest/api/).

-   For more information about creating resilient applications and
    preparing for recovery readiness with Route 53 ARC, see the [Amazon
    Route 53 Application Recovery Controller Developer
    Guide](https://docs.aws.amazon.com/r53recovery/latest/dg/).

### Usage

    route53recoverycluster(config = list())

### Arguments

<table>
<colgroup>
<col style="width: 15%" />
<col style="width: 85%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="route53recoverycluster_:_config">config</code></td>
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

    svc <- route53recoverycluster(
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
<td style="text-align: left;"><a href="../route53recoverycluster_get_routing_control_state/"> get_routing_control_state </a></td>
<td style="text-align: left;">Get the state for a routing control</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../route53recoverycluster_list_routing_controls/"> list_routing_controls </a></td>
<td style="text-align: left;">List routing control names and Amazon
Resource Names (ARNs), as well as the routing control state for each
routing control, along with the control panel name and control panel ARN
for the routing controls</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../route53recoverycluster_update_routing_control_state/"> update_routing_control_state </a></td>
<td style="text-align: left;">Set the state of the routing control to
reroute traffic</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../route53recoverycluster_update_routing_control_states/"> update_routing_control_states </a></td>
<td style="text-align: left;">Set multiple routing control states</td>
</tr>
</tbody>
</table>

### Examples

    ## Not run: 
    svc <- route53recoverycluster()
    svc$get_routing_control_state(
      Foo = 123
    )

    ## End(Not run)
