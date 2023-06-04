<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>kinesis_delete_stream</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes a Kinesis data stream and all its shards and data

### Description

Deletes a Kinesis data stream and all its shards and data. You must shut
down any applications that are operating on the stream before you delete
the stream. If an application attempts to operate on a deleted stream,
it receives the exception `ResourceNotFoundException`.

When invoking this API, it is recommended you use the `StreamARN` input
parameter rather than the `StreamName` input parameter.

If the stream is in the `ACTIVE` state, you can delete it. After a
`delete_stream` request, the specified stream is in the `DELETING` state
until Kinesis Data Streams completes the deletion.

**Note:** Kinesis Data Streams might continue to accept data read and
write operations, such as `put_record`, `put_records`, and
`get_records`, on a stream in the `DELETING` state until the stream
deletion is complete.

When you delete a stream, any shards in that stream are also deleted,
and any tags are dissociated from the stream.

You can use the `describe_stream_summary` operation to check the state
of the stream, which is returned in `StreamStatus`.

`delete_stream` has a limit of five transactions per second per account.

### Usage

    kinesis_delete_stream(StreamName, EnforceConsumerDeletion, StreamARN)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="kinesis_delete_stream_:_StreamName">StreamName</code></td>
<td><p>The name of the stream to delete.</p></td>
</tr>
<tr class="even">
<td><code
id="kinesis_delete_stream_:_EnforceConsumerDeletion">EnforceConsumerDeletion</code></td>
<td><p>If this parameter is unset (<code>null</code>) or if you set it
to <code>false</code>, and the stream has registered consumers, the call
to <code>delete_stream</code> fails with a
<code>ResourceInUseException</code>.</p></td>
</tr>
<tr class="odd">
<td><code id="kinesis_delete_stream_:_StreamARN">StreamARN</code></td>
<td><p>The ARN of the stream.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_stream(
      StreamName = "string",
      EnforceConsumerDeletion = TRUE|FALSE,
      StreamARN = "string"
    )
