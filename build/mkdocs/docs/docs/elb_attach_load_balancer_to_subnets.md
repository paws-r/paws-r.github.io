<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>elb_attach_load_balancer_to_subnets</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Adds one or more subnets to the set of configured subnets for the specified load balancer

### Description

Adds one or more subnets to the set of configured subnets for the
specified load balancer.

The load balancer evenly distributes requests across all registered
subnets. For more information, see [Add or Remove Subnets for Your Load
Balancer in a
VPC](https://docs.aws.amazon.com/elasticloadbalancing/latest/classic/elb-manage-subnets.html)
in the *Classic Load Balancers Guide*.

### Usage

    elb_attach_load_balancer_to_subnets(LoadBalancerName, Subnets)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="elb_attach_load_balancer_to_subnets_:_LoadBalancerName">LoadBalancerName</code></td>
<td><p>[required] The name of the load balancer.</p></td>
</tr>
<tr class="even">
<td><code
id="elb_attach_load_balancer_to_subnets_:_Subnets">Subnets</code></td>
<td><p>[required] The IDs of the subnets to add. You can add only one
subnet per Availability Zone.</p></td>
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

    svc$attach_load_balancer_to_subnets(
      LoadBalancerName = "string",
      Subnets = list(
        "string"
      )
    )

### Examples

    ## Not run: 
    # This example adds the specified subnet to the set of configured subnets
    # for the specified load balancer.
    svc$attach_load_balancer_to_subnets(
      LoadBalancerName = "my-load-balancer",
      Subnets = list(
        "subnet-0ecac448"
      )
    )

    ## End(Not run)
