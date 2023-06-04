<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>autoscaling_put_warm_pool</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates or updates a warm pool for the specified Auto Scaling group

### Description

Creates or updates a warm pool for the specified Auto Scaling group. A
warm pool is a pool of pre-initialized EC2 instances that sits alongside
the Auto Scaling group. Whenever your application needs to scale out,
the Auto Scaling group can draw on the warm pool to meet its new desired
capacity. For more information and example configurations, see [Warm
pools for Amazon EC2 Auto
Scaling](https://docs.aws.amazon.com/autoscaling/ec2/userguide/ec2-auto-scaling-warm-pools.html)
in the *Amazon EC2 Auto Scaling User Guide*.

This operation must be called from the Region in which the Auto Scaling
group was created. This operation cannot be called on an Auto Scaling
group that has a mixed instances policy or a launch template or launch
configuration that requests Spot Instances.

You can view the instances in the warm pool using the
`describe_warm_pool` API call. If you are no longer using a warm pool,
you can delete it by calling the `delete_warm_pool` API.

### Usage

    autoscaling_put_warm_pool(AutoScalingGroupName,
      MaxGroupPreparedCapacity, MinSize, PoolState, InstanceReusePolicy)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="autoscaling_put_warm_pool_:_AutoScalingGroupName">AutoScalingGroupName</code></td>
<td><p>[required] The name of the Auto Scaling group.</p></td>
</tr>
<tr class="even">
<td><code
id="autoscaling_put_warm_pool_:_MaxGroupPreparedCapacity">MaxGroupPreparedCapacity</code></td>
<td><p>Specifies the maximum number of instances that are allowed to be
in the warm pool or in any state except <code>Terminated</code> for the
Auto Scaling group. This is an optional property. Specify it only if you
do not want the warm pool size to be determined by the difference
between the group's maximum capacity and its desired capacity.</p>
<p>If a value for <code>MaxGroupPreparedCapacity</code> is not
specified, Amazon EC2 Auto Scaling launches and maintains the difference
between the group's maximum capacity and its desired capacity. If you
specify a value for <code>MaxGroupPreparedCapacity</code>, Amazon EC2
Auto Scaling uses the difference between the
<code>MaxGroupPreparedCapacity</code> and the desired capacity
instead.</p>
<p>The size of the warm pool is dynamic. Only when
<code>MaxGroupPreparedCapacity</code> and <code>MinSize</code> are set
to the same value does the warm pool have an absolute size.</p>
<p>If the desired capacity of the Auto Scaling group is higher than the
<code>MaxGroupPreparedCapacity</code>, the capacity of the warm pool is
0, unless you specify a value for <code>MinSize</code>. To remove a
value that you previously set, include the property but specify -1 for
the value.</p></td>
</tr>
<tr class="odd">
<td><code id="autoscaling_put_warm_pool_:_MinSize">MinSize</code></td>
<td><p>Specifies the minimum number of instances to maintain in the warm
pool. This helps you to ensure that there is always a certain number of
warmed instances available to handle traffic spikes. Defaults to 0 if
not specified.</p></td>
</tr>
<tr class="even">
<td><code
id="autoscaling_put_warm_pool_:_PoolState">PoolState</code></td>
<td><p>Sets the instance state to transition to after the lifecycle
actions are complete. Default is <code>Stopped</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="autoscaling_put_warm_pool_:_InstanceReusePolicy">InstanceReusePolicy</code></td>
<td><p>Indicates whether instances in the Auto Scaling group can be
returned to the warm pool on scale in. The default is to terminate
instances in the Auto Scaling group when the group scales in.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$put_warm_pool(
      AutoScalingGroupName = "string",
      MaxGroupPreparedCapacity = 123,
      MinSize = 123,
      PoolState = "Stopped"|"Running"|"Hibernated",
      InstanceReusePolicy = list(
        ReuseOnScaleIn = TRUE|FALSE
      )
    )

### Examples

    ## Not run: 
    # This example creates a warm pool for the specified Auto Scaling group.
    svc$put_warm_pool(
      AutoScalingGroupName = "my-auto-scaling-group",
      InstanceReusePolicy = list(
        ReuseOnScaleIn = TRUE
      ),
      MinSize = 30L,
      PoolState = "Hibernated"
    )

    ## End(Not run)
