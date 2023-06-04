<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>kinesis_get_shard_iterator</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets an Amazon Kinesis shard iterator

### Description

Gets an Amazon Kinesis shard iterator. A shard iterator expires 5
minutes after it is returned to the requester.

When invoking this API, it is recommended you use the `StreamARN` input
parameter rather than the `StreamName` input parameter.

A shard iterator specifies the shard position from which to start
reading data records sequentially. The position is specified using the
sequence number of a data record in a shard. A sequence number is the
identifier associated with every record ingested in the stream, and is
assigned when a record is put into the stream. Each stream has one or
more shards.

You must specify the shard iterator type. For example, you can set the
`ShardIteratorType` parameter to read exactly from the position denoted
by a specific sequence number by using the `AT_SEQUENCE_NUMBER` shard
iterator type. Alternatively, the parameter can read right after the
sequence number by using the `AFTER_SEQUENCE_NUMBER` shard iterator
type, using sequence numbers returned by earlier calls to `put_record`,
`put_records`, `get_records`, or `describe_stream`. In the request, you
can specify the shard iterator type `AT_TIMESTAMP` to read records from
an arbitrary point in time, `TRIM_HORIZON` to cause `ShardIterator` to
point to the last untrimmed record in the shard in the system (the
oldest data record in the shard), or `LATEST` so that you always read
the most recent data in the shard.

When you read repeatedly from a stream, use a `get_shard_iterator`
request to get the first shard iterator for use in your first
`get_records` request and for subsequent reads use the shard iterator
returned by the `get_records` request in `NextShardIterator`. A new
shard iterator is returned by every `get_records` request in
`NextShardIterator`, which you use in the `ShardIterator` parameter of
the next `get_records` request.

If a `get_shard_iterator` request is made too often, you receive a
`ProvisionedThroughputExceededException`. For more information about
throughput limits, see `get_records`, and [Streams
Limits](https://docs.aws.amazon.com/streams/latest/dev/service-sizes-and-limits.html)
in the *Amazon Kinesis Data Streams Developer Guide*.

If the shard is closed, `get_shard_iterator` returns a valid iterator
for the last sequence number of the shard. A shard can be closed as a
result of using `split_shard` or `merge_shards`.

`get_shard_iterator` has a limit of five transactions per second per
account per open shard.

### Usage

    kinesis_get_shard_iterator(StreamName, ShardId, ShardIteratorType,
      StartingSequenceNumber, Timestamp, StreamARN)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="kinesis_get_shard_iterator_:_StreamName">StreamName</code></td>
<td><p>The name of the Amazon Kinesis data stream.</p></td>
</tr>
<tr class="even">
<td><code id="kinesis_get_shard_iterator_:_ShardId">ShardId</code></td>
<td><p>[required] The shard ID of the Kinesis Data Streams shard to get
the iterator for.</p></td>
</tr>
<tr class="odd">
<td><code
id="kinesis_get_shard_iterator_:_ShardIteratorType">ShardIteratorType</code></td>
<td><p>[required] Determines how the shard iterator is used to start
reading data records from the shard.</p>
<p>The following are the valid Amazon Kinesis shard iterator types:</p>
<ul>
<li><p>AT_SEQUENCE_NUMBER - Start reading from the position denoted by a
specific sequence number, provided in the value
<code>StartingSequenceNumber</code>.</p></li>
<li><p>AFTER_SEQUENCE_NUMBER - Start reading right after the position
denoted by a specific sequence number, provided in the value
<code>StartingSequenceNumber</code>.</p></li>
<li><p>AT_TIMESTAMP - Start reading from the position denoted by a
specific time stamp, provided in the value
<code>Timestamp</code>.</p></li>
<li><p>TRIM_HORIZON - Start reading at the last untrimmed record in the
shard in the system, which is the oldest data record in the
shard.</p></li>
<li><p>LATEST - Start reading just after the most recent record in the
shard, so that you always read the most recent data in the
shard.</p></li>
</ul></td>
</tr>
<tr class="even">
<td><code
id="kinesis_get_shard_iterator_:_StartingSequenceNumber">StartingSequenceNumber</code></td>
<td><p>The sequence number of the data record in the shard from which to
start reading. Used with shard iterator type AT_SEQUENCE_NUMBER and
AFTER_SEQUENCE_NUMBER.</p></td>
</tr>
<tr class="odd">
<td><code
id="kinesis_get_shard_iterator_:_Timestamp">Timestamp</code></td>
<td><p>The time stamp of the data record from which to start reading.
Used with shard iterator type AT_TIMESTAMP. A time stamp is the Unix
epoch date with precision in milliseconds. For example, <code
style="white-space: pre;">⁠2016-04-04T19:58:46.480-00:00⁠</code> or
<code>1459799926.480</code>. If a record with this exact time stamp does
not exist, the iterator returned is for the next (later) record. If the
time stamp is older than the current trim horizon, the iterator returned
is for the oldest untrimmed data record (TRIM_HORIZON).</p></td>
</tr>
<tr class="even">
<td><code
id="kinesis_get_shard_iterator_:_StreamARN">StreamARN</code></td>
<td><p>The ARN of the stream.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ShardIterator = "string"
    )

### Request syntax

    svc$get_shard_iterator(
      StreamName = "string",
      ShardId = "string",
      ShardIteratorType = "AT_SEQUENCE_NUMBER"|"AFTER_SEQUENCE_NUMBER"|"TRIM_HORIZON"|"LATEST"|"AT_TIMESTAMP",
      StartingSequenceNumber = "string",
      Timestamp = as.POSIXct(
        "2015-01-01"
      ),
      StreamARN = "string"
    )
