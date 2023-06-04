<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>redshift_create_scheduled_action</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a scheduled action

### Description

Creates a scheduled action. A scheduled action contains a schedule and
an Amazon Redshift API action. For example, you can create a schedule of
when to run the `resize_cluster` API operation.

### Usage

    redshift_create_scheduled_action(ScheduledActionName, TargetAction,
      Schedule, IamRole, ScheduledActionDescription, StartTime, EndTime,
      Enable)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="redshift_create_scheduled_action_:_ScheduledActionName">ScheduledActionName</code></td>
<td><p>[required] The name of the scheduled action. The name must be
unique within an account. For more information about this parameter, see
ScheduledAction.</p></td>
</tr>
<tr class="even">
<td><code
id="redshift_create_scheduled_action_:_TargetAction">TargetAction</code></td>
<td><p>[required] A JSON format string of the Amazon Redshift API
operation with input parameters. For more information about this
parameter, see ScheduledAction.</p></td>
</tr>
<tr class="odd">
<td><code
id="redshift_create_scheduled_action_:_Schedule">Schedule</code></td>
<td><p>[required] The schedule in <code>at( )</code> or
<code>cron( )</code> format. For more information about this parameter,
see ScheduledAction.</p></td>
</tr>
<tr class="even">
<td><code
id="redshift_create_scheduled_action_:_IamRole">IamRole</code></td>
<td><p>[required] The IAM role to assume to run the target action. For
more information about this parameter, see ScheduledAction.</p></td>
</tr>
<tr class="odd">
<td><code
id="redshift_create_scheduled_action_:_ScheduledActionDescription">ScheduledActionDescription</code></td>
<td><p>The description of the scheduled action.</p></td>
</tr>
<tr class="even">
<td><code
id="redshift_create_scheduled_action_:_StartTime">StartTime</code></td>
<td><p>The start time in UTC of the scheduled action. Before this time,
the scheduled action does not trigger. For more information about this
parameter, see ScheduledAction.</p></td>
</tr>
<tr class="odd">
<td><code
id="redshift_create_scheduled_action_:_EndTime">EndTime</code></td>
<td><p>The end time in UTC of the scheduled action. After this time, the
scheduled action does not trigger. For more information about this
parameter, see ScheduledAction.</p></td>
</tr>
<tr class="even">
<td><code
id="redshift_create_scheduled_action_:_Enable">Enable</code></td>
<td><p>If true, the schedule is enabled. If false, the scheduled action
does not trigger. For more information about <code>state</code> of the
scheduled action, see ScheduledAction.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ScheduledActionName = "string",
      TargetAction = list(
        ResizeCluster = list(
          ClusterIdentifier = "string",
          ClusterType = "string",
          NodeType = "string",
          NumberOfNodes = 123,
          Classic = TRUE|FALSE,
          ReservedNodeId = "string",
          TargetReservedNodeOfferingId = "string"
        ),
        PauseCluster = list(
          ClusterIdentifier = "string"
        ),
        ResumeCluster = list(
          ClusterIdentifier = "string"
        )
      ),
      Schedule = "string",
      IamRole = "string",
      ScheduledActionDescription = "string",
      State = "ACTIVE"|"DISABLED",
      NextInvocations = list(
        as.POSIXct(
          "2015-01-01"
        )
      ),
      StartTime = as.POSIXct(
        "2015-01-01"
      ),
      EndTime = as.POSIXct(
        "2015-01-01"
      )
    )

### Request syntax

    svc$create_scheduled_action(
      ScheduledActionName = "string",
      TargetAction = list(
        ResizeCluster = list(
          ClusterIdentifier = "string",
          ClusterType = "string",
          NodeType = "string",
          NumberOfNodes = 123,
          Classic = TRUE|FALSE,
          ReservedNodeId = "string",
          TargetReservedNodeOfferingId = "string"
        ),
        PauseCluster = list(
          ClusterIdentifier = "string"
        ),
        ResumeCluster = list(
          ClusterIdentifier = "string"
        )
      ),
      Schedule = "string",
      IamRole = "string",
      ScheduledActionDescription = "string",
      StartTime = as.POSIXct(
        "2015-01-01"
      ),
      EndTime = as.POSIXct(
        "2015-01-01"
      ),
      Enable = TRUE|FALSE
    )
