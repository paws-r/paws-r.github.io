<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudwatchlogs_describe_queries</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns a list of CloudWatch Logs Insights queries that are scheduled, running, or have been run recently in this account

### Description

Returns a list of CloudWatch Logs Insights queries that are scheduled,
running, or have been run recently in this account. You can request all
queries or limit it to queries of a specific log group or queries with a
certain status.

### Usage

    cloudwatchlogs_describe_queries(logGroupName, status, maxResults,
      nextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cloudwatchlogs_describe_queries_:_logGroupName">logGroupName</code></td>
<td><p>Limits the returned queries to only those for the specified log
group.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudwatchlogs_describe_queries_:_status">status</code></td>
<td><p>Limits the returned queries to only those that have the specified
status. Valid values are <code>Cancelled</code>, <code>Complete</code>,
<code>Failed</code>, <code>Running</code>, and
<code>Scheduled</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="cloudwatchlogs_describe_queries_:_maxResults">maxResults</code></td>
<td><p>Limits the number of returned queries to the specified
number.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudwatchlogs_describe_queries_:_nextToken">nextToken</code></td>
<td></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      queries = list(
        list(
          queryId = "string",
          queryString = "string",
          status = "Scheduled"|"Running"|"Complete"|"Failed"|"Cancelled"|"Timeout"|"Unknown",
          createTime = 123,
          logGroupName = "string"
        )
      ),
      nextToken = "string"
    )

### Request syntax

    svc$describe_queries(
      logGroupName = "string",
      status = "Scheduled"|"Running"|"Complete"|"Failed"|"Cancelled"|"Timeout"|"Unknown",
      maxResults = 123,
      nextToken = "string"
    )
