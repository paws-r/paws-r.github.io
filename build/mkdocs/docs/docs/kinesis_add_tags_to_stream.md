<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>kinesis_add_tags_to_stream</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Adds or updates tags for the specified Kinesis data stream

### Description

Adds or updates tags for the specified Kinesis data stream. You can
assign up to 50 tags to a data stream.

When invoking this API, it is recommended you use the `StreamARN` input
parameter rather than the `StreamName` input parameter.

If tags have already been assigned to the stream, `add_tags_to_stream`
overwrites any existing tags that correspond to the specified tag keys.

`add_tags_to_stream` has a limit of five transactions per second per
account.

### Usage

    kinesis_add_tags_to_stream(StreamName, Tags, StreamARN)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="kinesis_add_tags_to_stream_:_StreamName">StreamName</code></td>
<td><p>The name of the stream.</p></td>
</tr>
<tr class="even">
<td><code id="kinesis_add_tags_to_stream_:_Tags">Tags</code></td>
<td><p>[required] A set of up to 10 key-value pairs to use to create the
tags.</p></td>
</tr>
<tr class="odd">
<td><code
id="kinesis_add_tags_to_stream_:_StreamARN">StreamARN</code></td>
<td><p>The ARN of the stream.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$add_tags_to_stream(
      StreamName = "string",
      Tags = list(
        "string"
      ),
      StreamARN = "string"
    )
