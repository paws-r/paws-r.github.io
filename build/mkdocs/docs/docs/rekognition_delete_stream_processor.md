<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>rekognition_delete_stream_processor</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes the stream processor identified by Name

### Description

Deletes the stream processor identified by `Name`. You assign the value
for `Name` when you create the stream processor with
`create_stream_processor`. You might not be able to use the same name
for a stream processor for a few seconds after calling
`delete_stream_processor`.

### Usage

    rekognition_delete_stream_processor(Name)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="rekognition_delete_stream_processor_:_Name">Name</code></td>
<td><p>[required] The name of the stream processor you want to
delete.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_stream_processor(
      Name = "string"
    )
