<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>elb_register_instances_with_load_balancer</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Adds the specified instances to the specified load balancer

### Description

Adds the specified instances to the specified load balancer.

The instance must be a running instance in the same network as the load
balancer (EC2-Classic or the same VPC). If you have EC2-Classic
instances and a load balancer in a VPC with ClassicLink enabled, you can
link the EC2-Classic instances to that VPC and then register the linked
EC2-Classic instances with the load balancer in the VPC.

Note that `RegisterInstanceWithLoadBalancer` completes when the request
has been registered. Instance registration takes a little time to
complete. To check the state of the registered instances, use
`describe_load_balancers` or `describe_instance_health`.

After the instance is registered, it starts receiving traffic and
requests from the load balancer. Any instance that is not in one of the
Availability Zones registered for the load balancer is moved to the
`OutOfService` state. If an Availability Zone is added to the load
balancer later, any instances registered with the load balancer move to
the `InService` state.

To deregister instances from a load balancer, use
`deregister_instances_from_load_balancer`.

For more information, see [Register or De-Register EC2
Instances](https://docs.aws.amazon.com/elasticloadbalancing/latest/classic/elb-deregister-register-instances.html)
in the *Classic Load Balancers Guide*.

### Usage

    elb_register_instances_with_load_balancer(LoadBalancerName, Instances)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="elb_register_instances_with_load_balancer_:_LoadBalancerName">LoadBalancerName</code></td>
<td><p>[required] The name of the load balancer.</p></td>
</tr>
<tr class="even">
<td><code
id="elb_register_instances_with_load_balancer_:_Instances">Instances</code></td>
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

    svc$register_instances_with_load_balancer(
      LoadBalancerName = "string",
      Instances = list(
        list(
          InstanceId = "string"
        )
      )
    )

### Examples

    ## Not run: 
    # This example registers the specified instance with the specified load
    # balancer.
    svc$register_instances_with_load_balancer(
      Instances = list(
        list(
          InstanceId = "i-d6f6fae3"
        )
      ),
      LoadBalancerName = "my-load-balancer"
    )

    ## End(Not run)
