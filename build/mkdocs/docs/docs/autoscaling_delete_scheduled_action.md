<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>autoscaling_delete_scheduled_action</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes the specified scheduled action

### Description

Deletes the specified scheduled action.

### Usage

    autoscaling_delete_scheduled_action(AutoScalingGroupName,
      ScheduledActionName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="autoscaling_delete_scheduled_action_:_AutoScalingGroupName">AutoScalingGroupName</code></td>
<td><p>[required] The name of the Auto Scaling group.</p></td>
</tr>
<tr class="even">
<td><code
id="autoscaling_delete_scheduled_action_:_ScheduledActionName">ScheduledActionName</code></td>
<td><p>[required] The name of the action to delete.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_scheduled_action(
      AutoScalingGroupName = "string",
      ScheduledActionName = "string"
    )

### Examples

    ## Not run: 
    # This example deletes the specified scheduled action from the specified
    # Auto Scaling group.
    svc$delete_scheduled_action(
      AutoScalingGroupName = "my-auto-scaling-group",
      ScheduledActionName = "my-scheduled-action"
    )

    ## End(Not run)
