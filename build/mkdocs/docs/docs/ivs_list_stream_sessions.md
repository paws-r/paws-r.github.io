<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ivs_list_stream_sessions</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets a summary of current and previous streams for a specified channel in your account, in the AWS region where the API request is processed

### Description

Gets a summary of current and previous streams for a specified channel
in your account, in the AWS region where the API request is processed.

### Usage

    ivs_list_stream_sessions(channelArn, maxResults, nextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ivs_list_stream_sessions_:_channelArn">channelArn</code></td>
<td><p>[required] Channel ARN used to filter the list.</p></td>
</tr>
<tr class="even">
<td><code
id="ivs_list_stream_sessions_:_maxResults">maxResults</code></td>
<td><p>Maximum number of streams to return. Default: 100.</p></td>
</tr>
<tr class="odd">
<td><code
id="ivs_list_stream_sessions_:_nextToken">nextToken</code></td>
<td><p>The first stream to retrieve. This is used for pagination; see
the <code>nextToken</code> response field.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      nextToken = "string",
      streamSessions = list(
        list(
          endTime = as.POSIXct(
            "2015-01-01"
          ),
          hasErrorEvent = TRUE|FALSE,
          startTime = as.POSIXct(
            "2015-01-01"
          ),
          streamId = "string"
        )
      )
    )

### Request syntax

    svc$list_stream_sessions(
      channelArn = "string",
      maxResults = 123,
      nextToken = "string"
    )
