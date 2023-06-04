<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sagemaker_list_monitoring_alert_history</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets a list of past alerts in a model monitoring schedule

### Description

Gets a list of past alerts in a model monitoring schedule.

### Usage

    sagemaker_list_monitoring_alert_history(MonitoringScheduleName,
      MonitoringAlertName, SortBy, SortOrder, NextToken, MaxResults,
      CreationTimeBefore, CreationTimeAfter, StatusEquals)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="sagemaker_list_monitoring_alert_history_:_MonitoringScheduleName">MonitoringScheduleName</code></td>
<td><p>The name of a monitoring schedule.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_list_monitoring_alert_history_:_MonitoringAlertName">MonitoringAlertName</code></td>
<td><p>The name of a monitoring alert.</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_list_monitoring_alert_history_:_SortBy">SortBy</code></td>
<td><p>The field used to sort results. The default is
<code>CreationTime</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_list_monitoring_alert_history_:_SortOrder">SortOrder</code></td>
<td><p>The sort order, whether <code>Ascending</code> or
<code>Descending</code>, of the alert history. The default is
<code>Descending</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_list_monitoring_alert_history_:_NextToken">NextToken</code></td>
<td><p>If the result of the previous
<code>list_monitoring_alert_history</code> request was truncated, the
response includes a <code>NextToken</code>. To retrieve the next set of
alerts in the history, use the token in the next request.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_list_monitoring_alert_history_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of results to display. The default is
100.</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_list_monitoring_alert_history_:_CreationTimeBefore">CreationTimeBefore</code></td>
<td><p>A filter that returns only alerts created on or before the
specified time.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_list_monitoring_alert_history_:_CreationTimeAfter">CreationTimeAfter</code></td>
<td><p>A filter that returns only alerts created on or after the
specified time.</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_list_monitoring_alert_history_:_StatusEquals">StatusEquals</code></td>
<td><p>A filter that retrieves only alerts with a specific
status.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      MonitoringAlertHistory = list(
        list(
          MonitoringScheduleName = "string",
          MonitoringAlertName = "string",
          CreationTime = as.POSIXct(
            "2015-01-01"
          ),
          AlertStatus = "InAlert"|"OK"
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_monitoring_alert_history(
      MonitoringScheduleName = "string",
      MonitoringAlertName = "string",
      SortBy = "CreationTime"|"Status",
      SortOrder = "Ascending"|"Descending",
      NextToken = "string",
      MaxResults = 123,
      CreationTimeBefore = as.POSIXct(
        "2015-01-01"
      ),
      CreationTimeAfter = as.POSIXct(
        "2015-01-01"
      ),
      StatusEquals = "InAlert"|"OK"
    )
