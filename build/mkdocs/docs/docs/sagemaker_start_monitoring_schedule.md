<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sagemaker_start_monitoring_schedule</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Starts a previously stopped monitoring schedule

### Description

Starts a previously stopped monitoring schedule.

By default, when you successfully create a new schedule, the status of a
monitoring schedule is `scheduled`.

### Usage

    sagemaker_start_monitoring_schedule(MonitoringScheduleName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="sagemaker_start_monitoring_schedule_:_MonitoringScheduleName">MonitoringScheduleName</code></td>
<td><p>[required] The name of the schedule to start.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$start_monitoring_schedule(
      MonitoringScheduleName = "string"
    )
