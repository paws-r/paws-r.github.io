<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sagemaker_stop_monitoring_schedule</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Stops a previously started monitoring schedule

### Description

Stops a previously started monitoring schedule.

### Usage

    sagemaker_stop_monitoring_schedule(MonitoringScheduleName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="sagemaker_stop_monitoring_schedule_:_MonitoringScheduleName">MonitoringScheduleName</code></td>
<td><p>[required] The name of the schedule to stop.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$stop_monitoring_schedule(
      MonitoringScheduleName = "string"
    )
