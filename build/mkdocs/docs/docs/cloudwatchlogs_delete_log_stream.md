<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudwatchlogs_delete_log_stream</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes the specified log stream and permanently deletes all the archived log events associated with the log stream

### Description

Deletes the specified log stream and permanently deletes all the
archived log events associated with the log stream.

### Usage

    cloudwatchlogs_delete_log_stream(logGroupName, logStreamName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cloudwatchlogs_delete_log_stream_:_logGroupName">logGroupName</code></td>
<td><p>[required] The name of the log group.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudwatchlogs_delete_log_stream_:_logStreamName">logStreamName</code></td>
<td><p>[required] The name of the log stream.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_log_stream(
      logGroupName = "string",
      logStreamName = "string"
    )
