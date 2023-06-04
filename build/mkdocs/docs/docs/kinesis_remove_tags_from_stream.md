<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>kinesis_remove_tags_from_stream</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Removes tags from the specified Kinesis data stream

### Description

Removes tags from the specified Kinesis data stream. Removed tags are
deleted and cannot be recovered after this operation successfully
completes.

When invoking this API, it is recommended you use the `StreamARN` input
parameter rather than the `StreamName` input parameter.

If you specify a tag that does not exist, it is ignored.

`remove_tags_from_stream` has a limit of five transactions per second
per account.

### Usage

    kinesis_remove_tags_from_stream(StreamName, TagKeys, StreamARN)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="kinesis_remove_tags_from_stream_:_StreamName">StreamName</code></td>
<td><p>The name of the stream.</p></td>
</tr>
<tr class="even">
<td><code
id="kinesis_remove_tags_from_stream_:_TagKeys">TagKeys</code></td>
<td><p>[required] A list of tag keys. Each corresponding tag is removed
from the stream.</p></td>
</tr>
<tr class="odd">
<td><code
id="kinesis_remove_tags_from_stream_:_StreamARN">StreamARN</code></td>
<td><p>The ARN of the stream.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$remove_tags_from_stream(
      StreamName = "string",
      TagKeys = list(
        "string"
      ),
      StreamARN = "string"
    )
