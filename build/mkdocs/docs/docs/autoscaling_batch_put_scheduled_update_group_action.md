<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>autoscaling_batch_put_scheduled_update_group_action</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates or updates one or more scheduled scaling actions for an Auto Scaling group

### Description

Creates or updates one or more scheduled scaling actions for an Auto
Scaling group.

### Usage

    autoscaling_batch_put_scheduled_update_group_action(
      AutoScalingGroupName, ScheduledUpdateGroupActions)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="autoscaling_batch_put_scheduled_update_group_action_:_AutoScalingGroupName">AutoScalingGroupName</code></td>
<td><p>[required] The name of the Auto Scaling group.</p></td>
</tr>
<tr class="even">
<td><code
id="autoscaling_batch_put_scheduled_update_group_action_:_ScheduledUpdateGroupActions">ScheduledUpdateGroupActions</code></td>
<td><p>[required] One or more scheduled actions. The maximum number
allowed is 50.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      FailedScheduledUpdateGroupActions = list(
        list(
          ScheduledActionName = "string",
          ErrorCode = "string",
          ErrorMessage = "string"
        )
      )
    )

### Request syntax

    svc$batch_put_scheduled_update_group_action(
      AutoScalingGroupName = "string",
      ScheduledUpdateGroupActions = list(
        list(
          ScheduledActionName = "string",
          StartTime = as.POSIXct(
            "2015-01-01"
          ),
          EndTime = as.POSIXct(
            "2015-01-01"
          ),
          Recurrence = "string",
          MinSize = 123,
          MaxSize = 123,
          DesiredCapacity = 123,
          TimeZone = "string"
        )
      )
    )
