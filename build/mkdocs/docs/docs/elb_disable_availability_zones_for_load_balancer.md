<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>elb_disable_availability_zones_for_load_balancer</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Removes the specified Availability Zones from the set of Availability Zones for the specified load balancer in EC2-Classic or a default VPC

### Description

Removes the specified Availability Zones from the set of Availability
Zones for the specified load balancer in EC2-Classic or a default VPC.

For load balancers in a non-default VPC, use
`detach_load_balancer_from_subnets`.

There must be at least one Availability Zone registered with a load
balancer at all times. After an Availability Zone is removed, all
instances registered with the load balancer that are in the removed
Availability Zone go into the `OutOfService` state. Then, the load
balancer attempts to equally balance the traffic among its remaining
Availability Zones.

For more information, see [Add or Remove Availability
Zones](https://docs.aws.amazon.com/elasticloadbalancing/latest/classic/enable-disable-az.html)
in the *Classic Load Balancers Guide*.

### Usage

    elb_disable_availability_zones_for_load_balancer(LoadBalancerName,
      AvailabilityZones)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="elb_disable_availability_zones_for_load_balancer_:_LoadBalancerName">LoadBalancerName</code></td>
<td><p>[required] The name of the load balancer.</p></td>
</tr>
<tr class="even">
<td><code
id="elb_disable_availability_zones_for_load_balancer_:_AvailabilityZones">AvailabilityZones</code></td>
<td><p>[required] The Availability Zones.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      AvailabilityZones = list(
        "string"
      )
    )

### Request syntax

    svc$disable_availability_zones_for_load_balancer(
      LoadBalancerName = "string",
      AvailabilityZones = list(
        "string"
      )
    )

### Examples

    ## Not run: 
    # This example removes the specified Availability Zone from the set of
    # Availability Zones for the specified load balancer.
    svc$disable_availability_zones_for_load_balancer(
      AvailabilityZones = list(
        "us-west-2a"
      ),
      LoadBalancerName = "my-load-balancer"
    )

    ## End(Not run)
