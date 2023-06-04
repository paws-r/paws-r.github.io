<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudwatchlogs_create_log_stream</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a log stream for the specified log group

### Description

Creates a log stream for the specified log group. A log stream is a
sequence of log events that originate from a single source, such as an
application instance or a resource that is being monitored.

There is no limit on the number of log streams that you can create for a
log group. There is a limit of 50 TPS on `create_log_stream` operations,
after which transactions are throttled.

You must use the following guidelines when naming a log stream:

-   Log stream names must be unique within the log group.

-   Log stream names can be between 1 and 512 characters long.

-   Don't use ':' (colon) or '\*' (asterisk) characters.

### Usage

    cloudwatchlogs_create_log_stream(logGroupName, logStreamName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cloudwatchlogs_create_log_stream_:_logGroupName">logGroupName</code></td>
<td><p>[required] The name of the log group.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudwatchlogs_create_log_stream_:_logStreamName">logStreamName</code></td>
<td><p>[required] The name of the log stream.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$create_log_stream(
      logGroupName = "string",
      logStreamName = "string"
    )
