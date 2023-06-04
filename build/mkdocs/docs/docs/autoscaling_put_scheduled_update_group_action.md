<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>autoscaling_put_scheduled_update_group_action</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates or updates a scheduled scaling action for an Auto Scaling group

### Description

Creates or updates a scheduled scaling action for an Auto Scaling group.

For more information, see [Scheduled
scaling](https://docs.aws.amazon.com/autoscaling/ec2/userguide/ec2-auto-scaling-scheduled-scaling.html)
in the *Amazon EC2 Auto Scaling User Guide*.

You can view the scheduled actions for an Auto Scaling group using the
`describe_scheduled_actions` API call. If you are no longer using a
scheduled action, you can delete it by calling the
`delete_scheduled_action` API.

If you try to schedule your action in the past, Amazon EC2 Auto Scaling
returns an error message.

### Usage

    autoscaling_put_scheduled_update_group_action(AutoScalingGroupName,
      ScheduledActionName, Time, StartTime, EndTime, Recurrence, MinSize,
      MaxSize, DesiredCapacity, TimeZone)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="autoscaling_put_scheduled_update_group_action_:_AutoScalingGroupName">AutoScalingGroupName</code></td>
<td><p>[required] The name of the Auto Scaling group.</p></td>
</tr>
<tr class="even">
<td><code
id="autoscaling_put_scheduled_update_group_action_:_ScheduledActionName">ScheduledActionName</code></td>
<td><p>[required] The name of this scaling action.</p></td>
</tr>
<tr class="odd">
<td><code
id="autoscaling_put_scheduled_update_group_action_:_Time">Time</code></td>
<td><p>This property is no longer used.</p></td>
</tr>
<tr class="even">
<td><code
id="autoscaling_put_scheduled_update_group_action_:_StartTime">StartTime</code></td>
<td><p>The date and time for this action to start, in
YYYY-MM-DDThh:mm:ssZ format in UTC/GMT only and in quotes (for example,
<code>"2021-06-01T00:00:00Z"</code>).</p>
<p>If you specify <code>Recurrence</code> and <code>StartTime</code>,
Amazon EC2 Auto Scaling performs the action at this time, and then
performs the action based on the specified recurrence.</p></td>
</tr>
<tr class="odd">
<td><code
id="autoscaling_put_scheduled_update_group_action_:_EndTime">EndTime</code></td>
<td><p>The date and time for the recurring schedule to end, in UTC. For
example, <code>"2021-06-01T00:00:00Z"</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="autoscaling_put_scheduled_update_group_action_:_Recurrence">Recurrence</code></td>
<td><p>The recurring schedule for this action. This format consists of
five fields separated by white spaces: [Minute] [Hour] [Day_of_Month]
[Month_of_Year] [Day_of_Week]. The value must be in quotes (for example,
<code>"30 0 1 1,6,12 *"</code>). For more information about this format,
see <a href="http://crontab.org/">Crontab</a>.</p>
<p>When <code>StartTime</code> and <code>EndTime</code> are specified
with <code>Recurrence</code>, they form the boundaries of when the
recurring action starts and stops.</p>
<p>Cron expressions use Universal Coordinated Time (UTC) by
default.</p></td>
</tr>
<tr class="odd">
<td><code
id="autoscaling_put_scheduled_update_group_action_:_MinSize">MinSize</code></td>
<td><p>The minimum size of the Auto Scaling group.</p></td>
</tr>
<tr class="even">
<td><code
id="autoscaling_put_scheduled_update_group_action_:_MaxSize">MaxSize</code></td>
<td><p>The maximum size of the Auto Scaling group.</p></td>
</tr>
<tr class="odd">
<td><code
id="autoscaling_put_scheduled_update_group_action_:_DesiredCapacity">DesiredCapacity</code></td>
<td><p>The desired capacity is the initial capacity of the Auto Scaling
group after the scheduled action runs and the capacity it attempts to
maintain. It can scale beyond this capacity if you add more scaling
conditions.</p>
<p>You must specify at least one of the following properties:
<code>MaxSize</code>, <code>MinSize</code>, or
<code>DesiredCapacity</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="autoscaling_put_scheduled_update_group_action_:_TimeZone">TimeZone</code></td>
<td><p>Specifies the time zone for a cron expression. If a time zone is
not provided, UTC is used by default.</p>
<p>Valid values are the canonical names of the IANA time zones, derived
from the IANA Time Zone Database (such as <code>Etc/GMT+9</code> or
<code>Pacific/Tahiti</code>). For more information, see <a
href="https://en.wikipedia.org/wiki/List_of_tz_database_time_zones">https://en.wikipedia.org/wiki/List_of_tz_database_time_zones</a>.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$put_scheduled_update_group_action(
      AutoScalingGroupName = "string",
      ScheduledActionName = "string",
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

### Examples

    ## Not run: 
    # This example adds the specified scheduled action to the specified Auto
    # Scaling group.
    svc$put_scheduled_update_group_action(
      AutoScalingGroupName = "my-auto-scaling-group",
      DesiredCapacity = 4L,
      EndTime = "2014-05-12T08:00:00Z",
      MaxSize = 6L,
      MinSize = 2L,
      ScheduledActionName = "my-scheduled-action",
      StartTime = "2014-05-12T08:00:00Z"
    )

    ## End(Not run)
