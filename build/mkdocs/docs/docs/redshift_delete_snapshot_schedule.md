<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>redshift_delete_snapshot_schedule</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes a snapshot schedule

### Description

Deletes a snapshot schedule.

### Usage

    redshift_delete_snapshot_schedule(ScheduleIdentifier)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="redshift_delete_snapshot_schedule_:_ScheduleIdentifier">ScheduleIdentifier</code></td>
<td><p>[required] A unique identifier of the snapshot schedule to
delete.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_snapshot_schedule(
      ScheduleIdentifier = "string"
    )
