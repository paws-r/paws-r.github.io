<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>elbv2_delete_load_balancer</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes the specified Application Load Balancer, Network Load Balancer, or Gateway Load Balancer

### Description

Deletes the specified Application Load Balancer, Network Load Balancer,
or Gateway Load Balancer. Deleting a load balancer also deletes its
listeners.

You can't delete a load balancer if deletion protection is enabled. If
the load balancer does not exist or has already been deleted, the call
succeeds.

Deleting a load balancer does not affect its registered targets. For
example, your EC2 instances continue to run and are still registered to
their target groups. If you no longer need these EC2 instances, you can
stop or terminate them.

### Usage

    elbv2_delete_load_balancer(LoadBalancerArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="elbv2_delete_load_balancer_:_LoadBalancerArn">LoadBalancerArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the load
balancer.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_load_balancer(
      LoadBalancerArn = "string"
    )

### Examples

    ## Not run: 
    # This example deletes the specified load balancer.
    svc$delete_load_balancer(
      LoadBalancerArn = "arn:aws:elasticloadbalancing:us-west-2:123456789012:lo..."
    )

    ## End(Not run)
