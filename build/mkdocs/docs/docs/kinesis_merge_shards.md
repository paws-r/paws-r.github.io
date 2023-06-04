<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>kinesis_merge_shards</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Merges two adjacent shards in a Kinesis data stream and combines them into a single shard to reduce the stream's capacity to ingest and transport data

### Description

Merges two adjacent shards in a Kinesis data stream and combines them
into a single shard to reduce the stream's capacity to ingest and
transport data. This API is only supported for the data streams with the
provisioned capacity mode. Two shards are considered adjacent if the
union of the hash key ranges for the two shards form a contiguous set
with no gaps. For example, if you have two shards, one with a hash key
range of 276...381 and the other with a hash key range of 382...454,
then you could merge these two shards into a single shard that would
have a hash key range of 276...454. After the merge, the single child
shard receives data for all hash key values covered by the two parent
shards.

When invoking this API, it is recommended you use the `StreamARN` input
parameter rather than the `StreamName` input parameter.

`merge_shards` is called when there is a need to reduce the overall
capacity of a stream because of excess capacity that is not being used.
You must specify the shard to be merged and the adjacent shard for a
stream. For more information about merging shards, see [Merge Two
Shards](https://docs.aws.amazon.com/streams/latest/dev/kinesis-using-sdk-java-resharding-merge.html)
in the *Amazon Kinesis Data Streams Developer Guide*.

If the stream is in the `ACTIVE` state, you can call `merge_shards`. If
a stream is in the `CREATING`, `UPDATING`, or `DELETING` state,
`merge_shards` returns a `ResourceInUseException`. If the specified
stream does not exist, `merge_shards` returns a
`ResourceNotFoundException`.

You can use `describe_stream_summary` to check the state of the stream,
which is returned in `StreamStatus`.

`merge_shards` is an asynchronous operation. Upon receiving a
`merge_shards` request, Amazon Kinesis Data Streams immediately returns
a response and sets the `StreamStatus` to `UPDATING`. After the
operation is completed, Kinesis Data Streams sets the `StreamStatus` to
`ACTIVE`. Read and write operations continue to work while the stream is
in the `UPDATING` state.

You use `describe_stream_summary` and the `list_shards` APIs to
determine the shard IDs that are specified in the `merge_shards`
request.

If you try to operate on too many streams in parallel using
`create_stream`, `delete_stream`, `merge_shards`, or `split_shard`, you
receive a `LimitExceededException`.

`merge_shards` has a limit of five transactions per second per account.

### Usage

    kinesis_merge_shards(StreamName, ShardToMerge, AdjacentShardToMerge,
      StreamARN)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="kinesis_merge_shards_:_StreamName">StreamName</code></td>
<td><p>The name of the stream for the merge.</p></td>
</tr>
<tr class="even">
<td><code
id="kinesis_merge_shards_:_ShardToMerge">ShardToMerge</code></td>
<td><p>[required] The shard ID of the shard to combine with the adjacent
shard for the merge.</p></td>
</tr>
<tr class="odd">
<td><code
id="kinesis_merge_shards_:_AdjacentShardToMerge">AdjacentShardToMerge</code></td>
<td><p>[required] The shard ID of the adjacent shard for the
merge.</p></td>
</tr>
<tr class="even">
<td><code id="kinesis_merge_shards_:_StreamARN">StreamARN</code></td>
<td><p>The ARN of the stream.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$merge_shards(
      StreamName = "string",
      ShardToMerge = "string",
      AdjacentShardToMerge = "string",
      StreamARN = "string"
    )
