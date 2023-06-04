<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>autoscaling_batch_delete_scheduled_action</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes one or more scheduled actions for the specified Auto Scaling group

### Description

Deletes one or more scheduled actions for the specified Auto Scaling
group.

### Usage

    autoscaling_batch_delete_scheduled_action(AutoScalingGroupName,
      ScheduledActionNames)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="autoscaling_batch_delete_scheduled_action_:_AutoScalingGroupName">AutoScalingGroupName</code></td>
<td><p>[required] The name of the Auto Scaling group.</p></td>
</tr>
<tr class="even">
<td><code
id="autoscaling_batch_delete_scheduled_action_:_ScheduledActionNames">ScheduledActionNames</code></td>
<td><p>[required] The names of the scheduled actions to delete. The
maximum number allowed is 50.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      FailedScheduledActions = list(
        list(
          ScheduledActionName = "string",
          ErrorCode = "string",
          ErrorMessage = "string"
        )
      )
    )

### Request syntax

    svc$batch_delete_scheduled_action(
      AutoScalingGroupName = "string",
      ScheduledActionNames = list(
        "string"
      )
    )
