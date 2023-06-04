<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ivs_delete_stream_key</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes the stream key for the specified ARN, so it can no longer be used to stream

### Description

Deletes the stream key for the specified ARN, so it can no longer be
used to stream.

### Usage

    ivs_delete_stream_key(arn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="ivs_delete_stream_key_:_arn">arn</code></td>
<td><p>[required] ARN of the stream key to be deleted.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_stream_key(
      arn = "string"
    )
