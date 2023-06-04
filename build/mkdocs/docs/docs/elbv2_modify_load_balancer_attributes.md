<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>elbv2_modify_load_balancer_attributes</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Modifies the specified attributes of the specified Application Load Balancer, Network Load Balancer, or Gateway Load Balancer

### Description

Modifies the specified attributes of the specified Application Load
Balancer, Network Load Balancer, or Gateway Load Balancer.

If any of the specified attributes can't be modified as requested, the
call fails. Any existing attributes that you do not modify retain their
current values.

### Usage

    elbv2_modify_load_balancer_attributes(LoadBalancerArn, Attributes)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="elbv2_modify_load_balancer_attributes_:_LoadBalancerArn">LoadBalancerArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the load
balancer.</p></td>
</tr>
<tr class="even">
<td><code
id="elbv2_modify_load_balancer_attributes_:_Attributes">Attributes</code></td>
<td><p>[required] The load balancer attributes.</p></td>
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

    svc$modify_load_balancer_attributes(
      LoadBalancerArn = "string",
      Attributes = list(
        list(
          Key = "string",
          Value = "string"
        )
      )
    )

### Examples

    ## Not run: 
    # This example enables deletion protection for the specified load
    # balancer.
    svc$modify_load_balancer_attributes(
      Attributes = list(
        list(
          Key = "deletion_protection.enabled",
          Value = "true"
        )
      ),
      LoadBalancerArn = "arn:aws:elasticloadbalancing:us-west-2:123456789012:lo..."
    )

    # This example changes the idle timeout value for the specified load
    # balancer.
    svc$modify_load_balancer_attributes(
      Attributes = list(
        list(
          Key = "idle_timeout.timeout_seconds",
          Value = "30"
        )
      ),
      LoadBalancerArn = "arn:aws:elasticloadbalancing:us-west-2:123456789012:lo..."
    )

    # This example enables access logs for the specified load balancer. Note
    # that the S3 bucket must exist in the same region as the load balancer
    # and must have a policy attached that grants access to the Elastic Load
    # Balancing service.
    svc$modify_load_balancer_attributes(
      Attributes = list(
        list(
          Key = "access_logs.s3.enabled",
          Value = "true"
        ),
        list(
          Key = "access_logs.s3.bucket",
          Value = "my-loadbalancer-logs"
        ),
        list(
          Key = "access_logs.s3.prefix",
          Value = "myapp"
        )
      ),
      LoadBalancerArn = "arn:aws:elasticloadbalancing:us-west-2:123456789012:lo..."
    )

    ## End(Not run)
