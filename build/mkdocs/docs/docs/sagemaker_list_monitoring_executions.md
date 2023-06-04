<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sagemaker_list_monitoring_executions</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns list of all monitoring job executions

### Description

Returns list of all monitoring job executions.

### Usage

    sagemaker_list_monitoring_executions(MonitoringScheduleName,
      EndpointName, SortBy, SortOrder, NextToken, MaxResults,
      ScheduledTimeBefore, ScheduledTimeAfter, CreationTimeBefore,
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
id="sagemaker_list_monitoring_executions_:_MonitoringScheduleName">MonitoringScheduleName</code></td>
<td><p>Name of a specific schedule to fetch jobs for.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_list_monitoring_executions_:_EndpointName">EndpointName</code></td>
<td><p>Name of a specific endpoint to fetch jobs for.</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_list_monitoring_executions_:_SortBy">SortBy</code></td>
<td><p>Whether to sort results by <code>Status</code>,
<code>CreationTime</code>, <code>ScheduledTime</code> field. The default
is <code>CreationTime</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_list_monitoring_executions_:_SortOrder">SortOrder</code></td>
<td><p>Whether to sort the results in <code>Ascending</code> or
<code>Descending</code> order. The default is
<code>Descending</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_list_monitoring_executions_:_NextToken">NextToken</code></td>
<td><p>The token returned if the response is truncated. To retrieve the
next set of job executions, use it in the next request.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_list_monitoring_executions_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of jobs to return in the response. The default
value is 10.</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_list_monitoring_executions_:_ScheduledTimeBefore">ScheduledTimeBefore</code></td>
<td><p>Filter for jobs scheduled before a specified time.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_list_monitoring_executions_:_ScheduledTimeAfter">ScheduledTimeAfter</code></td>
<td><p>Filter for jobs scheduled after a specified time.</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_list_monitoring_executions_:_CreationTimeBefore">CreationTimeBefore</code></td>
<td><p>A filter that returns only jobs created before a specified
time.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_list_monitoring_executions_:_CreationTimeAfter">CreationTimeAfter</code></td>
<td><p>A filter that returns only jobs created after a specified
time.</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_list_monitoring_executions_:_LastModifiedTimeBefore">LastModifiedTimeBefore</code></td>
<td><p>A filter that returns only jobs modified after a specified
time.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_list_monitoring_executions_:_LastModifiedTimeAfter">LastModifiedTimeAfter</code></td>
<td><p>A filter that returns only jobs modified before a specified
time.</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_list_monitoring_executions_:_StatusEquals">StatusEquals</code></td>
<td><p>A filter that retrieves only jobs with a specific
status.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_list_monitoring_executions_:_MonitoringJobDefinitionName">MonitoringJobDefinitionName</code></td>
<td><p>Gets a list of the monitoring job runs of the specified
monitoring job definitions.</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_list_monitoring_executions_:_MonitoringTypeEquals">MonitoringTypeEquals</code></td>
<td><p>A filter that returns only the monitoring job runs of the
specified monitoring type.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      MonitoringExecutionSummaries = list(
        list(
          MonitoringScheduleName = "string",
          ScheduledTime = as.POSIXct(
            "2015-01-01"
          ),
          CreationTime = as.POSIXct(
            "2015-01-01"
          ),
          LastModifiedTime = as.POSIXct(
            "2015-01-01"
          ),
          MonitoringExecutionStatus = "Pending"|"Completed"|"CompletedWithViolations"|"InProgress"|"Failed"|"Stopping"|"Stopped",
          ProcessingJobArn = "string",
          EndpointName = "string",
          FailureReason = "string",
          MonitoringJobDefinitionName = "string",
          MonitoringType = "DataQuality"|"ModelQuality"|"ModelBias"|"ModelExplainability"
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_monitoring_executions(
      MonitoringScheduleName = "string",
      EndpointName = "string",
      SortBy = "CreationTime"|"ScheduledTime"|"Status",
      SortOrder = "Ascending"|"Descending",
      NextToken = "string",
      MaxResults = 123,
      ScheduledTimeBefore = as.POSIXct(
        "2015-01-01"
      ),
      ScheduledTimeAfter = as.POSIXct(
        "2015-01-01"
      ),
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
      StatusEquals = "Pending"|"Completed"|"CompletedWithViolations"|"InProgress"|"Failed"|"Stopping"|"Stopped",
      MonitoringJobDefinitionName = "string",
      MonitoringTypeEquals = "DataQuality"|"ModelQuality"|"ModelBias"|"ModelExplainability"
    )
