<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>autoscaling_delete_lifecycle_hook</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes the specified lifecycle hook

### Description

Deletes the specified lifecycle hook.

If there are any outstanding lifecycle actions, they are completed first
(`ABANDON` for launching instances, `CONTINUE` for terminating
instances).

### Usage

    autoscaling_delete_lifecycle_hook(LifecycleHookName,
      AutoScalingGroupName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="autoscaling_delete_lifecycle_hook_:_LifecycleHookName">LifecycleHookName</code></td>
<td><p>[required] The name of the lifecycle hook.</p></td>
</tr>
<tr class="even">
<td><code
id="autoscaling_delete_lifecycle_hook_:_AutoScalingGroupName">AutoScalingGroupName</code></td>
<td><p>[required] The name of the Auto Scaling group.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_lifecycle_hook(
      LifecycleHookName = "string",
      AutoScalingGroupName = "string"
    )

### Examples

    ## Not run: 
    # This example deletes the specified lifecycle hook.
    svc$delete_lifecycle_hook(
      AutoScalingGroupName = "my-auto-scaling-group",
      LifecycleHookName = "my-lifecycle-hook"
    )

    ## End(Not run)
