<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>kinesis_update_stream_mode</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates the capacity mode of the data stream

### Description

Updates the capacity mode of the data stream. Currently, in Kinesis Data
Streams, you can choose between an **on-demand** capacity mode and a
**provisioned** capacity mode for your data stream.

### Usage

    kinesis_update_stream_mode(StreamARN, StreamModeDetails)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="kinesis_update_stream_mode_:_StreamARN">StreamARN</code></td>
<td><p>[required] Specifies the ARN of the data stream whose capacity
mode you want to update.</p></td>
</tr>
<tr class="even">
<td><code
id="kinesis_update_stream_mode_:_StreamModeDetails">StreamModeDetails</code></td>
<td><p>[required] Specifies the capacity mode to which you want to set
your data stream. Currently, in Kinesis Data Streams, you can choose
between an <strong>on-demand</strong> capacity mode and a
<strong>provisioned</strong> capacity mode for your data
streams.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$update_stream_mode(
      StreamARN = "string",
      StreamModeDetails = list(
        StreamMode = "PROVISIONED"|"ON_DEMAND"
      )
    )
