<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>elbv2_describe_load_balancer_attributes</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes the attributes for the specified Application Load Balancer, Network Load Balancer, or Gateway Load Balancer

### Description

Describes the attributes for the specified Application Load Balancer,
Network Load Balancer, or Gateway Load Balancer.

For more information, see the following:

-   [Load balancer
    attributes](https://docs.aws.amazon.com/elasticloadbalancing/latest/application/application-load-balancers.html#load-balancer-attributes)
    in the *Application Load Balancers Guide*

-   [Load balancer
    attributes](https://docs.aws.amazon.com/elasticloadbalancing/latest/network/network-load-balancers.html#load-balancer-attributes)
    in the *Network Load Balancers Guide*

-   [Load balancer
    attributes](https://docs.aws.amazon.com/elasticloadbalancing/latest/gateway/gateway-load-balancers.html#load-balancer-attributes)
    in the *Gateway Load Balancers Guide*

### Usage

    elbv2_describe_load_balancer_attributes(LoadBalancerArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="elbv2_describe_load_balancer_attributes_:_LoadBalancerArn">LoadBalancerArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the load
balancer.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Attributes = list(
        list(
          Key = "string",
          Value = "string"
        )
      )
    )

### Request syntax

    svc$describe_load_balancer_attributes(
      LoadBalancerArn = "string"
    )

### Examples

    ## Not run: 
    # This example describes the attributes of the specified load balancer.
    svc$describe_load_balancer_attributes(
      LoadBalancerArn = "arn:aws:elasticloadbalancing:us-west-2:123456789012:lo..."
    )

    ## End(Not run)
