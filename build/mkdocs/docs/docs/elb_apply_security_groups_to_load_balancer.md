<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>elb_apply_security_groups_to_load_balancer</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Associates one or more security groups with your load balancer in a virtual private cloud (VPC)

### Description

Associates one or more security groups with your load balancer in a
virtual private cloud (VPC). The specified security groups override the
previously associated security groups.

For more information, see [Security Groups for Load Balancers in a
VPC](https://docs.aws.amazon.com/elasticloadbalancing/latest/classic/elb-security-groups.html#elb-vpc-security-groups)
in the *Classic Load Balancers Guide*.

### Usage

    elb_apply_security_groups_to_load_balancer(LoadBalancerName,
      SecurityGroups)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="elb_apply_security_groups_to_load_balancer_:_LoadBalancerName">LoadBalancerName</code></td>
<td><p>[required] The name of the load balancer.</p></td>
</tr>
<tr class="even">
<td><code
id="elb_apply_security_groups_to_load_balancer_:_SecurityGroups">SecurityGroups</code></td>
<td><p>[required] The IDs of the security groups to associate with the
load balancer. Note that you cannot specify the name of the security
group.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      SecurityGroups = list(
        "string"
      )
    )

### Request syntax

    svc$apply_security_groups_to_load_balancer(
      LoadBalancerName = "string",
      SecurityGroups = list(
        "string"
      )
    )

### Examples

    ## Not run: 
    # This example associates a security group with the specified load
    # balancer in a VPC.
    svc$apply_security_groups_to_load_balancer(
      LoadBalancerName = "my-load-balancer",
      SecurityGroups = list(
        "sg-fc448899"
      )
    )

    ## End(Not run)
