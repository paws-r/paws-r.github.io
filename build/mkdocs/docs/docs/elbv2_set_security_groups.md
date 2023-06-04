<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>elbv2_set_security_groups</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Associates the specified security groups with the specified Application Load Balancer

### Description

Associates the specified security groups with the specified Application
Load Balancer. The specified security groups override the previously
associated security groups.

You can't specify a security group for a Network Load Balancer or
Gateway Load Balancer.

### Usage

    elbv2_set_security_groups(LoadBalancerArn, SecurityGroups)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="elbv2_set_security_groups_:_LoadBalancerArn">LoadBalancerArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the load
balancer.</p></td>
</tr>
<tr class="even">
<td><code
id="elbv2_set_security_groups_:_SecurityGroups">SecurityGroups</code></td>
<td><p>[required] The IDs of the security groups.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      SecurityGroupIds = list(
        "string"
      )
    )

### Request syntax

    svc$set_security_groups(
      LoadBalancerArn = "string",
      SecurityGroups = list(
        "string"
      )
    )

### Examples

    ## Not run: 
    # This example associates the specified security group with the specified
    # load balancer.
    svc$set_security_groups(
      LoadBalancerArn = "arn:aws:elasticloadbalancing:us-west-2:123456789012:lo...",
      SecurityGroups = list(
        "sg-5943793c"
      )
    )

    ## End(Not run)
