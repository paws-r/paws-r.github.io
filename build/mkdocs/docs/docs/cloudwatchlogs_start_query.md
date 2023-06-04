<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudwatchlogs_start_query</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Schedules a query of a log group using CloudWatch Logs Insights

### Description

Schedules a query of a log group using CloudWatch Logs Insights. You
specify the log group and time range to query and the query string to
use.

For more information, see [CloudWatch Logs Insights Query
Syntax](https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/CWL_QuerySyntax.html).

Queries time out after 15 minutes of runtime. If your queries are timing
out, reduce the time range being searched or partition your query into a
number of queries.

If you are using CloudWatch cross-account observability, you can use
this operation in a monitoring account to start a query in a linked
source account. For more information, see [CloudWatch cross-account
observability](https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-Unified-Cross-Account.html).
For a cross-account `start_query` operation, the query definition must
be defined in the monitoring account.

You can have up to 20 concurrent CloudWatch Logs insights queries,
including queries that have been added to dashboards.

### Usage

    cloudwatchlogs_start_query(logGroupName, logGroupNames,
      logGroupIdentifiers, startTime, endTime, queryString, limit)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cloudwatchlogs_start_query_:_logGroupName">logGroupName</code></td>
<td><p>The log group on which to perform the query.</p>
<p>A <code>start_query</code> operation must include exactly one of the
following parameters: <code>logGroupName</code>,
<code>logGroupNames</code> or <code>logGroupIdentifiers</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudwatchlogs_start_query_:_logGroupNames">logGroupNames</code></td>
<td><p>The list of log groups to be queried. You can include up to 50
log groups.</p>
<p>A <code>start_query</code> operation must include exactly one of the
following parameters: <code>logGroupName</code>,
<code>logGroupNames</code> or <code>logGroupIdentifiers</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="cloudwatchlogs_start_query_:_logGroupIdentifiers">logGroupIdentifiers</code></td>
<td><p>The list of log groups to query. You can include up to 50 log
groups.</p>
<p>You can specify them by the log group name or ARN. If a log group
that you're querying is in a source account and you're using a
monitoring account, you must specify the ARN of the log group here. The
query definition must also be defined in the monitoring account.</p>
<p>If you specify an ARN, the ARN can't end with an asterisk (*).</p>
<p>A <code>start_query</code> operation must include exactly one of the
following parameters: <code>logGroupName</code>,
<code>logGroupNames</code> or <code>logGroupIdentifiers</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudwatchlogs_start_query_:_startTime">startTime</code></td>
<td><p>[required] The beginning of the time range to query. The range is
inclusive, so the specified start time is included in the query.
Specified as epoch time, the number of seconds since <code
style="white-space: pre;">⁠January 1, 1970, 00:00:00 UTC⁠</code>.</p></td>
</tr>
<tr class="odd">
<td><code id="cloudwatchlogs_start_query_:_endTime">endTime</code></td>
<td><p>[required] The end of the time range to query. The range is
inclusive, so the specified end time is included in the query. Specified
as epoch time, the number of seconds since <code
style="white-space: pre;">⁠January 1, 1970, 00:00:00 UTC⁠</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudwatchlogs_start_query_:_queryString">queryString</code></td>
<td><p>[required] The query string to use. For more information, see <a
href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/CWL_QuerySyntax.html">CloudWatch
Logs Insights Query Syntax</a>.</p></td>
</tr>
<tr class="odd">
<td><code id="cloudwatchlogs_start_query_:_limit">limit</code></td>
<td><p>The maximum number of log events to return in the query. If the
query string uses the <code>fields</code> command, only the specified
fields and their values are returned. The default is 1000.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      queryId = "string"
    )

### Request syntax

    svc$start_query(
      logGroupName = "string",
      logGroupNames = list(
        "string"
      ),
      logGroupIdentifiers = list(
        "string"
      ),
      startTime = 123,
      endTime = 123,
      queryString = "string",
      limit = 123
    )
