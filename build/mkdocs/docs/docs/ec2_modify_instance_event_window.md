<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_modify_instance_event_window</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Modifies the specified event window

### Description

Modifies the specified event window.

You can define either a set of time ranges or a cron expression when
modifying the event window, but not both.

To modify the targets associated with the event window, use the
`associate_instance_event_window` and
`disassociate_instance_event_window` API.

If Amazon Web Services has already scheduled an event, modifying an
event window won't change the time of the scheduled event.

For more information, see [Define event windows for scheduled
events](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/event-windows.html)
in the *Amazon EC2 User Guide*.

### Usage

    ec2_modify_instance_event_window(DryRun, Name, InstanceEventWindowId,
      TimeRanges, CronExpression)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ec2_modify_instance_event_window_:_DryRun">DryRun</code></td>
<td><p>Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
<code>DryRunOperation</code>. Otherwise, it is
<code>UnauthorizedOperation</code>.</p></td>
</tr>
<tr class="even">
<td><code id="ec2_modify_instance_event_window_:_Name">Name</code></td>
<td><p>The name of the event window.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_modify_instance_event_window_:_InstanceEventWindowId">InstanceEventWindowId</code></td>
<td><p>[required] The ID of the event window.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_modify_instance_event_window_:_TimeRanges">TimeRanges</code></td>
<td><p>The time ranges of the event window.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_modify_instance_event_window_:_CronExpression">CronExpression</code></td>
<td><p>The cron expression of the event window, for example, <code
style="white-space: pre;">⁠* 0-4,20-23 * * 1,5⁠</code>.</p>
<p>Constraints:</p>
<ul>
<li><p>Only hour and day of the week values are supported.</p></li>
<li><p>For day of the week values, you can specify either integers
<code>0</code> through <code>6</code>, or alternative single values
<code>SUN</code> through <code>SAT</code>.</p></li>
<li><p>The minute, month, and year must be specified by
<code>*</code>.</p></li>
<li><p>The hour value must be one or a multiple range, for example,
<code>0-4</code> or <code
style="white-space: pre;">⁠0-4,20-23⁠</code>.</p></li>
<li><p>Each hour range must be \&gt;= 2 hours, for example,
<code>0-2</code> or <code>20-23</code>.</p></li>
<li><p>The event window must be \&gt;= 4 hours. The combined total time
ranges in the event window must be \&gt;= 4 hours.</p></li>
</ul>
<p>For more information about cron expressions, see <a
href="https://en.wikipedia.org/wiki/Cron">cron</a> on the <em>Wikipedia
website</em>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      InstanceEventWindow = list(
        InstanceEventWindowId = "string",
        TimeRanges = list(
          list(
            StartWeekDay = "sunday"|"monday"|"tuesday"|"wednesday"|"thursday"|"friday"|"saturday",
            StartHour = 123,
            EndWeekDay = "sunday"|"monday"|"tuesday"|"wednesday"|"thursday"|"friday"|"saturday",
            EndHour = 123
          )
        ),
        Name = "string",
        CronExpression = "string",
        AssociationTarget = list(
          InstanceIds = list(
            "string"
          ),
          Tags = list(
            list(
              Key = "string",
              Value = "string"
            )
          ),
          DedicatedHostIds = list(
            "string"
          )
        ),
        State = "creating"|"deleting"|"active"|"deleted",
        Tags = list(
          list(
            Key = "string",
            Value = "string"
          )
        )
      )
    )

### Request syntax

    svc$modify_instance_event_window(
      DryRun = TRUE|FALSE,
      Name = "string",
      InstanceEventWindowId = "string",
      TimeRanges = list(
        list(
          StartWeekDay = "sunday"|"monday"|"tuesday"|"wednesday"|"thursday"|"friday"|"saturday",
          StartHour = 123,
          EndWeekDay = "sunday"|"monday"|"tuesday"|"wednesday"|"thursday"|"friday"|"saturday",
          EndHour = 123
        )
      ),
      CronExpression = "string"
    )
