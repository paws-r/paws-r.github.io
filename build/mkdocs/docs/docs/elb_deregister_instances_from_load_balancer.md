<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>elb_deregister_instances_from_load_balancer</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deregisters the specified instances from the specified load balancer

### Description

Deregisters the specified instances from the specified load balancer.
After the instance is deregistered, it no longer receives traffic from
the load balancer.

You can use `describe_load_balancers` to verify that the instance is
deregistered from the load balancer.

For more information, see [Register or De-Register EC2
Instances](https://docs.aws.amazon.com/elasticloadbalancing/latest/classic/elb-deregister-register-instances.html)
in the *Classic Load Balancers Guide*.

### Usage

    elb_deregister_instances_from_load_balancer(LoadBalancerName, Instances)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="elb_deregister_instances_from_load_balancer_:_LoadBalancerName">LoadBalancerName</code></td>
<td><p>[required] The name of the load balancer.</p></td>
</tr>
<tr class="even">
<td><code
id="elb_deregister_instances_from_load_balancer_:_Instances">Instances</code></td>
<td><p>[required] The IDs of the instances.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Instances = list(
        list(
          InstanceId = "string"
        )
      )
    )

### Request syntax

    svc$deregister_instances_from_load_balancer(
      LoadBalancerName = "string",
      Instances = list(
        list(
          InstanceId = "string"
        )
      )
    )

### Examples

    ## Not run: 
    # This example deregisters the specified instance from the specified load
    # balancer.
    svc$deregister_instances_from_load_balancer(
      Instances = list(
        list(
          InstanceId = "i-d6f6fae3"
        )
      ),
      LoadBalancerName = "my-load-balancer"
    )

    ## End(Not run)
