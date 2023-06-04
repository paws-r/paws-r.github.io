<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>kinesis_register_stream_consumer</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Registers a consumer with a Kinesis data stream

### Description

Registers a consumer with a Kinesis data stream. When you use this
operation, the consumer you register can then call SubscribeToShard to
receive data from the stream using enhanced fan-out, at a rate of up to
2 MiB per second for every shard you subscribe to. This rate is
unaffected by the total number of consumers that read from the same
stream.

You can register up to 20 consumers per stream. A given consumer can
only be registered with one stream at a time.

For an example of how to use this operations, see Enhanced Fan-Out Using
the Kinesis Data Streams API.

The use of this operation has a limit of five transactions per second
per account. Also, only 5 consumers can be created simultaneously. In
other words, you cannot have more than 5 consumers in a `CREATING`
status at the same time. Registering a 6th consumer while there are 5 in
a `CREATING` status results in a `LimitExceededException`.

### Usage

    kinesis_register_stream_consumer(StreamARN, ConsumerName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="kinesis_register_stream_consumer_:_StreamARN">StreamARN</code></td>
<td><p>[required] The ARN of the Kinesis data stream that you want to
register the consumer with. For more info, see <a
href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference-arns.html#arn-syntax-kinesis-streams">Amazon
Resource Names (ARNs) and Amazon Web Services Service
Namespaces</a>.</p></td>
</tr>
<tr class="even">
<td><code
id="kinesis_register_stream_consumer_:_ConsumerName">ConsumerName</code></td>
<td><p>[required] For a given Kinesis data stream, each consumer must
have a unique name. However, consumer names don't have to be unique
across data streams.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Consumer = list(
        ConsumerName = "string",
        ConsumerARN = "string",
        ConsumerStatus = "CREATING"|"DELETING"|"ACTIVE",
        ConsumerCreationTimestamp = as.POSIXct(
          "2015-01-01"
        )
      )
    )

### Request syntax

    svc$register_stream_consumer(
      StreamARN = "string",
      ConsumerName = "string"
    )
