<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>costexplorer_update_anomaly_monitor</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates an existing cost anomaly monitor

### Description

Updates an existing cost anomaly monitor. The changes made are applied
going forward, and doesn't change anomalies detected in the past.

### Usage

    costexplorer_update_anomaly_monitor(MonitorArn, MonitorName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="costexplorer_update_anomaly_monitor_:_MonitorArn">MonitorArn</code></td>
<td><p>[required] Cost anomaly monitor Amazon Resource Names
(ARNs).</p></td>
</tr>
<tr class="even">
<td><code
id="costexplorer_update_anomaly_monitor_:_MonitorName">MonitorName</code></td>
<td><p>The new name for the cost anomaly monitor.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      MonitorArn = "string"
    )

### Request syntax

    svc$update_anomaly_monitor(
      MonitorArn = "string",
      MonitorName = "string"
    )
