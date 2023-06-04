<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>redshift_create_snapshot_schedule</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Create a snapshot schedule that can be associated to a cluster and which overrides the default system backup schedule

### Description

Create a snapshot schedule that can be associated to a cluster and which
overrides the default system backup schedule.

### Usage

    redshift_create_snapshot_schedule(ScheduleDefinitions,
      ScheduleIdentifier, ScheduleDescription, Tags, DryRun, NextInvocations)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="redshift_create_snapshot_schedule_:_ScheduleDefinitions">ScheduleDefinitions</code></td>
<td><p>The definition of the snapshot schedule. The definition is made
up of schedule expressions, for example "cron(30 12 *)" or "rate(12
hours)".</p></td>
</tr>
<tr class="even">
<td><code
id="redshift_create_snapshot_schedule_:_ScheduleIdentifier">ScheduleIdentifier</code></td>
<td><p>A unique identifier for a snapshot schedule. Only alphanumeric
characters are allowed for the identifier.</p></td>
</tr>
<tr class="odd">
<td><code
id="redshift_create_snapshot_schedule_:_ScheduleDescription">ScheduleDescription</code></td>
<td><p>The description of the snapshot schedule.</p></td>
</tr>
<tr class="even">
<td><code id="redshift_create_snapshot_schedule_:_Tags">Tags</code></td>
<td><p>An optional set of tags you can use to search for the
schedule.</p></td>
</tr>
<tr class="odd">
<td><code
id="redshift_create_snapshot_schedule_:_DryRun">DryRun</code></td>
<td></td>
</tr>
<tr class="even">
<td><code
id="redshift_create_snapshot_schedule_:_NextInvocations">NextInvocations</code></td>
<td></td>
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

    svc$create_snapshot_schedule(
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
      DryRun = TRUE|FALSE,
      NextInvocations = 123
    )
