<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>firehose_start_delivery_stream_encryption</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Enables server-side encryption (SSE) for the delivery stream

### Description

Enables server-side encryption (SSE) for the delivery stream.

This operation is asynchronous. It returns immediately. When you invoke
it, Kinesis Data Firehose first sets the encryption status of the stream
to `ENABLING`, and then to `ENABLED`. The encryption status of a
delivery stream is the `Status` property in
DeliveryStreamEncryptionConfiguration. If the operation fails, the
encryption status changes to `ENABLING_FAILED`. You can continue to read
and write data to your delivery stream while the encryption status is
`ENABLING`, but the data is not encrypted. It can take up to 5 seconds
after the encryption status changes to `ENABLED` before all records
written to the delivery stream are encrypted. To find out whether a
record or a batch of records was encrypted, check the response elements
PutRecordOutput$Encrypted and PutRecordBatchOutput$Encrypted,
respectively.

To check the encryption status of a delivery stream, use
`describe_delivery_stream`.

Even if encryption is currently enabled for a delivery stream, you can
still invoke this operation on it to change the ARN of the CMK or both
its type and ARN. If you invoke this method to change the CMK, and the
old CMK is of type `CUSTOMER_MANAGED_CMK`, Kinesis Data Firehose
schedules the grant it had on the old CMK for retirement. If the new CMK
is of type `CUSTOMER_MANAGED_CMK`, Kinesis Data Firehose creates a grant
that enables it to use the new CMK to encrypt and decrypt data and to
manage the grant.

If a delivery stream already has encryption enabled and then you invoke
this operation to change the ARN of the CMK or both its type and ARN and
you get `ENABLING_FAILED`, this only means that the attempt to change
the CMK failed. In this case, encryption remains enabled with the old
CMK.

If the encryption status of your delivery stream is `ENABLING_FAILED`,
you can invoke this operation again with a valid CMK. The CMK must be
enabled and the key policy mustn't explicitly deny the permission for
Kinesis Data Firehose to invoke KMS encrypt and decrypt operations.

You can enable SSE for a delivery stream only if it's a delivery stream
that uses `DirectPut` as its source.

The `start_delivery_stream_encryption` and
`stop_delivery_stream_encryption` operations have a combined limit of 25
calls per delivery stream per 24 hours. For example, you reach the limit
if you call `start_delivery_stream_encryption` 13 times and
`stop_delivery_stream_encryption` 12 times for the same delivery stream
in a 24-hour period.

### Usage

    firehose_start_delivery_stream_encryption(DeliveryStreamName,
      DeliveryStreamEncryptionConfigurationInput)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="firehose_start_delivery_stream_encryption_:_DeliveryStreamName">DeliveryStreamName</code></td>
<td><p>[required] The name of the delivery stream for which you want to
enable server-side encryption (SSE).</p></td>
</tr>
<tr class="even">
<td><code
id="firehose_start_delivery_stream_encryption_:_DeliveryStreamEncryptionConfigurationInput">DeliveryStreamEncryptionConfigurationInput</code></td>
<td><p>Used to specify the type and Amazon Resource Name (ARN) of the
KMS key needed for Server-Side Encryption (SSE).</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$start_delivery_stream_encryption(
      DeliveryStreamName = "string",
      DeliveryStreamEncryptionConfigurationInput = list(
        KeyARN = "string",
        KeyType = "AWS_OWNED_CMK"|"CUSTOMER_MANAGED_CMK"
      )
    )
