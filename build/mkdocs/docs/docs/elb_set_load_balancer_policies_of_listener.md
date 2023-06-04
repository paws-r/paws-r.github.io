<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>elb_set_load_balancer_policies_of_listener</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Replaces the current set of policies for the specified load balancer port with the specified set of policies

### Description

Replaces the current set of policies for the specified load balancer
port with the specified set of policies.

To enable back-end server authentication, use
`set_load_balancer_policies_for_backend_server`.

For more information about setting policies, see [Update the SSL
Negotiation
Configuration](https://docs.aws.amazon.com/elasticloadbalancing/latest/classic/ssl-config-update.html),
[Duration-Based Session
Stickiness](https://docs.aws.amazon.com/elasticloadbalancing/latest/classic/elb-sticky-sessions.html#enable-sticky-sessions-duration),
and [Application-Controlled Session
Stickiness](https://docs.aws.amazon.com/elasticloadbalancing/latest/classic/elb-sticky-sessions.html#enable-sticky-sessions-application)
in the *Classic Load Balancers Guide*.

### Usage

    elb_set_load_balancer_policies_of_listener(LoadBalancerName,
      LoadBalancerPort, PolicyNames)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="elb_set_load_balancer_policies_of_listener_:_LoadBalancerName">LoadBalancerName</code></td>
<td><p>[required] The name of the load balancer.</p></td>
</tr>
<tr class="even">
<td><code
id="elb_set_load_balancer_policies_of_listener_:_LoadBalancerPort">LoadBalancerPort</code></td>
<td><p>[required] The external port of the load balancer.</p></td>
</tr>
<tr class="odd">
<td><code
id="elb_set_load_balancer_policies_of_listener_:_PolicyNames">PolicyNames</code></td>
<td><p>[required] The names of the policies. This list must include all
policies to be enabled. If you omit a policy that is currently enabled,
it is disabled. If the list is empty, all current policies are
disabled.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$set_load_balancer_policies_of_listener(
      LoadBalancerName = "string",
      LoadBalancerPort = 123,
      PolicyNames = list(
        "string"
      )
    )

### Examples

    ## Not run: 
    # This example replaces the policies that are currently associated with
    # the specified listener.
    svc$set_load_balancer_policies_of_listener(
      LoadBalancerName = "my-load-balancer",
      LoadBalancerPort = 80L,
      PolicyNames = list(
        "my-SSLNegotiation-policy"
      )
    )

    ## End(Not run)
