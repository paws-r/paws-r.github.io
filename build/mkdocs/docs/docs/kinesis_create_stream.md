<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>kinesis_create_stream</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a Kinesis data stream

### Description

Creates a Kinesis data stream. A stream captures and transports data
records that are continuously emitted from different data sources or
*producers*. Scale-out within a stream is explicitly supported by means
of shards, which are uniquely identified groups of data records in a
stream.

You can create your data stream using either on-demand or provisioned
capacity mode. Data streams with an on-demand mode require no capacity
planning and automatically scale to handle gigabytes of write and read
throughput per minute. With the on-demand mode, Kinesis Data Streams
automatically manages the shards in order to provide the necessary
throughput. For the data streams with a provisioned mode, you must
specify the number of shards for the data stream. Each shard can support
reads up to five transactions per second, up to a maximum data read
total of 2 MiB per second. Each shard can support writes up to 1,000
records per second, up to a maximum data write total of 1 MiB per
second. If the amount of data input increases or decreases, you can add
or remove shards.

The stream name identifies the stream. The name is scoped to the Amazon
Web Services account used by the application. It is also scoped by
Amazon Web Services Region. That is, two streams in two different
accounts can have the same name, and two streams in the same account,
but in two different Regions, can have the same name.

`create_stream` is an asynchronous operation. Upon receiving a
`create_stream` request, Kinesis Data Streams immediately returns and
sets the stream status to `CREATING`. After the stream is created,
Kinesis Data Streams sets the stream status to `ACTIVE`. You should
perform read and write operations only on an `ACTIVE` stream.

You receive a `LimitExceededException` when making a `create_stream`
request when you try to do one of the following:

-   Have more than five streams in the `CREATING` state at any point in
    time.

-   Create more shards than are authorized for your account.

For the default shard limit for an Amazon Web Services account, see
[Amazon Kinesis Data Streams
Limits](https://docs.aws.amazon.com/streams/latest/dev/service-sizes-and-limits.html)
in the *Amazon Kinesis Data Streams Developer Guide*. To increase this
limit, [contact Amazon Web Services
Support](https://docs.aws.amazon.com/general/latest/gr/aws_service_limits.html).

You can use `describe_stream_summary` to check the stream status, which
is returned in `StreamStatus`.

`create_stream` has a limit of five transactions per second per account.

### Usage

    kinesis_create_stream(StreamName, ShardCount, StreamModeDetails)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="kinesis_create_stream_:_StreamName">StreamName</code></td>
<td><p>[required] A name to identify the stream. The stream name is
scoped to the Amazon Web Services account used by the application that
creates the stream. It is also scoped by Amazon Web Services Region.
That is, two streams in two different Amazon Web Services accounts can
have the same name. Two streams in the same Amazon Web Services account
but in two different Regions can also have the same name.</p></td>
</tr>
<tr class="even">
<td><code id="kinesis_create_stream_:_ShardCount">ShardCount</code></td>
<td><p>The number of shards that the stream will use. The throughput of
the stream is a function of the number of shards; more shards are
required for greater provisioned throughput.</p></td>
</tr>
<tr class="odd">
<td><code
id="kinesis_create_stream_:_StreamModeDetails">StreamModeDetails</code></td>
<td><p>Indicates the capacity mode of the data stream. Currently, in
Kinesis Data Streams, you can choose between an
<strong>on-demand</strong> capacity mode and a
<strong>provisioned</strong> capacity mode for your data
streams.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$create_stream(
      StreamName = "string",
      ShardCount = 123,
      StreamModeDetails = list(
        StreamMode = "PROVISIONED"|"ON_DEMAND"
      )
    )
