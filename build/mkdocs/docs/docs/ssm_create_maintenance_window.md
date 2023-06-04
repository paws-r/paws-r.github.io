<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ssm_create_maintenance_window</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a new maintenance window

### Description

Creates a new maintenance window.

The value you specify for `Duration` determines the specific end time
for the maintenance window based on the time it begins. No maintenance
window tasks are permitted to start after the resulting endtime minus
the number of hours you specify for `Cutoff`. For example, if the
maintenance window starts at 3 PM, the duration is three hours, and the
value you specify for `Cutoff` is one hour, no maintenance window tasks
can start after 5 PM.

### Usage

    ssm_create_maintenance_window(Name, Description, StartDate, EndDate,
      Schedule, ScheduleTimezone, ScheduleOffset, Duration, Cutoff,
      AllowUnassociatedTargets, ClientToken, Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="ssm_create_maintenance_window_:_Name">Name</code></td>
<td><p>[required] The name of the maintenance window.</p></td>
</tr>
<tr class="even">
<td><code
id="ssm_create_maintenance_window_:_Description">Description</code></td>
<td><p>An optional description for the maintenance window. We recommend
specifying a description to help you organize your maintenance
windows.</p></td>
</tr>
<tr class="odd">
<td><code
id="ssm_create_maintenance_window_:_StartDate">StartDate</code></td>
<td><p>The date and time, in ISO-8601 Extended format, for when you want
the maintenance window to become active. <code>StartDate</code> allows
you to delay activation of the maintenance window until the specified
future date.</p></td>
</tr>
<tr class="even">
<td><code
id="ssm_create_maintenance_window_:_EndDate">EndDate</code></td>
<td><p>The date and time, in ISO-8601 Extended format, for when you want
the maintenance window to become inactive. <code>EndDate</code> allows
you to set a date and time in the future when the maintenance window
will no longer run.</p></td>
</tr>
<tr class="odd">
<td><code
id="ssm_create_maintenance_window_:_Schedule">Schedule</code></td>
<td><p>[required] The schedule of the maintenance window in the form of
a cron or rate expression.</p></td>
</tr>
<tr class="even">
<td><code
id="ssm_create_maintenance_window_:_ScheduleTimezone">ScheduleTimezone</code></td>
<td><p>The time zone that the scheduled maintenance window executions
are based on, in Internet Assigned Numbers Authority (IANA) format. For
example: "America/Los_Angeles", "UTC", or "Asia/Seoul". For more
information, see the <a href="https://www.iana.org/time-zones">Time Zone
Database</a> on the IANA website.</p></td>
</tr>
<tr class="odd">
<td><code
id="ssm_create_maintenance_window_:_ScheduleOffset">ScheduleOffset</code></td>
<td><p>The number of days to wait after the date and time specified by a
cron expression before running the maintenance window.</p>
<p>For example, the following cron expression schedules a maintenance
window to run on the third Tuesday of every month at 11:30 PM.</p>
<p><code style="white-space: pre;">⁠cron(30 23 ? * TUE#3 *)⁠</code></p>
<p>If the schedule offset is <code>2</code>, the maintenance window
won't run until two days later.</p></td>
</tr>
<tr class="even">
<td><code
id="ssm_create_maintenance_window_:_Duration">Duration</code></td>
<td><p>[required] The duration of the maintenance window in
hours.</p></td>
</tr>
<tr class="odd">
<td><code id="ssm_create_maintenance_window_:_Cutoff">Cutoff</code></td>
<td><p>[required] The number of hours before the end of the maintenance
window that Amazon Web Services Systems Manager stops scheduling new
tasks for execution.</p></td>
</tr>
<tr class="even">
<td><code
id="ssm_create_maintenance_window_:_AllowUnassociatedTargets">AllowUnassociatedTargets</code></td>
<td><p>[required] Enables a maintenance window task to run on managed
nodes, even if you haven't registered those nodes as targets. If
enabled, then you must specify the unregistered managed nodes (by node
ID) when you register a task with the maintenance window.</p>
<p>If you don't enable this option, then you must specify
previously-registered targets when you register a task with the
maintenance window.</p></td>
</tr>
<tr class="odd">
<td><code
id="ssm_create_maintenance_window_:_ClientToken">ClientToken</code></td>
<td><p>User-provided idempotency token.</p></td>
</tr>
<tr class="even">
<td><code id="ssm_create_maintenance_window_:_Tags">Tags</code></td>
<td><p>Optional metadata that you assign to a resource. Tags enable you
to categorize a resource in different ways, such as by purpose, owner,
or environment. For example, you might want to tag a maintenance window
to identify the type of tasks it will run, the types of targets, and the
environment it will run in. In this case, you could specify the
following key-value pairs:</p>
<ul>
<li><p><code
style="white-space: pre;">⁠Key=TaskType,Value=AgentUpdate⁠</code></p></li>
<li><p><code
style="white-space: pre;">⁠Key=OS,Value=Windows⁠</code></p></li>
<li><p><code
style="white-space: pre;">⁠Key=Environment,Value=Production⁠</code></p></li>
</ul>
<p>To add tags to an existing maintenance window, use the
<code>add_tags_to_resource</code> operation.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      WindowId = "string"
    )

### Request syntax

    svc$create_maintenance_window(
      Name = "string",
      Description = "string",
      StartDate = "string",
      EndDate = "string",
      Schedule = "string",
      ScheduleTimezone = "string",
      ScheduleOffset = 123,
      Duration = 123,
      Cutoff = 123,
      AllowUnassociatedTargets = TRUE|FALSE,
      ClientToken = "string",
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      )
    )
