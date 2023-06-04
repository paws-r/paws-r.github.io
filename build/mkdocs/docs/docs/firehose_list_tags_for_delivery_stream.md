<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>firehose_list_tags_for_delivery_stream</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists the tags for the specified delivery stream

### Description

Lists the tags for the specified delivery stream. This operation has a
limit of five transactions per second per account.

### Usage

    firehose_list_tags_for_delivery_stream(DeliveryStreamName,
      ExclusiveStartTagKey, Limit)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="firehose_list_tags_for_delivery_stream_:_DeliveryStreamName">DeliveryStreamName</code></td>
<td><p>[required] The name of the delivery stream whose tags you want to
list.</p></td>
</tr>
<tr class="even">
<td><code
id="firehose_list_tags_for_delivery_stream_:_ExclusiveStartTagKey">ExclusiveStartTagKey</code></td>
<td><p>The key to use as the starting point for the list of tags. If you
set this parameter, <code>list_tags_for_delivery_stream</code> gets all
tags that occur after <code>ExclusiveStartTagKey</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="firehose_list_tags_for_delivery_stream_:_Limit">Limit</code></td>
<td><p>The number of tags to return. If this number is less than the
total number of tags associated with the delivery stream,
<code>HasMoreTags</code> is set to <code>true</code> in the response. To
list additional tags, set <code>ExclusiveStartTagKey</code> to the last
key in the response.</p></td>
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

    svc$list_tags_for_delivery_stream(
      DeliveryStreamName = "string",
      ExclusiveStartTagKey = "string",
      Limit = 123
    )
