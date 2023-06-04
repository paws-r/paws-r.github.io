<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>firehose_stop_delivery_stream_encryption</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Disables server-side encryption (SSE) for the delivery stream

### Description

Disables server-side encryption (SSE) for the delivery stream.

This operation is asynchronous. It returns immediately. When you invoke
it, Kinesis Data Firehose first sets the encryption status of the stream
to `DISABLING`, and then to `DISABLED`. You can continue to read and
write data to your stream while its status is `DISABLING`. It can take
up to 5 seconds after the encryption status changes to `DISABLED` before
all records written to the delivery stream are no longer subject to
encryption. To find out whether a record or a batch of records was
encrypted, check the response elements PutRecordOutput$Encrypted and
PutRecordBatchOutput$Encrypted, respectively.

To check the encryption state of a delivery stream, use
`describe_delivery_stream`.

If SSE is enabled using a customer managed CMK and then you invoke
`stop_delivery_stream_encryption`, Kinesis Data Firehose schedules the
related KMS grant for retirement and then retires it after it ensures
that it is finished delivering records to the destination.

The `start_delivery_stream_encryption` and
`stop_delivery_stream_encryption` operations have a combined limit of 25
calls per delivery stream per 24 hours. For example, you reach the limit
if you call `start_delivery_stream_encryption` 13 times and
`stop_delivery_stream_encryption` 12 times for the same delivery stream
in a 24-hour period.

### Usage

    firehose_stop_delivery_stream_encryption(DeliveryStreamName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="firehose_stop_delivery_stream_encryption_:_DeliveryStreamName">DeliveryStreamName</code></td>
<td><p>[required] The name of the delivery stream for which you want to
disable server-side encryption (SSE).</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$stop_delivery_stream_encryption(
      DeliveryStreamName = "string"
    )
