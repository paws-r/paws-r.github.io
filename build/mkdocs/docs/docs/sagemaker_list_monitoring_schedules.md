<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sagemaker_list_monitoring_schedules</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns list of all monitoring schedules

### Description

Returns list of all monitoring schedules.

### Usage

    sagemaker_list_monitoring_schedules(EndpointName, SortBy, SortOrder,
      NextToken, MaxResults, NameContains, CreationTimeBefore,
      CreationTimeAfter, LastModifiedTimeBefore, LastModifiedTimeAfter,
      StatusEquals, MonitoringJobDefinitionName, MonitoringTypeEquals)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="sagemaker_list_monitoring_schedules_:_EndpointName">EndpointName</code></td>
<td><p>Name of a specific endpoint to fetch schedules for.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_list_monitoring_schedules_:_SortBy">SortBy</code></td>
<td><p>Whether to sort results by <code>Status</code>,
<code>CreationTime</code>, <code>ScheduledTime</code> field. The default
is <code>CreationTime</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_list_monitoring_schedules_:_SortOrder">SortOrder</code></td>
<td><p>Whether to sort the results in <code>Ascending</code> or
<code>Descending</code> order. The default is
<code>Descending</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_list_monitoring_schedules_:_NextToken">NextToken</code></td>
<td><p>The token returned if the response is truncated. To retrieve the
next set of job executions, use it in the next request.</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_list_monitoring_schedules_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of jobs to return in the response. The default
value is 10.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_list_monitoring_schedules_:_NameContains">NameContains</code></td>
<td><p>Filter for monitoring schedules whose name contains a specified
string.</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_list_monitoring_schedules_:_CreationTimeBefore">CreationTimeBefore</code></td>
<td><p>A filter that returns only monitoring schedules created before a
specified time.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_list_monitoring_schedules_:_CreationTimeAfter">CreationTimeAfter</code></td>
<td><p>A filter that returns only monitoring schedules created after a
specified time.</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_list_monitoring_schedules_:_LastModifiedTimeBefore">LastModifiedTimeBefore</code></td>
<td><p>A filter that returns only monitoring schedules modified before a
specified time.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_list_monitoring_schedules_:_LastModifiedTimeAfter">LastModifiedTimeAfter</code></td>
<td><p>A filter that returns only monitoring schedules modified after a
specified time.</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_list_monitoring_schedules_:_StatusEquals">StatusEquals</code></td>
<td><p>A filter that returns only monitoring schedules modified before a
specified time.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_list_monitoring_schedules_:_MonitoringJobDefinitionName">MonitoringJobDefinitionName</code></td>
<td><p>Gets a list of the monitoring schedules for the specified
monitoring job definition.</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_list_monitoring_schedules_:_MonitoringTypeEquals">MonitoringTypeEquals</code></td>
<td><p>A filter that returns only the monitoring schedules for the
specified monitoring type.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      MonitoringScheduleSummaries = list(
        list(
          MonitoringScheduleName = "string",
          MonitoringScheduleArn = "string",
          CreationTime = as.POSIXct(
            "2015-01-01"
          ),
          LastModifiedTime = as.POSIXct(
            "2015-01-01"
          ),
          MonitoringScheduleStatus = "Pending"|"Failed"|"Scheduled"|"Stopped",
          EndpointName = "string",
          MonitoringJobDefinitionName = "string",
          MonitoringType = "DataQuality"|"ModelQuality"|"ModelBias"|"ModelExplainability"
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_monitoring_schedules(
      EndpointName = "string",
      SortBy = "Name"|"CreationTime"|"Status",
      SortOrder = "Ascending"|"Descending",
      NextToken = "string",
      MaxResults = 123,
      NameContains = "string",
      CreationTimeBefore = as.POSIXct(
        "2015-01-01"
      ),
      CreationTimeAfter = as.POSIXct(
        "2015-01-01"
      ),
      LastModifiedTimeBefore = as.POSIXct(
        "2015-01-01"
      ),
      LastModifiedTimeAfter = as.POSIXct(
        "2015-01-01"
      ),
      StatusEquals = "Pending"|"Failed"|"Scheduled"|"Stopped",
      MonitoringJobDefinitionName = "string",
      MonitoringTypeEquals = "DataQuality"|"ModelQuality"|"ModelBias"|"ModelExplainability"
    )
