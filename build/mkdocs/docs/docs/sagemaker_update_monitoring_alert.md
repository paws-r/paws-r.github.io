<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sagemaker_update_monitoring_alert</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Update the parameters of a model monitor alert

### Description

Update the parameters of a model monitor alert.

### Usage

    sagemaker_update_monitoring_alert(MonitoringScheduleName,
      MonitoringAlertName, DatapointsToAlert, EvaluationPeriod)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="sagemaker_update_monitoring_alert_:_MonitoringScheduleName">MonitoringScheduleName</code></td>
<td><p>[required] The name of a monitoring schedule.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_update_monitoring_alert_:_MonitoringAlertName">MonitoringAlertName</code></td>
<td><p>[required] The name of a monitoring alert.</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_update_monitoring_alert_:_DatapointsToAlert">DatapointsToAlert</code></td>
<td><p>[required] Within <code>EvaluationPeriod</code>, how many
execution failures will raise an alert.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_update_monitoring_alert_:_EvaluationPeriod">EvaluationPeriod</code></td>
<td><p>[required] The number of most recent monitoring executions to
consider when evaluating alert status.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      MonitoringScheduleArn = "string",
      MonitoringAlertName = "string"
    )

### Request syntax

    svc$update_monitoring_alert(
      MonitoringScheduleName = "string",
      MonitoringAlertName = "string",
      DatapointsToAlert = 123,
      EvaluationPeriod = 123
    )
