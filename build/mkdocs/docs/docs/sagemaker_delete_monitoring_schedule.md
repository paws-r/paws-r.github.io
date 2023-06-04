<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sagemaker_delete_monitoring_schedule</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes a monitoring schedule

### Description

Deletes a monitoring schedule. Also stops the schedule had not already
been stopped. This does not delete the job execution history of the
monitoring schedule.

### Usage

    sagemaker_delete_monitoring_schedule(MonitoringScheduleName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="sagemaker_delete_monitoring_schedule_:_MonitoringScheduleName">MonitoringScheduleName</code></td>
<td><p>[required] The name of the monitoring schedule to
delete.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_monitoring_schedule(
      MonitoringScheduleName = "string"
    )
