<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudwatchlogs_describe_log_streams</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists the log streams for the specified log group

### Description

Lists the log streams for the specified log group. You can list all the
log streams or filter the results by prefix. You can also control how
the results are ordered.

You can specify the log group to search by using either
`logGroupIdentifier` or `logGroupName`. You must include one of these
two parameters, but you can't include both.

This operation has a limit of five transactions per second, after which
transactions are throttled.

If you are using CloudWatch cross-account observability, you can use
this operation in a monitoring account and view data from the linked
source accounts. For more information, see [CloudWatch cross-account
observability](https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-Unified-Cross-Account.html).

### Usage

    cloudwatchlogs_describe_log_streams(logGroupName, logGroupIdentifier,
      logStreamNamePrefix, orderBy, descending, nextToken, limit)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cloudwatchlogs_describe_log_streams_:_logGroupName">logGroupName</code></td>
<td><p>The name of the log group.</p>
<p>You must include either <code>logGroupIdentifier</code> or
<code>logGroupName</code>, but not both.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudwatchlogs_describe_log_streams_:_logGroupIdentifier">logGroupIdentifier</code></td>
<td><p>Specify either the name or ARN of the log group to view. If the
log group is in a source account and you are using a monitoring account,
you must use the log group ARN.</p>
<p>You must include either <code>logGroupIdentifier</code> or
<code>logGroupName</code>, but not both.</p></td>
</tr>
<tr class="odd">
<td><code
id="cloudwatchlogs_describe_log_streams_:_logStreamNamePrefix">logStreamNamePrefix</code></td>
<td><p>The prefix to match.</p>
<p>If <code>orderBy</code> is <code>LastEventTime</code>, you cannot
specify this parameter.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudwatchlogs_describe_log_streams_:_orderBy">orderBy</code></td>
<td><p>If the value is <code>LogStreamName</code>, the results are
ordered by log stream name. If the value is <code>LastEventTime</code>,
the results are ordered by the event time. The default value is
<code>LogStreamName</code>.</p>
<p>If you order the results by event time, you cannot specify the
<code>logStreamNamePrefix</code> parameter.</p>
<p><code>lastEventTimestamp</code> represents the time of the most
recent log event in the log stream in CloudWatch Logs. This number is
expressed as the number of milliseconds after <code
style="white-space: pre;">⁠Jan 1, 1970 00:00:00 UTC⁠</code>.
<code>lastEventTimestamp</code> updates on an eventual consistency
basis. It typically updates in less than an hour from ingestion, but in
rare situations might take longer.</p></td>
</tr>
<tr class="odd">
<td><code
id="cloudwatchlogs_describe_log_streams_:_descending">descending</code></td>
<td><p>If the value is true, results are returned in descending order.
If the value is to false, results are returned in ascending order. The
default value is false.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudwatchlogs_describe_log_streams_:_nextToken">nextToken</code></td>
<td><p>The token for the next set of items to return. (You received this
token from a previous call.)</p></td>
</tr>
<tr class="odd">
<td><code
id="cloudwatchlogs_describe_log_streams_:_limit">limit</code></td>
<td><p>The maximum number of items returned. If you don't specify a
value, the default is up to 50 items.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      logStreams = list(
        list(
          logStreamName = "string",
          creationTime = 123,
          firstEventTimestamp = 123,
          lastEventTimestamp = 123,
          lastIngestionTime = 123,
          uploadSequenceToken = "string",
          arn = "string",
          storedBytes = 123
        )
      ),
      nextToken = "string"
    )

### Request syntax

    svc$describe_log_streams(
      logGroupName = "string",
      logGroupIdentifier = "string",
      logStreamNamePrefix = "string",
      orderBy = "LogStreamName"|"LastEventTime",
      descending = TRUE|FALSE,
      nextToken = "string",
      limit = 123
    )
