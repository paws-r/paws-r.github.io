<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ivs_get_stream</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets information about the active (live) stream on a specified channel

### Description

Gets information about the active (live) stream on a specified channel.

### Usage

    ivs_get_stream(channelArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="ivs_get_stream_:_channelArn">channelArn</code></td>
<td><p>[required] Channel ARN for stream to be accessed.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      stream = list(
        channelArn = "string",
        health = "HEALTHY"|"STARVING"|"UNKNOWN",
        playbackUrl = "string",
        startTime = as.POSIXct(
          "2015-01-01"
        ),
        state = "LIVE"|"OFFLINE",
        streamId = "string",
        viewerCount = 123
      )
    )

### Request syntax

    svc$get_stream(
      channelArn = "string"
    )
