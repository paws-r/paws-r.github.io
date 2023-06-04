<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>firehose_delete_delivery_stream</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes a delivery stream and its data

### Description

Deletes a delivery stream and its data.

To check the state of a delivery stream, use `describe_delivery_stream`.
You can delete a delivery stream only if it is in one of the following
states: `ACTIVE`, `DELETING`, `CREATING_FAILED`, or `DELETING_FAILED`.
You can't delete a delivery stream that is in the `CREATING` state.
While the deletion request is in process, the delivery stream is in the
`DELETING` state.

While the delivery stream is in the `DELETING` state, the service might
continue to accept records, but it doesn't make any guarantees with
respect to delivering the data. Therefore, as a best practice, first
stop any applications that are sending records before you delete a
delivery stream.

### Usage

    firehose_delete_delivery_stream(DeliveryStreamName, AllowForceDelete)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="firehose_delete_delivery_stream_:_DeliveryStreamName">DeliveryStreamName</code></td>
<td><p>[required] The name of the delivery stream.</p></td>
</tr>
<tr class="even">
<td><code
id="firehose_delete_delivery_stream_:_AllowForceDelete">AllowForceDelete</code></td>
<td><p>Set this to true if you want to delete the delivery stream even
if Kinesis Data Firehose is unable to retire the grant for the CMK.
Kinesis Data Firehose might be unable to retire the grant due to a
customer error, such as when the CMK or the grant are in an invalid
state. If you force deletion, you can then use the <a
href="https://docs.aws.amazon.com/kms/latest/APIReference/API_RevokeGrant.html">RevokeGrant</a>
operation to revoke the grant you gave to Kinesis Data Firehose. If a
failure to retire the grant happens due to an Amazon Web Services KMS
issue, Kinesis Data Firehose keeps retrying the delete operation.</p>
<p>The default value is false.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_delivery_stream(
      DeliveryStreamName = "string",
      AllowForceDelete = TRUE|FALSE
    )
