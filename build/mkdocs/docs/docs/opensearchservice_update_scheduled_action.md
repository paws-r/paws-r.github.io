<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>opensearchservice_update_scheduled_action</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Reschedules a planned domain configuration change for a later time

### Description

Reschedules a planned domain configuration change for a later time. This
change can be a scheduled [service software
update](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/service-software.html)
or a [blue/green Auto-Tune
enhancement](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/auto-tune.html#auto-tune-types).

### Usage

    opensearchservice_update_scheduled_action(DomainName, ActionID,
      ActionType, ScheduleAt, DesiredStartTime)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="opensearchservice_update_scheduled_action_:_DomainName">DomainName</code></td>
<td><p>[required] The name of the domain to reschedule an action
for.</p></td>
</tr>
<tr class="even">
<td><code
id="opensearchservice_update_scheduled_action_:_ActionID">ActionID</code></td>
<td><p>[required] The unique identifier of the action to reschedule. To
retrieve this ID, send a <code>list_scheduled_actions</code>
request.</p></td>
</tr>
<tr class="odd">
<td><code
id="opensearchservice_update_scheduled_action_:_ActionType">ActionType</code></td>
<td><p>[required] The type of action to reschedule. Can be one of
<code>SERVICE_SOFTWARE_UPDATE</code>, <code>JVM_HEAP_SIZE_TUNING</code>,
or <code>JVM_YOUNG_GEN_TUNING</code>. To retrieve this value, send a
<code>list_scheduled_actions</code> request.</p></td>
</tr>
<tr class="even">
<td><code
id="opensearchservice_update_scheduled_action_:_ScheduleAt">ScheduleAt</code></td>
<td><p>[required] When to schedule the action.</p>
<ul>
<li><p><code>NOW</code> - Immediately schedules the update to happen in
the current hour if there's capacity available.</p></li>
<li><p><code>TIMESTAMP</code> - Lets you specify a custom date and time
to apply the update. If you specify this value, you must also provide a
value for <code>DesiredStartTime</code>.</p></li>
<li><p><code>OFF_PEAK_WINDOW</code> - Marks the action to be picked up
during an upcoming off-peak window. There's no guarantee that the change
will be implemented during the next immediate window. Depending on
capacity, it might happen in subsequent days.</p></li>
</ul></td>
</tr>
<tr class="odd">
<td><code
id="opensearchservice_update_scheduled_action_:_DesiredStartTime">DesiredStartTime</code></td>
<td><p>The time to implement the change, in Coordinated Universal Time
(UTC). Only specify this parameter if you set <code>ScheduleAt</code> to
<code>TIMESTAMP</code>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ScheduledAction = list(
        Id = "string",
        Type = "SERVICE_SOFTWARE_UPDATE"|"JVM_HEAP_SIZE_TUNING"|"JVM_YOUNG_GEN_TUNING",
        Severity = "HIGH"|"MEDIUM"|"LOW",
        ScheduledTime = 123,
        Description = "string",
        ScheduledBy = "CUSTOMER"|"SYSTEM",
        Status = "PENDING_UPDATE"|"IN_PROGRESS"|"FAILED"|"COMPLETED"|"NOT_ELIGIBLE"|"ELIGIBLE",
        Mandatory = TRUE|FALSE,
        Cancellable = TRUE|FALSE
      )
    )

### Request syntax

    svc$update_scheduled_action(
      DomainName = "string",
      ActionID = "string",
      ActionType = "SERVICE_SOFTWARE_UPDATE"|"JVM_HEAP_SIZE_TUNING"|"JVM_YOUNG_GEN_TUNING",
      ScheduleAt = "NOW"|"TIMESTAMP"|"OFF_PEAK_WINDOW",
      DesiredStartTime = 123
    )
