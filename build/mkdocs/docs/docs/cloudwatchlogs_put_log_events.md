<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudwatchlogs_put_log_events</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Uploads a batch of log events to the specified log stream

### Description

Uploads a batch of log events to the specified log stream.

The sequence token is now ignored in `put_log_events` actions.
`put_log_events` actions are always accepted and never return
`InvalidSequenceTokenException` or `DataAlreadyAcceptedException` even
if the sequence token is not valid. You can use parallel
`put_log_events` actions on the same log stream.

The batch of events must satisfy the following constraints:

-   The maximum batch size is 1,048,576 bytes. This size is calculated
    as the sum of all event messages in UTF-8, plus 26 bytes for each
    log event.

-   None of the log events in the batch can be more than 2 hours in the
    future.

-   None of the log events in the batch can be more than 14 days in the
    past. Also, none of the log events can be from earlier than the
    retention period of the log group.

-   The log events in the batch must be in chronological order by their
    timestamp. The timestamp is the time that the event occurred,
    expressed as the number of milliseconds after
    `⁠Jan 1, 1970 00:00:00 UTC⁠`. (In Amazon Web Services Tools for
    PowerShell and the Amazon Web Services SDK for .NET, the timestamp
    is specified in .NET format: `yyyy-mm-ddThh:mm:ss`. For example,
    `⁠2017-09-15T13:45:30⁠`.)

-   A batch of log events in a single request cannot span more than 24
    hours. Otherwise, the operation fails.

-   The maximum number of log events in a batch is 10,000.

-   The quota of five requests per second per log stream has been
    removed. Instead, `put_log_events` actions are throttled based on a
    per-second per-account quota. You can request an increase to the
    per-second throttling quota by using the Service Quotas service.

If a call to `put_log_events` returns "UnrecognizedClientException" the
most likely cause is a non-valid Amazon Web Services access key ID or
secret key.

### Usage

    cloudwatchlogs_put_log_events(logGroupName, logStreamName, logEvents,
      sequenceToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cloudwatchlogs_put_log_events_:_logGroupName">logGroupName</code></td>
<td><p>[required] The name of the log group.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudwatchlogs_put_log_events_:_logStreamName">logStreamName</code></td>
<td><p>[required] The name of the log stream.</p></td>
</tr>
<tr class="odd">
<td><code
id="cloudwatchlogs_put_log_events_:_logEvents">logEvents</code></td>
<td><p>[required] The log events.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudwatchlogs_put_log_events_:_sequenceToken">sequenceToken</code></td>
<td><p>The sequence token obtained from the response of the previous
<code>put_log_events</code> call.</p>
<p>The <code>sequenceToken</code> parameter is now ignored in
<code>put_log_events</code> actions. <code>put_log_events</code> actions
are now accepted and never return
<code>InvalidSequenceTokenException</code> or
<code>DataAlreadyAcceptedException</code> even if the sequence token is
not valid.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      nextSequenceToken = "string",
      rejectedLogEventsInfo = list(
        tooNewLogEventStartIndex = 123,
        tooOldLogEventEndIndex = 123,
        expiredLogEventEndIndex = 123
      )
    )

### Request syntax

    svc$put_log_events(
      logGroupName = "string",
      logStreamName = "string",
      logEvents = list(
        list(
          timestamp = 123,
          message = "string"
        )
      ),
      sequenceToken = "string"
    )
