<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>elb_detach_load_balancer_from_subnets</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Removes the specified subnets from the set of configured subnets for the load balancer

### Description

Removes the specified subnets from the set of configured subnets for the
load balancer.

After a subnet is removed, all EC2 instances registered with the load
balancer in the removed subnet go into the `OutOfService` state. Then,
the load balancer balances the traffic among the remaining routable
subnets.

### Usage

    elb_detach_load_balancer_from_subnets(LoadBalancerName, Subnets)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="elb_detach_load_balancer_from_subnets_:_LoadBalancerName">LoadBalancerName</code></td>
<td><p>[required] The name of the load balancer.</p></td>
</tr>
<tr class="even">
<td><code
id="elb_detach_load_balancer_from_subnets_:_Subnets">Subnets</code></td>
<td><p>[required] The IDs of the subnets.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Subnets = list(
        "string"
      )
    )

### Request syntax

    svc$detach_load_balancer_from_subnets(
      LoadBalancerName = "string",
      Subnets = list(
        "string"
      )
    )

### Examples

    ## Not run: 
    # This example detaches the specified load balancer from the specified
    # subnet.
    svc$detach_load_balancer_from_subnets(
      LoadBalancerName = "my-load-balancer",
      Subnets = list(
        "subnet-0ecac448"
      )
    )

    ## End(Not run)
