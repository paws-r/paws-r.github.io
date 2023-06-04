<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>autoscaling_delete_warm_pool</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes the warm pool for the specified Auto Scaling group

### Description

Deletes the warm pool for the specified Auto Scaling group.

For more information, see [Warm pools for Amazon EC2 Auto
Scaling](https://docs.aws.amazon.com/autoscaling/ec2/userguide/ec2-auto-scaling-warm-pools.html)
in the *Amazon EC2 Auto Scaling User Guide*.

### Usage

    autoscaling_delete_warm_pool(AutoScalingGroupName, ForceDelete)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="autoscaling_delete_warm_pool_:_AutoScalingGroupName">AutoScalingGroupName</code></td>
<td><p>[required] The name of the Auto Scaling group.</p></td>
</tr>
<tr class="even">
<td><code
id="autoscaling_delete_warm_pool_:_ForceDelete">ForceDelete</code></td>
<td><p>Specifies that the warm pool is to be deleted along with all of
its associated instances, without waiting for all instances to be
terminated. This parameter also deletes any outstanding lifecycle
actions associated with the warm pool instances.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_warm_pool(
      AutoScalingGroupName = "string",
      ForceDelete = TRUE|FALSE
    )
