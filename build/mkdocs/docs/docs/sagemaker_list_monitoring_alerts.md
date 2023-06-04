<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sagemaker_list_monitoring_alerts</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets the alerts for a single monitoring schedule

### Description

Gets the alerts for a single monitoring schedule.

### Usage

    sagemaker_list_monitoring_alerts(MonitoringScheduleName, NextToken,
      MaxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="sagemaker_list_monitoring_alerts_:_MonitoringScheduleName">MonitoringScheduleName</code></td>
<td><p>[required] The name of a monitoring schedule.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_list_monitoring_alerts_:_NextToken">NextToken</code></td>
<td><p>If the result of the previous <code>list_monitoring_alerts</code>
request was truncated, the response includes a <code>NextToken</code>.
To retrieve the next set of alerts in the history, use the token in the
next request.</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_list_monitoring_alerts_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of results to display. The default is
100.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      MonitoringAlertSummaries = list(
        list(
          MonitoringAlertName = "string",
          CreationTime = as.POSIXct(
            "2015-01-01"
          ),
          LastModifiedTime = as.POSIXct(
            "2015-01-01"
          ),
          AlertStatus = "InAlert"|"OK",
          DatapointsToAlert = 123,
          EvaluationPeriod = 123,
          Actions = list(
            ModelDashboardIndicator = list(
              Enabled = TRUE|FALSE
            )
          )
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_monitoring_alerts(
      MonitoringScheduleName = "string",
      NextToken = "string",
      MaxResults = 123
    )
