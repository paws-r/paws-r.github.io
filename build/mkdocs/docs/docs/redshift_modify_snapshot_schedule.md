<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>redshift_modify_snapshot_schedule</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Modifies a snapshot schedule

### Description

Modifies a snapshot schedule. Any schedule associated with a cluster is
modified asynchronously.

### Usage

    redshift_modify_snapshot_schedule(ScheduleIdentifier,
      ScheduleDefinitions)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="redshift_modify_snapshot_schedule_:_ScheduleIdentifier">ScheduleIdentifier</code></td>
<td><p>[required] A unique alphanumeric identifier of the schedule to
modify.</p></td>
</tr>
<tr class="even">
<td><code
id="redshift_modify_snapshot_schedule_:_ScheduleDefinitions">ScheduleDefinitions</code></td>
<td><p>[required] An updated list of schedule definitions. A schedule
definition is made up of schedule expressions, for example, "cron(30 12
*)" or "rate(12 hours)".</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ScheduleDefinitions = list(
        "string"
      ),
      ScheduleIdentifier = "string",
      ScheduleDescription = "string",
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      ),
      NextInvocations = list(
        as.POSIXct(
          "2015-01-01"
        )
      ),
      AssociatedClusterCount = 123,
      AssociatedClusters = list(
        list(
          ClusterIdentifier = "string",
          ScheduleAssociationState = "MODIFYING"|"ACTIVE"|"FAILED"
        )
      )
    )

### Request syntax

    svc$modify_snapshot_schedule(
      ScheduleIdentifier = "string",
      ScheduleDefinitions = list(
        "string"
      )
    )
