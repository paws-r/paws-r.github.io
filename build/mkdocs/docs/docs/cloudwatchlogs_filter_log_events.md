<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudwatchlogs_filter_log_events</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists log events from the specified log group

### Description

Lists log events from the specified log group. You can list all the log
events or filter the results using a filter pattern, a time range, and
the name of the log stream.

You must have the `⁠logs;FilterLogEvents⁠` permission to perform this
operation.

You can specify the log group to search by using either
`logGroupIdentifier` or `logGroupName`. You must include one of these
two parameters, but you can't include both.

By default, this operation returns as many log events as can fit in 1 MB
(up to 10,000 log events) or all the events found within the specified
time range. If the results include a token, that means there are more
log events available. You can get additional results by specifying the
token in a subsequent call. This operation can return empty results
while there are more log events available through the token.

The returned log events are sorted by event timestamp, the timestamp
when the event was ingested by CloudWatch Logs, and the ID of the
`put_log_events` request.

If you are using CloudWatch cross-account observability, you can use
this operation in a monitoring account and view data from the linked
source accounts. For more information, see [CloudWatch cross-account
observability](https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-Unified-Cross-Account.html).

### Usage

    cloudwatchlogs_filter_log_events(logGroupName, logGroupIdentifier,
      logStreamNames, logStreamNamePrefix, startTime, endTime, filterPattern,
      nextToken, limit, interleaved, unmask)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cloudwatchlogs_filter_log_events_:_logGroupName">logGroupName</code></td>
<td><p>The name of the log group to search.</p>
<p>You must include either <code>logGroupIdentifier</code> or
<code>logGroupName</code>, but not both.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudwatchlogs_filter_log_events_:_logGroupIdentifier">logGroupIdentifier</code></td>
<td><p>Specify either the name or ARN of the log group to view log
events from. If the log group is in a source account and you are using a
monitoring account, you must use the log group ARN.</p>
<p>You must include either <code>logGroupIdentifier</code> or
<code>logGroupName</code>, but not both.</p></td>
</tr>
<tr class="odd">
<td><code
id="cloudwatchlogs_filter_log_events_:_logStreamNames">logStreamNames</code></td>
<td><p>Filters the results to only logs from the log streams in this
list.</p>
<p>If you specify a value for both <code>logStreamNamePrefix</code> and
<code>logStreamNames</code>, the action returns an
<code>InvalidParameterException</code> error.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudwatchlogs_filter_log_events_:_logStreamNamePrefix">logStreamNamePrefix</code></td>
<td><p>Filters the results to include only events from log streams that
have names starting with this prefix.</p>
<p>If you specify a value for both <code>logStreamNamePrefix</code> and
<code>logStreamNames</code>, but the value for
<code>logStreamNamePrefix</code> does not match any log stream names
specified in <code>logStreamNames</code>, the action returns an
<code>InvalidParameterException</code> error.</p></td>
</tr>
<tr class="odd">
<td><code
id="cloudwatchlogs_filter_log_events_:_startTime">startTime</code></td>
<td><p>The start of the time range, expressed as the number of
milliseconds after <code
style="white-space: pre;">⁠Jan 1, 1970 00:00:00 UTC⁠</code>. Events with a
timestamp before this time are not returned.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudwatchlogs_filter_log_events_:_endTime">endTime</code></td>
<td><p>The end of the time range, expressed as the number of
milliseconds after <code
style="white-space: pre;">⁠Jan 1, 1970 00:00:00 UTC⁠</code>. Events with a
timestamp later than this time are not returned.</p></td>
</tr>
<tr class="odd">
<td><code
id="cloudwatchlogs_filter_log_events_:_filterPattern">filterPattern</code></td>
<td><p>The filter pattern to use. For more information, see <a
href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/FilterAndPatternSyntax.html">Filter
and Pattern Syntax</a>.</p>
<p>If not provided, all the events are matched.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudwatchlogs_filter_log_events_:_nextToken">nextToken</code></td>
<td><p>The token for the next set of events to return. (You received
this token from a previous call.)</p></td>
</tr>
<tr class="odd">
<td><code
id="cloudwatchlogs_filter_log_events_:_limit">limit</code></td>
<td><p>The maximum number of events to return. The default is 10,000
events.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudwatchlogs_filter_log_events_:_interleaved">interleaved</code></td>
<td><p>If the value is true, the operation attempts to provide responses
that contain events from multiple log streams within the log group,
interleaved in a single response. If the value is false, all the matched
log events in the first log stream are searched first, then those in the
next log stream, and so on.</p>
<p><strong>Important</strong> As of June 17, 2019, this parameter is
ignored and the value is assumed to be true. The response from this
operation always interleaves events from multiple log streams within a
log group.</p></td>
</tr>
<tr class="odd">
<td><code
id="cloudwatchlogs_filter_log_events_:_unmask">unmask</code></td>
<td><p>Specify <code>true</code> to display the log event fields with
all sensitive data unmasked and visible. The default is
<code>false</code>.</p>
<p>To use this operation with this parameter, you must be signed into an
account with the <code>logs:Unmask</code> permission.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      events = list(
        list(
          logStreamName = "string",
          timestamp = 123,
          message = "string",
          ingestionTime = 123,
          eventId = "string"
        )
      ),
      searchedLogStreams = list(
        list(
          logStreamName = "string",
          searchedCompletely = TRUE|FALSE
        )
      ),
      nextToken = "string"
    )

### Request syntax

    svc$filter_log_events(
      logGroupName = "string",
      logGroupIdentifier = "string",
      logStreamNames = list(
        "string"
      ),
      logStreamNamePrefix = "string",
      startTime = 123,
      endTime = 123,
      filterPattern = "string",
      nextToken = "string",
      limit = 123,
      interleaved = TRUE|FALSE,
      unmask = TRUE|FALSE
    )
