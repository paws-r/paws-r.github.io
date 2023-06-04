<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>autoscaling_delete_auto_scaling_group</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes the specified Auto Scaling group

### Description

Deletes the specified Auto Scaling group.

If the group has instances or scaling activities in progress, you must
specify the option to force the deletion in order for it to succeed. The
force delete operation will also terminate the EC2 instances. If the
group has a warm pool, the force delete option also deletes the warm
pool.

To remove instances from the Auto Scaling group before deleting it, call
the `detach_instances` API with the list of instances and the option to
decrement the desired capacity. This ensures that Amazon EC2 Auto
Scaling does not launch replacement instances.

To terminate all instances before deleting the Auto Scaling group, call
the `update_auto_scaling_group` API and set the minimum size and desired
capacity of the Auto Scaling group to zero.

If the group has scaling policies, deleting the group deletes the
policies, the underlying alarm actions, and any alarm that no longer has
an associated action.

For more information, see [Delete your Auto Scaling
infrastructure](https://docs.aws.amazon.com/autoscaling/ec2/userguide/as-process-shutdown.html)
in the *Amazon EC2 Auto Scaling User Guide*.

### Usage

    autoscaling_delete_auto_scaling_group(AutoScalingGroupName, ForceDelete)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="autoscaling_delete_auto_scaling_group_:_AutoScalingGroupName">AutoScalingGroupName</code></td>
<td><p>[required] The name of the Auto Scaling group.</p></td>
</tr>
<tr class="even">
<td><code
id="autoscaling_delete_auto_scaling_group_:_ForceDelete">ForceDelete</code></td>
<td><p>Specifies that the group is to be deleted along with all
instances associated with the group, without waiting for all instances
to be terminated. This action also deletes any outstanding lifecycle
actions associated with the group.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_auto_scaling_group(
      AutoScalingGroupName = "string",
      ForceDelete = TRUE|FALSE
    )

### Examples

    ## Not run: 
    # This example deletes the specified Auto Scaling group.
    svc$delete_auto_scaling_group(
      AutoScalingGroupName = "my-auto-scaling-group"
    )

    # This example deletes the specified Auto Scaling group and all its
    # instances.
    svc$delete_auto_scaling_group(
      AutoScalingGroupName = "my-auto-scaling-group",
      ForceDelete = TRUE
    )

    ## End(Not run)
