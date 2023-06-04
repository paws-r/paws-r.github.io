<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ivs_stop_stream</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Disconnects the incoming RTMPS stream for the specified channel

### Description

Disconnects the incoming RTMPS stream for the specified channel. Can be
used in conjunction with `delete_stream_key` to prevent further
streaming to a channel.

Many streaming client-software libraries automatically reconnect a
dropped RTMPS session, so to stop the stream permanently, you may want
to first revoke the `streamKey` attached to the channel.

### Usage

    ivs_stop_stream(channelArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="ivs_stop_stream_:_channelArn">channelArn</code></td>
<td><p>[required] ARN of the channel for which the stream is to be
stopped.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$stop_stream(
      channelArn = "string"
    )
