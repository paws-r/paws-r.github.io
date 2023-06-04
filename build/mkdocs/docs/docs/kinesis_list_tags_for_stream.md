<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>kinesis_list_tags_for_stream</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists the tags for the specified Kinesis data stream

### Description

Lists the tags for the specified Kinesis data stream. This operation has
a limit of five transactions per second per account.

When invoking this API, it is recommended you use the `StreamARN` input
parameter rather than the `StreamName` input parameter.

### Usage

    kinesis_list_tags_for_stream(StreamName, ExclusiveStartTagKey, Limit,
      StreamARN)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="kinesis_list_tags_for_stream_:_StreamName">StreamName</code></td>
<td><p>The name of the stream.</p></td>
</tr>
<tr class="even">
<td><code
id="kinesis_list_tags_for_stream_:_ExclusiveStartTagKey">ExclusiveStartTagKey</code></td>
<td><p>The key to use as the starting point for the list of tags. If
this parameter is set, <code>list_tags_for_stream</code> gets all tags
that occur after <code>ExclusiveStartTagKey</code>.</p></td>
</tr>
<tr class="odd">
<td><code id="kinesis_list_tags_for_stream_:_Limit">Limit</code></td>
<td><p>The number of tags to return. If this number is less than the
total number of tags associated with the stream,
<code>HasMoreTags</code> is set to <code>true</code>. To list additional
tags, set <code>ExclusiveStartTagKey</code> to the last key in the
response.</p></td>
</tr>
<tr class="even">
<td><code
id="kinesis_list_tags_for_stream_:_StreamARN">StreamARN</code></td>
<td><p>The ARN of the stream.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      ),
      HasMoreTags = TRUE|FALSE
    )

### Request syntax

    svc$list_tags_for_stream(
      StreamName = "string",
      ExclusiveStartTagKey = "string",
      Limit = 123,
      StreamARN = "string"
    )
