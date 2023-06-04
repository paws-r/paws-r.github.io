<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>firehose_list_delivery_streams</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists your delivery streams in alphabetical order of their names

### Description

Lists your delivery streams in alphabetical order of their names.

The number of delivery streams might be too large to return using a
single call to `list_delivery_streams`. You can limit the number of
delivery streams returned, using the `Limit` parameter. To determine
whether there are more delivery streams to list, check the value of
`HasMoreDeliveryStreams` in the output. If there are more delivery
streams to list, you can request them by calling this operation again
and setting the `ExclusiveStartDeliveryStreamName` parameter to the name
of the last delivery stream returned in the last call.

### Usage

    firehose_list_delivery_streams(Limit, DeliveryStreamType,
      ExclusiveStartDeliveryStreamName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="firehose_list_delivery_streams_:_Limit">Limit</code></td>
<td><p>The maximum number of delivery streams to list. The default value
is 10.</p></td>
</tr>
<tr class="even">
<td><code
id="firehose_list_delivery_streams_:_DeliveryStreamType">DeliveryStreamType</code></td>
<td><p>The delivery stream type. This can be one of the following
values:</p>
<ul>
<li><p><code>DirectPut</code>: Provider applications access the delivery
stream directly.</p></li>
<li><p><code>KinesisStreamAsSource</code>: The delivery stream uses a
Kinesis data stream as a source.</p></li>
</ul>
<p>This parameter is optional. If this parameter is omitted, delivery
streams of all types are returned.</p></td>
</tr>
<tr class="odd">
<td><code
id="firehose_list_delivery_streams_:_ExclusiveStartDeliveryStreamName">ExclusiveStartDeliveryStreamName</code></td>
<td><p>The list of delivery streams returned by this call to
<code>list_delivery_streams</code> will start with the delivery stream
whose name comes alphabetically immediately after the name you specify
in <code>ExclusiveStartDeliveryStreamName</code>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      DeliveryStreamNames = list(
        "string"
      ),
      HasMoreDeliveryStreams = TRUE|FALSE
    )

### Request syntax

    svc$list_delivery_streams(
      Limit = 123,
      DeliveryStreamType = "DirectPut"|"KinesisStreamAsSource",
      ExclusiveStartDeliveryStreamName = "string"
    )
