<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ivs_get_stream_key</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets stream-key information for a specified ARN

### Description

Gets stream-key information for a specified ARN.

### Usage

    ivs_get_stream_key(arn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="ivs_get_stream_key_:_arn">arn</code></td>
<td><p>[required] ARN for the stream key to be retrieved.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      streamKey = list(
        arn = "string",
        channelArn = "string",
        tags = list(
          "string"
        ),
        value = "string"
      )
    )

### Request syntax

    svc$get_stream_key(
      arn = "string"
    )
