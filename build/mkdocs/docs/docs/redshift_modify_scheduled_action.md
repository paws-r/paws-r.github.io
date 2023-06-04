<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>redshift_modify_scheduled_action</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Modifies a scheduled action

### Description

Modifies a scheduled action.

### Usage

    redshift_modify_scheduled_action(ScheduledActionName, TargetAction,
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
id="redshift_modify_scheduled_action_:_ScheduledActionName">ScheduledActionName</code></td>
<td><p>[required] The name of the scheduled action to modify.</p></td>
</tr>
<tr class="even">
<td><code
id="redshift_modify_scheduled_action_:_TargetAction">TargetAction</code></td>
<td><p>A modified JSON format of the scheduled action. For more
information about this parameter, see ScheduledAction.</p></td>
</tr>
<tr class="odd">
<td><code
id="redshift_modify_scheduled_action_:_Schedule">Schedule</code></td>
<td><p>A modified schedule in either <code>at( )</code> or
<code>cron( )</code> format. For more information about this parameter,
see ScheduledAction.</p></td>
</tr>
<tr class="even">
<td><code
id="redshift_modify_scheduled_action_:_IamRole">IamRole</code></td>
<td><p>A different IAM role to assume to run the target action. For more
information about this parameter, see ScheduledAction.</p></td>
</tr>
<tr class="odd">
<td><code
id="redshift_modify_scheduled_action_:_ScheduledActionDescription">ScheduledActionDescription</code></td>
<td><p>A modified description of the scheduled action.</p></td>
</tr>
<tr class="even">
<td><code
id="redshift_modify_scheduled_action_:_StartTime">StartTime</code></td>
<td><p>A modified start time of the scheduled action. For more
information about this parameter, see ScheduledAction.</p></td>
</tr>
<tr class="odd">
<td><code
id="redshift_modify_scheduled_action_:_EndTime">EndTime</code></td>
<td><p>A modified end time of the scheduled action. For more information
about this parameter, see ScheduledAction.</p></td>
</tr>
<tr class="even">
<td><code
id="redshift_modify_scheduled_action_:_Enable">Enable</code></td>
<td><p>A modified enable flag of the scheduled action. If true, the
scheduled action is active. If false, the scheduled action is
disabled.</p></td>
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

    svc$modify_scheduled_action(
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
