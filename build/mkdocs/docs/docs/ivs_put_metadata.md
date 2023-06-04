<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ivs_put_metadata</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Inserts metadata into the active stream of the specified channel

### Description

Inserts metadata into the active stream of the specified channel. At
most 5 requests per second per channel are allowed, each with a maximum
1 KB payload. (If 5 TPS is not sufficient for your needs, we recommend
batching your data into a single PutMetadata call.) At most 155 requests
per second per account are allowed. Also see [Embedding Metadata within
a Video
Stream](https://docs.aws.amazon.com/ivs/latest/userguide/metadata.html)
in the *Amazon IVS User Guide*.

### Usage

    ivs_put_metadata(channelArn, metadata)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="ivs_put_metadata_:_channelArn">channelArn</code></td>
<td><p>[required] ARN of the channel into which metadata is inserted.
This channel must have an active stream.</p></td>
</tr>
<tr class="even">
<td><code id="ivs_put_metadata_:_metadata">metadata</code></td>
<td><p>[required] Metadata to insert into the stream. Maximum: 1 KB per
request.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$put_metadata(
      channelArn = "string",
      metadata = "string"
    )
