<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>autoscaling_describe_scheduled_actions</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets information about the scheduled actions that haven't run or that have not reached their end time

### Description

Gets information about the scheduled actions that haven't run or that
have not reached their end time.

To describe the scaling activities for scheduled actions that have
already run, call the `describe_scaling_activities` API.

### Usage

    autoscaling_describe_scheduled_actions(AutoScalingGroupName,
      ScheduledActionNames, StartTime, EndTime, NextToken, MaxRecords)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="autoscaling_describe_scheduled_actions_:_AutoScalingGroupName">AutoScalingGroupName</code></td>
<td><p>The name of the Auto Scaling group.</p></td>
</tr>
<tr class="even">
<td><code
id="autoscaling_describe_scheduled_actions_:_ScheduledActionNames">ScheduledActionNames</code></td>
<td><p>The names of one or more scheduled actions. If you omit this
property, all scheduled actions are described. If you specify an unknown
scheduled action, it is ignored with no error.</p>
<p>Array Members: Maximum number of 50 actions.</p></td>
</tr>
<tr class="odd">
<td><code
id="autoscaling_describe_scheduled_actions_:_StartTime">StartTime</code></td>
<td><p>The earliest scheduled start time to return. If scheduled action
names are provided, this property is ignored.</p></td>
</tr>
<tr class="even">
<td><code
id="autoscaling_describe_scheduled_actions_:_EndTime">EndTime</code></td>
<td><p>The latest scheduled start time to return. If scheduled action
names are provided, this property is ignored.</p></td>
</tr>
<tr class="odd">
<td><code
id="autoscaling_describe_scheduled_actions_:_NextToken">NextToken</code></td>
<td><p>The token for the next set of items to return. (You received this
token from a previous call.)</p></td>
</tr>
<tr class="even">
<td><code
id="autoscaling_describe_scheduled_actions_:_MaxRecords">MaxRecords</code></td>
<td><p>The maximum number of items to return with this call. The default
value is <code>50</code> and the maximum value is
<code>100</code>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ScheduledUpdateGroupActions = list(
        list(
          AutoScalingGroupName = "string",
          ScheduledActionName = "string",
          ScheduledActionARN = "string",
          Time = as.POSIXct(
            "2015-01-01"
          ),
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
      ),
      NextToken = "string"
    )

### Request syntax

    svc$describe_scheduled_actions(
      AutoScalingGroupName = "string",
      ScheduledActionNames = list(
        "string"
      ),
      StartTime = as.POSIXct(
        "2015-01-01"
      ),
      EndTime = as.POSIXct(
        "2015-01-01"
      ),
      NextToken = "string",
      MaxRecords = 123
    )

### Examples

    ## Not run: 
    # This example describes the scheduled actions for the specified Auto
    # Scaling group.
    svc$describe_scheduled_actions(
      AutoScalingGroupName = "my-auto-scaling-group"
    )

    ## End(Not run)
