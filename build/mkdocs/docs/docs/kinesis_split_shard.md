<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>kinesis_split_shard</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Splits a shard into two new shards in the Kinesis data stream, to increase the stream's capacity to ingest and transport data

### Description

Splits a shard into two new shards in the Kinesis data stream, to
increase the stream's capacity to ingest and transport data.
`split_shard` is called when there is a need to increase the overall
capacity of a stream because of an expected increase in the volume of
data records being ingested. This API is only supported for the data
streams with the provisioned capacity mode.

When invoking this API, it is recommended you use the `StreamARN` input
parameter rather than the `StreamName` input parameter.

You can also use `split_shard` when a shard appears to be approaching
its maximum utilization; for example, the producers sending data into
the specific shard are suddenly sending more than previously
anticipated. You can also call `split_shard` to increase stream
capacity, so that more Kinesis Data Streams applications can
simultaneously read data from the stream for real-time processing.

You must specify the shard to be split and the new hash key, which is
the position in the shard where the shard gets split in two. In many
cases, the new hash key might be the average of the beginning and ending
hash key, but it can be any hash key value in the range being mapped
into the shard. For more information, see [Split a
Shard](https://docs.aws.amazon.com/streams/latest/dev/kinesis-using-sdk-java-resharding-split.html)
in the *Amazon Kinesis Data Streams Developer Guide*.

You can use `describe_stream_summary` and the `list_shards` APIs to
determine the shard ID and hash key values for the `ShardToSplit` and
`NewStartingHashKey` parameters that are specified in the `split_shard`
request.

`split_shard` is an asynchronous operation. Upon receiving a
`split_shard` request, Kinesis Data Streams immediately returns a
response and sets the stream status to `UPDATING`. After the operation
is completed, Kinesis Data Streams sets the stream status to `ACTIVE`.
Read and write operations continue to work while the stream is in the
`UPDATING` state.

You can use `describe_stream_summary` to check the status of the stream,
which is returned in `StreamStatus`. If the stream is in the `ACTIVE`
state, you can call `split_shard`.

If the specified stream does not exist, `describe_stream_summary`
returns a `ResourceNotFoundException`. If you try to create more shards
than are authorized for your account, you receive a
`LimitExceededException`.

For the default shard limit for an Amazon Web Services account, see
[Kinesis Data Streams
Limits](https://docs.aws.amazon.com/streams/latest/dev/service-sizes-and-limits.html)
in the *Amazon Kinesis Data Streams Developer Guide*. To increase this
limit, [contact Amazon Web Services
Support](https://docs.aws.amazon.com/general/latest/gr/aws_service_limits.html).

If you try to operate on too many streams simultaneously using
`create_stream`, `delete_stream`, `merge_shards`, and/or `split_shard`,
you receive a `LimitExceededException`.

`split_shard` has a limit of five transactions per second per account.

### Usage

    kinesis_split_shard(StreamName, ShardToSplit, NewStartingHashKey,
      StreamARN)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="kinesis_split_shard_:_StreamName">StreamName</code></td>
<td><p>The name of the stream for the shard split.</p></td>
</tr>
<tr class="even">
<td><code
id="kinesis_split_shard_:_ShardToSplit">ShardToSplit</code></td>
<td><p>[required] The shard ID of the shard to split.</p></td>
</tr>
<tr class="odd">
<td><code
id="kinesis_split_shard_:_NewStartingHashKey">NewStartingHashKey</code></td>
<td><p>[required] A hash key value for the starting hash key of one of
the child shards created by the split. The hash key range for a given
shard constitutes a set of ordered contiguous positive integers. The
value for <code>NewStartingHashKey</code> must be in the range of hash
keys being mapped into the shard. The <code>NewStartingHashKey</code>
hash key value and all higher hash key values in hash key range are
distributed to one of the child shards. All the lower hash key values in
the range are distributed to the other child shard.</p></td>
</tr>
<tr class="even">
<td><code id="kinesis_split_shard_:_StreamARN">StreamARN</code></td>
<td><p>The ARN of the stream.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$split_shard(
      StreamName = "string",
      ShardToSplit = "string",
      NewStartingHashKey = "string",
      StreamARN = "string"
    )
