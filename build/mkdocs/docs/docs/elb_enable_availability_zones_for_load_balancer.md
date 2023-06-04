<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>elb_enable_availability_zones_for_load_balancer</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Adds the specified Availability Zones to the set of Availability Zones for the specified load balancer in EC2-Classic or a default VPC

### Description

Adds the specified Availability Zones to the set of Availability Zones
for the specified load balancer in EC2-Classic or a default VPC.

For load balancers in a non-default VPC, use
`attach_load_balancer_to_subnets`.

The load balancer evenly distributes requests across all its registered
Availability Zones that contain instances. For more information, see
[Add or Remove Availability
Zones](https://docs.aws.amazon.com/elasticloadbalancing/latest/classic/enable-disable-az.html)
in the *Classic Load Balancers Guide*.

### Usage

    elb_enable_availability_zones_for_load_balancer(LoadBalancerName,
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
id="elb_enable_availability_zones_for_load_balancer_:_LoadBalancerName">LoadBalancerName</code></td>
<td><p>[required] The name of the load balancer.</p></td>
</tr>
<tr class="even">
<td><code
id="elb_enable_availability_zones_for_load_balancer_:_AvailabilityZones">AvailabilityZones</code></td>
<td><p>[required] The Availability Zones. These must be in the same
region as the load balancer.</p></td>
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

    svc$enable_availability_zones_for_load_balancer(
      LoadBalancerName = "string",
      AvailabilityZones = list(
        "string"
      )
    )

### Examples

    ## Not run: 
    # This example adds the specified Availability Zone to the specified load
    # balancer.
    svc$enable_availability_zones_for_load_balancer(
      AvailabilityZones = list(
        "us-west-2b"
      ),
      LoadBalancerName = "my-load-balancer"
    )

    ## End(Not run)
