<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>kinesis_describe_stream</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes the specified Kinesis data stream

### Description

Describes the specified Kinesis data stream.

This API has been revised. It's highly recommended that you use the
`describe_stream_summary` API to get a summarized description of the
specified Kinesis data stream and the `list_shards` API to list the
shards in a specified data stream and obtain information about each
shard.

When invoking this API, it is recommended you use the `StreamARN` input
parameter rather than the `StreamName` input parameter.

The information returned includes the stream name, Amazon Resource Name
(ARN), creation time, enhanced metric configuration, and shard map. The
shard map is an array of shard objects. For each shard object, there is
the hash key and sequence number ranges that the shard spans, and the
IDs of any earlier shards that played in a role in creating the shard.
Every record ingested in the stream is identified by a sequence number,
which is assigned when the record is put into the stream.

You can limit the number of shards returned by each call. For more
information, see [Retrieving Shards from a
Stream](https://docs.aws.amazon.com/streams/latest/dev/) in the *Amazon
Kinesis Data Streams Developer Guide*.

There are no guarantees about the chronological order shards returned.
To process shards in chronological order, use the ID of the parent shard
to track the lineage to the oldest shard.

This operation has a limit of 10 transactions per second per account.

### Usage

    kinesis_describe_stream(StreamName, Limit, ExclusiveStartShardId,
      StreamARN)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="kinesis_describe_stream_:_StreamName">StreamName</code></td>
<td><p>The name of the stream to describe.</p></td>
</tr>
<tr class="even">
<td><code id="kinesis_describe_stream_:_Limit">Limit</code></td>
<td><p>The maximum number of shards to return in a single call. The
default value is 100. If you specify a value greater than 100, at most
100 results are returned.</p></td>
</tr>
<tr class="odd">
<td><code
id="kinesis_describe_stream_:_ExclusiveStartShardId">ExclusiveStartShardId</code></td>
<td><p>The shard ID of the shard to start with.</p>
<p>Specify this parameter to indicate that you want to describe the
stream starting with the shard whose ID immediately follows
<code>ExclusiveStartShardId</code>.</p>
<p>If you don't specify this parameter, the default behavior for
<code>describe_stream</code> is to describe the stream starting with the
first shard in the stream.</p></td>
</tr>
<tr class="even">
<td><code id="kinesis_describe_stream_:_StreamARN">StreamARN</code></td>
<td><p>The ARN of the stream.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      StreamDescription = list(
        StreamName = "string",
        StreamARN = "string",
        StreamStatus = "CREATING"|"DELETING"|"ACTIVE"|"UPDATING",
        StreamModeDetails = list(
          StreamMode = "PROVISIONED"|"ON_DEMAND"
        ),
        Shards = list(
          list(
            ShardId = "string",
            ParentShardId = "string",
            AdjacentParentShardId = "string",
            HashKeyRange = list(
              StartingHashKey = "string",
              EndingHashKey = "string"
            ),
            SequenceNumberRange = list(
              StartingSequenceNumber = "string",
              EndingSequenceNumber = "string"
            )
          )
        ),
        HasMoreShards = TRUE|FALSE,
        RetentionPeriodHours = 123,
        StreamCreationTimestamp = as.POSIXct(
          "2015-01-01"
        ),
        EnhancedMonitoring = list(
          list(
            ShardLevelMetrics = list(
              "IncomingBytes"|"IncomingRecords"|"OutgoingBytes"|"OutgoingRecords"|"WriteProvisionedThroughputExceeded"|"ReadProvisionedThroughputExceeded"|"IteratorAgeMilliseconds"|"ALL"
            )
          )
        ),
        EncryptionType = "NONE"|"KMS",
        KeyId = "string"
      )
    )

### Request syntax

    svc$describe_stream(
      StreamName = "string",
      Limit = 123,
      ExclusiveStartShardId = "string",
      StreamARN = "string"
    )
