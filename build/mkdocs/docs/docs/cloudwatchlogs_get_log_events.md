<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudwatchlogs_get_log_events</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists log events from the specified log stream

### Description

Lists log events from the specified log stream. You can list all of the
log events or filter using a time range.

By default, this operation returns as many log events as can fit in a
response size of 1MB (up to 10,000 log events). You can get additional
log events by specifying one of the tokens in a subsequent call. This
operation can return empty results while there are more log events
available through the token.

If you are using CloudWatch cross-account observability, you can use
this operation in a monitoring account and view data from the linked
source accounts. For more information, see [CloudWatch cross-account
observability](https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-Unified-Cross-Account.html).

You can specify the log group to search by using either
`logGroupIdentifier` or `logGroupName`. You must include one of these
two parameters, but you can't include both.

### Usage

    cloudwatchlogs_get_log_events(logGroupName, logGroupIdentifier,
      logStreamName, startTime, endTime, nextToken, limit, startFromHead,
      unmask)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cloudwatchlogs_get_log_events_:_logGroupName">logGroupName</code></td>
<td><p>The name of the log group.</p>
<p>You must include either <code>logGroupIdentifier</code> or
<code>logGroupName</code>, but not both.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudwatchlogs_get_log_events_:_logGroupIdentifier">logGroupIdentifier</code></td>
<td><p>Specify either the name or ARN of the log group to view events
from. If the log group is in a source account and you are using a
monitoring account, you must use the log group ARN.</p>
<p>You must include either <code>logGroupIdentifier</code> or
<code>logGroupName</code>, but not both.</p></td>
</tr>
<tr class="odd">
<td><code
id="cloudwatchlogs_get_log_events_:_logStreamName">logStreamName</code></td>
<td><p>[required] The name of the log stream.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudwatchlogs_get_log_events_:_startTime">startTime</code></td>
<td><p>The start of the time range, expressed as the number of
milliseconds after <code
style="white-space: pre;">⁠Jan 1, 1970 00:00:00 UTC⁠</code>. Events with a
timestamp equal to this time or later than this time are included.
Events with a timestamp earlier than this time are not
included.</p></td>
</tr>
<tr class="odd">
<td><code
id="cloudwatchlogs_get_log_events_:_endTime">endTime</code></td>
<td><p>The end of the time range, expressed as the number of
milliseconds after <code
style="white-space: pre;">⁠Jan 1, 1970 00:00:00 UTC⁠</code>. Events with a
timestamp equal to or later than this time are not included.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudwatchlogs_get_log_events_:_nextToken">nextToken</code></td>
<td><p>The token for the next set of items to return. (You received this
token from a previous call.)</p></td>
</tr>
<tr class="odd">
<td><code id="cloudwatchlogs_get_log_events_:_limit">limit</code></td>
<td><p>The maximum number of log events returned. If you don't specify a
limit, the default is as many log events as can fit in a response size
of 1 MB (up to 10,000 log events).</p></td>
</tr>
<tr class="even">
<td><code
id="cloudwatchlogs_get_log_events_:_startFromHead">startFromHead</code></td>
<td><p>If the value is true, the earliest log events are returned first.
If the value is false, the latest log events are returned first. The
default value is false.</p>
<p>If you are using a previous <code>nextForwardToken</code> value as
the <code>nextToken</code> in this operation, you must specify
<code>true</code> for <code>startFromHead</code>.</p></td>
</tr>
<tr class="odd">
<td><code id="cloudwatchlogs_get_log_events_:_unmask">unmask</code></td>
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
          timestamp = 123,
          message = "string",
          ingestionTime = 123
        )
      ),
      nextForwardToken = "string",
      nextBackwardToken = "string"
    )

### Request syntax

    svc$get_log_events(
      logGroupName = "string",
      logGroupIdentifier = "string",
      logStreamName = "string",
      startTime = 123,
      endTime = 123,
      nextToken = "string",
      limit = 123,
      startFromHead = TRUE|FALSE,
      unmask = TRUE|FALSE
    )
