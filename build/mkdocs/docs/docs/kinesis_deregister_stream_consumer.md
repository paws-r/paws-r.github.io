<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>kinesis_deregister_stream_consumer</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## To deregister a consumer, provide its ARN

### Description

To deregister a consumer, provide its ARN. Alternatively, you can
provide the ARN of the data stream and the name you gave the consumer
when you registered it. You may also provide all three parameters, as
long as they don't conflict with each other. If you don't know the name
or ARN of the consumer that you want to deregister, you can use the
`list_stream_consumers` operation to get a list of the descriptions of
all the consumers that are currently registered with a given data
stream. The description of a consumer contains its name and ARN.

This operation has a limit of five transactions per second per stream.

### Usage

    kinesis_deregister_stream_consumer(StreamARN, ConsumerName, ConsumerARN)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="kinesis_deregister_stream_consumer_:_StreamARN">StreamARN</code></td>
<td><p>The ARN of the Kinesis data stream that the consumer is
registered with. For more information, see <a
href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference-arns.html#arn-syntax-kinesis-streams">Amazon
Resource Names (ARNs) and Amazon Web Services Service
Namespaces</a>.</p></td>
</tr>
<tr class="even">
<td><code
id="kinesis_deregister_stream_consumer_:_ConsumerName">ConsumerName</code></td>
<td><p>The name that you gave to the consumer.</p></td>
</tr>
<tr class="odd">
<td><code
id="kinesis_deregister_stream_consumer_:_ConsumerARN">ConsumerARN</code></td>
<td><p>The ARN returned by Kinesis Data Streams when you registered the
consumer. If you don't know the ARN of the consumer that you want to
deregister, you can use the ListStreamConsumers operation to get a list
of the descriptions of all the consumers that are currently registered
with a given data stream. The description of a consumer contains its
ARN.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$deregister_stream_consumer(
      StreamARN = "string",
      ConsumerName = "string",
      ConsumerARN = "string"
    )
