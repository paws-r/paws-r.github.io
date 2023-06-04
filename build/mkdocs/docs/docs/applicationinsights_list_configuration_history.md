<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>applicationinsights_list_configuration_history</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists the INFO, WARN, and ERROR events for periodic configuration updates performed by Application Insights

### Description

Lists the INFO, WARN, and ERROR events for periodic configuration
updates performed by Application Insights. Examples of events
represented are:

-   INFO: creating a new alarm or updating an alarm threshold.

-   WARN: alarm not created due to insufficient data points used to
    predict thresholds.

-   ERROR: alarm not created due to permission errors or exceeding
    quotas.

### Usage

    applicationinsights_list_configuration_history(ResourceGroupName,
      StartTime, EndTime, EventStatus, MaxResults, NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="applicationinsights_list_configuration_history_:_ResourceGroupName">ResourceGroupName</code></td>
<td><p>Resource group to which the application belongs.</p></td>
</tr>
<tr class="even">
<td><code
id="applicationinsights_list_configuration_history_:_StartTime">StartTime</code></td>
<td><p>The start time of the event.</p></td>
</tr>
<tr class="odd">
<td><code
id="applicationinsights_list_configuration_history_:_EndTime">EndTime</code></td>
<td><p>The end time of the event.</p></td>
</tr>
<tr class="even">
<td><code
id="applicationinsights_list_configuration_history_:_EventStatus">EventStatus</code></td>
<td><p>The status of the configuration update event. Possible values
include INFO, WARN, and ERROR.</p></td>
</tr>
<tr class="odd">
<td><code
id="applicationinsights_list_configuration_history_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of results returned by
<code>list_configuration_history</code> in paginated output. When this
parameter is used, <code>list_configuration_history</code> returns only
<code>MaxResults</code> in a single page along with a
<code>NextToken</code> response element. The remaining results of the
initial request can be seen by sending another
<code>list_configuration_history</code> request with the returned
<code>NextToken</code> value. If this parameter is not used, then
<code>list_configuration_history</code> returns all results.</p></td>
</tr>
<tr class="even">
<td><code
id="applicationinsights_list_configuration_history_:_NextToken">NextToken</code></td>
<td><p>The <code>NextToken</code> value returned from a previous
paginated <code>list_configuration_history</code> request where
<code>MaxResults</code> was used and the results exceeded the value of
that parameter. Pagination continues from the end of the previous
results that returned the <code>NextToken</code> value. This value is
<code>null</code> when there are no more results to return.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      EventList = list(
        list(
          MonitoredResourceARN = "string",
          EventStatus = "INFO"|"WARN"|"ERROR",
          EventResourceType = "CLOUDWATCH_ALARM"|"CLOUDWATCH_LOG"|"CLOUDFORMATION"|"SSM_ASSOCIATION",
          EventTime = as.POSIXct(
            "2015-01-01"
          ),
          EventDetail = "string",
          EventResourceName = "string"
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_configuration_history(
      ResourceGroupName = "string",
      StartTime = as.POSIXct(
        "2015-01-01"
      ),
      EndTime = as.POSIXct(
        "2015-01-01"
      ),
      EventStatus = "INFO"|"WARN"|"ERROR",
      MaxResults = 123,
      NextToken = "string"
    )
