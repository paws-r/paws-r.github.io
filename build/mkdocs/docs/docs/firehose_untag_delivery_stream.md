<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>firehose_untag_delivery_stream</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Removes tags from the specified delivery stream

### Description

Removes tags from the specified delivery stream. Removed tags are
deleted, and you can't recover them after this operation successfully
completes.

If you specify a tag that doesn't exist, the operation ignores it.

This operation has a limit of five transactions per second per account.

### Usage

    firehose_untag_delivery_stream(DeliveryStreamName, TagKeys)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="firehose_untag_delivery_stream_:_DeliveryStreamName">DeliveryStreamName</code></td>
<td><p>[required] The name of the delivery stream.</p></td>
</tr>
<tr class="even">
<td><code
id="firehose_untag_delivery_stream_:_TagKeys">TagKeys</code></td>
<td><p>[required] A list of tag keys. Each corresponding tag is removed
from the delivery stream.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$untag_delivery_stream(
      DeliveryStreamName = "string",
      TagKeys = list(
        "string"
      )
    )
