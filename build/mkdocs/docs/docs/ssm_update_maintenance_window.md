<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ssm_update_maintenance_window</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates an existing maintenance window

### Description

Updates an existing maintenance window. Only specified parameters are
modified.

The value you specify for `Duration` determines the specific end time
for the maintenance window based on the time it begins. No maintenance
window tasks are permitted to start after the resulting endtime minus
the number of hours you specify for `Cutoff`. For example, if the
maintenance window starts at 3 PM, the duration is three hours, and the
value you specify for `Cutoff` is one hour, no maintenance window tasks
can start after 5 PM.

### Usage

    ssm_update_maintenance_window(WindowId, Name, Description, StartDate,
      EndDate, Schedule, ScheduleTimezone, ScheduleOffset, Duration, Cutoff,
      AllowUnassociatedTargets, Enabled, Replace)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ssm_update_maintenance_window_:_WindowId">WindowId</code></td>
<td><p>[required] The ID of the maintenance window to update.</p></td>
</tr>
<tr class="even">
<td><code id="ssm_update_maintenance_window_:_Name">Name</code></td>
<td><p>The name of the maintenance window.</p></td>
</tr>
<tr class="odd">
<td><code
id="ssm_update_maintenance_window_:_Description">Description</code></td>
<td><p>An optional description for the update request.</p></td>
</tr>
<tr class="even">
<td><code
id="ssm_update_maintenance_window_:_StartDate">StartDate</code></td>
<td><p>The date and time, in ISO-8601 Extended format, for when you want
the maintenance window to become active. <code>StartDate</code> allows
you to delay activation of the maintenance window until the specified
future date.</p></td>
</tr>
<tr class="odd">
<td><code
id="ssm_update_maintenance_window_:_EndDate">EndDate</code></td>
<td><p>The date and time, in ISO-8601 Extended format, for when you want
the maintenance window to become inactive. <code>EndDate</code> allows
you to set a date and time in the future when the maintenance window
will no longer run.</p></td>
</tr>
<tr class="even">
<td><code
id="ssm_update_maintenance_window_:_Schedule">Schedule</code></td>
<td><p>The schedule of the maintenance window in the form of a cron or
rate expression.</p></td>
</tr>
<tr class="odd">
<td><code
id="ssm_update_maintenance_window_:_ScheduleTimezone">ScheduleTimezone</code></td>
<td><p>The time zone that the scheduled maintenance window executions
are based on, in Internet Assigned Numbers Authority (IANA) format. For
example: "America/Los_Angeles", "UTC", or "Asia/Seoul". For more
information, see the <a href="https://www.iana.org/time-zones">Time Zone
Database</a> on the IANA website.</p></td>
</tr>
<tr class="even">
<td><code
id="ssm_update_maintenance_window_:_ScheduleOffset">ScheduleOffset</code></td>
<td><p>The number of days to wait after the date and time specified by a
cron expression before running the maintenance window.</p>
<p>For example, the following cron expression schedules a maintenance
window to run the third Tuesday of every month at 11:30 PM.</p>
<p><code style="white-space: pre;">⁠cron(30 23 ? * TUE#3 *)⁠</code></p>
<p>If the schedule offset is <code>2</code>, the maintenance window
won't run until two days later.</p></td>
</tr>
<tr class="odd">
<td><code
id="ssm_update_maintenance_window_:_Duration">Duration</code></td>
<td><p>The duration of the maintenance window in hours.</p></td>
</tr>
<tr class="even">
<td><code id="ssm_update_maintenance_window_:_Cutoff">Cutoff</code></td>
<td><p>The number of hours before the end of the maintenance window that
Amazon Web Services Systems Manager stops scheduling new tasks for
execution.</p></td>
</tr>
<tr class="odd">
<td><code
id="ssm_update_maintenance_window_:_AllowUnassociatedTargets">AllowUnassociatedTargets</code></td>
<td><p>Whether targets must be registered with the maintenance window
before tasks can be defined for those targets.</p></td>
</tr>
<tr class="even">
<td><code
id="ssm_update_maintenance_window_:_Enabled">Enabled</code></td>
<td><p>Whether the maintenance window is enabled.</p></td>
</tr>
<tr class="odd">
<td><code
id="ssm_update_maintenance_window_:_Replace">Replace</code></td>
<td><p>If <code>True</code>, then all fields that are required by the
<code>create_maintenance_window</code> operation are also required for
this API request. Optional fields that aren't specified are set to
null.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      WindowId = "string",
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
      Enabled = TRUE|FALSE
    )

### Request syntax

    svc$update_maintenance_window(
      WindowId = "string",
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
      Enabled = TRUE|FALSE,
      Replace = TRUE|FALSE
    )
