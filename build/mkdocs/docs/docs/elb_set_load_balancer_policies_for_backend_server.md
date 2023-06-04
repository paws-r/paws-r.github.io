<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>elb_set_load_balancer_policies_for_backend_server</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Replaces the set of policies associated with the specified port on which the EC2 instance is listening with a new set of policies

### Description

Replaces the set of policies associated with the specified port on which
the EC2 instance is listening with a new set of policies. At this time,
only the back-end server authentication policy type can be applied to
the instance ports; this policy type is composed of multiple public key
policies.

Each time you use `set_load_balancer_policies_for_backend_server` to
enable the policies, use the `PolicyNames` parameter to list the
policies that you want to enable.

You can use `describe_load_balancers` or
`describe_load_balancer_policies` to verify that the policy is
associated with the EC2 instance.

For more information about enabling back-end instance authentication,
see [Configure Back-end Instance
Authentication](https://docs.aws.amazon.com/elasticloadbalancing/latest/classic/elb-create-https-ssl-load-balancer.html#configure_backendauth_clt)
in the *Classic Load Balancers Guide*. For more information about Proxy
Protocol, see [Configure Proxy Protocol
Support](https://docs.aws.amazon.com/elasticloadbalancing/latest/classic/enable-proxy-protocol.html)
in the *Classic Load Balancers Guide*.

### Usage

    elb_set_load_balancer_policies_for_backend_server(LoadBalancerName,
      InstancePort, PolicyNames)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="elb_set_load_balancer_policies_for_backend_server_:_LoadBalancerName">LoadBalancerName</code></td>
<td><p>[required] The name of the load balancer.</p></td>
</tr>
<tr class="even">
<td><code
id="elb_set_load_balancer_policies_for_backend_server_:_InstancePort">InstancePort</code></td>
<td><p>[required] The port number associated with the EC2
instance.</p></td>
</tr>
<tr class="odd">
<td><code
id="elb_set_load_balancer_policies_for_backend_server_:_PolicyNames">PolicyNames</code></td>
<td><p>[required] The names of the policies. If the list is empty, then
all current polices are removed from the EC2 instance.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$set_load_balancer_policies_for_backend_server(
      LoadBalancerName = "string",
      InstancePort = 123,
      PolicyNames = list(
        "string"
      )
    )

### Examples

    ## Not run: 
    # This example replaces the policies that are currently associated with
    # the specified port.
    svc$set_load_balancer_policies_for_backend_server(
      InstancePort = 80L,
      LoadBalancerName = "my-load-balancer",
      PolicyNames = list(
        "my-ProxyProtocol-policy"
      )
    )

    ## End(Not run)
