<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>kinesis_get_records</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets data records from a Kinesis data stream's shard

### Description

Gets data records from a Kinesis data stream's shard.

When invoking this API, it is recommended you use the `StreamARN` input
parameter in addition to the `ShardIterator` parameter.

Specify a shard iterator using the `ShardIterator` parameter. The shard
iterator specifies the position in the shard from which you want to
start reading data records sequentially. If there are no records
available in the portion of the shard that the iterator points to,
`get_records` returns an empty list. It might take multiple calls to get
to a portion of the shard that contains records.

You can scale by provisioning multiple shards per stream while
considering service limits (for more information, see [Amazon Kinesis
Data Streams
Limits](https://docs.aws.amazon.com/streams/latest/dev/service-sizes-and-limits.html)
in the *Amazon Kinesis Data Streams Developer Guide*). Your application
should have one thread per shard, each reading continuously from its
stream. To read from a stream continually, call `get_records` in a loop.
Use `get_shard_iterator` to get the shard iterator to specify in the
first `get_records` call. `get_records` returns a new shard iterator in
`NextShardIterator`. Specify the shard iterator returned in
`NextShardIterator` in subsequent calls to `get_records`. If the shard
has been closed, the shard iterator can't return more data and
`get_records` returns `null` in `NextShardIterator`. You can terminate
the loop when the shard is closed, or when the shard iterator reaches
the record with the sequence number or other attribute that marks it as
the last record to process.

Each data record can be up to 1 MiB in size, and each shard can read up
to 2 MiB per second. You can ensure that your calls don't exceed the
maximum supported size or throughput by using the `Limit` parameter to
specify the maximum number of records that `get_records` can return.
Consider your average record size when determining this limit. The
maximum number of records that can be returned per call is 10,000.

The size of the data returned by `get_records` varies depending on the
utilization of the shard. It is recommended that consumer applications
retrieve records via the `get_records` command using the 5 TPS limit to
remain caught up. Retrieving records less frequently can lead to
consumer applications falling behind. The maximum size of data that
`get_records` can return is 10 MiB. If a call returns this amount of
data, subsequent calls made within the next 5 seconds throw
`ProvisionedThroughputExceededException`. If there is insufficient
provisioned throughput on the stream, subsequent calls made within the
next 1 second throw `ProvisionedThroughputExceededException`.
`get_records` doesn't return any data when it throws an exception. For
this reason, we recommend that you wait 1 second between calls to
`get_records`. However, it's possible that the application will get
exceptions for longer than 1 second.

To detect whether the application is falling behind in processing, you
can use the `MillisBehindLatest` response attribute. You can also
monitor the stream using CloudWatch metrics and other mechanisms (see
[Monitoring](https://docs.aws.amazon.com/streams/latest/dev/monitoring.html)
in the *Amazon Kinesis Data Streams Developer Guide*).

Each Amazon Kinesis record includes a value,
`ApproximateArrivalTimestamp`, that is set when a stream successfully
receives and stores a record. This is commonly referred to as a
server-side time stamp, whereas a client-side time stamp is set when a
data producer creates or sends the record to a stream (a data producer
is any data source putting data records into a stream, for example with
`put_records`). The time stamp has millisecond precision. There are no
guarantees about the time stamp accuracy, or that the time stamp is
always increasing. For example, records in a shard or across a stream
might have time stamps that are out of order.

This operation has a limit of five transactions per second per shard.

### Usage

    kinesis_get_records(ShardIterator, Limit, StreamARN)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="kinesis_get_records_:_ShardIterator">ShardIterator</code></td>
<td><p>[required] The position in the shard from which you want to start
sequentially reading data records. A shard iterator specifies this
position using the sequence number of a data record in the
shard.</p></td>
</tr>
<tr class="even">
<td><code id="kinesis_get_records_:_Limit">Limit</code></td>
<td><p>The maximum number of records to return. Specify a value of up to
10,000. If you specify a value that is greater than 10,000,
<code>get_records</code> throws <code>InvalidArgumentException</code>.
The default value is 10,000.</p></td>
</tr>
<tr class="odd">
<td><code id="kinesis_get_records_:_StreamARN">StreamARN</code></td>
<td><p>The ARN of the stream.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Records = list(
        list(
          SequenceNumber = "string",
          ApproximateArrivalTimestamp = as.POSIXct(
            "2015-01-01"
          ),
          Data = raw,
          PartitionKey = "string",
          EncryptionType = "NONE"|"KMS"
        )
      ),
      NextShardIterator = "string",
      MillisBehindLatest = 123,
      ChildShards = list(
        list(
          ShardId = "string",
          ParentShards = list(
            "string"
          ),
          HashKeyRange = list(
            StartingHashKey = "string",
            EndingHashKey = "string"
          )
        )
      )
    )

### Request syntax

    svc$get_records(
      ShardIterator = "string",
      Limit = 123,
      StreamARN = "string"
    )
