<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sns_publish_batch</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Publishes up to ten messages to the specified topic

### Description

Publishes up to ten messages to the specified topic. This is a batch
version of `publish`. For FIFO topics, multiple messages within a single
batch are published in the order they are sent, and messages are
deduplicated within the batch and across batches for 5 minutes.

The result of publishing each message is reported individually in the
response. Because the batch request can result in a combination of
successful and unsuccessful actions, you should check for batch errors
even when the call returns an HTTP status code of `200`.

The maximum allowed individual message size and the maximum total
payload size (the sum of the individual lengths of all of the batched
messages) are both 256 KB (262,144 bytes).

Some actions take lists of parameters. These lists are specified using
the `param.n` notation. Values of `n` are integers starting from 1. For
example, a parameter list with two elements looks like this:

&AttributeName.1=first

&AttributeName.2=second

If you send a batch message to a topic, Amazon SNS publishes the batch
message to each endpoint that is subscribed to the topic. The format of
the batch message depends on the notification protocol for each
subscribed endpoint.

When a `messageId` is returned, the batch message is saved and Amazon
SNS immediately delivers the message to subscribers.

### Usage

    sns_publish_batch(TopicArn, PublishBatchRequestEntries)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="sns_publish_batch_:_TopicArn">TopicArn</code></td>
<td><p>[required] The Amazon resource name (ARN) of the topic you want
to batch publish to.</p></td>
</tr>
<tr class="even">
<td><code
id="sns_publish_batch_:_PublishBatchRequestEntries">PublishBatchRequestEntries</code></td>
<td><p>[required] A list of <code>publish_batch</code> request entries
to be sent to the SNS topic.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Successful = list(
        list(
          Id = "string",
          MessageId = "string",
          SequenceNumber = "string"
        )
      ),
      Failed = list(
        list(
          Id = "string",
          Code = "string",
          Message = "string",
          SenderFault = TRUE|FALSE
        )
      )
    )

### Request syntax

    svc$publish_batch(
      TopicArn = "string",
      PublishBatchRequestEntries = list(
        list(
          Id = "string",
          Message = "string",
          Subject = "string",
          MessageStructure = "string",
          MessageAttributes = list(
            list(
              DataType = "string",
              StringValue = "string",
              BinaryValue = raw
            )
          ),
          MessageDeduplicationId = "string",
          MessageGroupId = "string"
        )
      )
    )
