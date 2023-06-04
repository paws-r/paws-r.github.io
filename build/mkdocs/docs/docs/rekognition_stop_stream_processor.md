<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>rekognition_stop_stream_processor</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Stops a running stream processor that was created by CreateStreamProcessor

### Description

Stops a running stream processor that was created by
`create_stream_processor`.

### Usage

    rekognition_stop_stream_processor(Name)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="rekognition_stop_stream_processor_:_Name">Name</code></td>
<td><p>[required] The name of a stream processor created by
<code>create_stream_processor</code>.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$stop_stream_processor(
      Name = "string"
    )
