<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>redshift_modify_cluster_snapshot_schedule</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Modifies a snapshot schedule for a cluster

### Description

Modifies a snapshot schedule for a cluster.

### Usage

    redshift_modify_cluster_snapshot_schedule(ClusterIdentifier,
      ScheduleIdentifier, DisassociateSchedule)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="redshift_modify_cluster_snapshot_schedule_:_ClusterIdentifier">ClusterIdentifier</code></td>
<td><p>[required] A unique identifier for the cluster whose snapshot
schedule you want to modify.</p></td>
</tr>
<tr class="even">
<td><code
id="redshift_modify_cluster_snapshot_schedule_:_ScheduleIdentifier">ScheduleIdentifier</code></td>
<td><p>A unique alphanumeric identifier for the schedule that you want
to associate with the cluster.</p></td>
</tr>
<tr class="odd">
<td><code
id="redshift_modify_cluster_snapshot_schedule_:_DisassociateSchedule">DisassociateSchedule</code></td>
<td><p>A boolean to indicate whether to remove the assoiciation between
the cluster and the schedule.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$modify_cluster_snapshot_schedule(
      ClusterIdentifier = "string",
      ScheduleIdentifier = "string",
      DisassociateSchedule = TRUE|FALSE
    )
