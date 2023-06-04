<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>elb_create_load_balancer_listeners</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates one or more listeners for the specified load balancer

### Description

Creates one or more listeners for the specified load balancer. If a
listener with the specified port does not already exist, it is created;
otherwise, the properties of the new listener must match the properties
of the existing listener.

For more information, see [Listeners for Your Classic Load
Balancer](https://docs.aws.amazon.com/elasticloadbalancing/latest/classic/elb-listener-config.html)
in the *Classic Load Balancers Guide*.

### Usage

    elb_create_load_balancer_listeners(LoadBalancerName, Listeners)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="elb_create_load_balancer_listeners_:_LoadBalancerName">LoadBalancerName</code></td>
<td><p>[required] The name of the load balancer.</p></td>
</tr>
<tr class="even">
<td><code
id="elb_create_load_balancer_listeners_:_Listeners">Listeners</code></td>
<td><p>[required] The listeners.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$create_load_balancer_listeners(
      LoadBalancerName = "string",
      Listeners = list(
        list(
          Protocol = "string",
          LoadBalancerPort = 123,
          InstanceProtocol = "string",
          InstancePort = 123,
          SSLCertificateId = "string"
        )
      )
    )

### Examples

    ## Not run: 
    # This example creates a listener for your load balancer at port 80 using
    # the HTTP protocol.
    svc$create_load_balancer_listeners(
      Listeners = list(
        list(
          InstancePort = 80L,
          InstanceProtocol = "HTTP",
          LoadBalancerPort = 80L,
          Protocol = "HTTP"
        )
      ),
      LoadBalancerName = "my-load-balancer"
    )

    # This example creates a listener for your load balancer at port 443 using
    # the HTTPS protocol.
    svc$create_load_balancer_listeners(
      Listeners = list(
        list(
          InstancePort = 80L,
          InstanceProtocol = "HTTP",
          LoadBalancerPort = 443L,
          Protocol = "HTTPS",
          SSLCertificateId = "arn:aws:iam::123456789012:server-certificate/my-server-cert"
        )
      ),
      LoadBalancerName = "my-load-balancer"
    )

    ## End(Not run)
