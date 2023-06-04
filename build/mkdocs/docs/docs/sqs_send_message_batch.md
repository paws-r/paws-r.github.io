<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sqs_send_message_batch</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Delivers up to ten messages to the specified queue

### Description

Delivers up to ten messages to the specified queue. This is a batch
version of ` SendMessage.` For a FIFO queue, multiple messages within a
single batch are enqueued in the order they are sent.

The result of sending each message is reported individually in the
response. Because the batch request can result in a combination of
successful and unsuccessful actions, you should check for batch errors
even when the call returns an HTTP status code of `200`.

The maximum allowed individual message size and the maximum total
payload size (the sum of the individual lengths of all of the batched
messages) are both 256 KB (262,144 bytes).

A message can include only XML, JSON, and unformatted text. The
following Unicode characters are allowed:

`⁠#x9⁠` | `⁠#xA⁠` | `⁠#xD⁠` | `⁠#x20⁠` to `⁠#xD7FF⁠` | `⁠#xE000⁠` to `⁠#xFFFD⁠` |
`⁠#x10000⁠` to `⁠#x10FFFF⁠`

Any characters not included in this list will be rejected. For more
information, see the [W3C specification for
characters](https://www.w3.org/TR/REC-xml/#charsets).

If you don't specify the `DelaySeconds` parameter for an entry, Amazon
SQS uses the default value for the queue.

Some actions take lists of parameters. These lists are specified using
the `param.n` notation. Values of `n` are integers starting from 1. For
example, a parameter list with two elements looks like this:

`⁠&AttributeName.1=first⁠`

`⁠&AttributeName.2=second⁠`

### Usage

    sqs_send_message_batch(QueueUrl, Entries)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="sqs_send_message_batch_:_QueueUrl">QueueUrl</code></td>
<td><p>[required] The URL of the Amazon SQS queue to which batched
messages are sent.</p>
<p>Queue URLs and names are case-sensitive.</p></td>
</tr>
<tr class="even">
<td><code id="sqs_send_message_batch_:_Entries">Entries</code></td>
<td><p>[required] A list of <code>SendMessageBatchRequestEntry</code>
items.</p></td>
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
          MD5OfMessageBody = "string",
          MD5OfMessageAttributes = "string",
          MD5OfMessageSystemAttributes = "string",
          SequenceNumber = "string"
        )
      ),
      Failed = list(
        list(
          Id = "string",
          SenderFault = TRUE|FALSE,
          Code = "string",
          Message = "string"
        )
      )
    )

### Request syntax

    svc$send_message_batch(
      QueueUrl = "string",
      Entries = list(
        list(
          Id = "string",
          MessageBody = "string",
          DelaySeconds = 123,
          MessageAttributes = list(
            list(
              StringValue = "string",
              BinaryValue = raw,
              StringListValues = list(
                "string"
              ),
              BinaryListValues = list(
                raw
              ),
              DataType = "string"
            )
          ),
          MessageSystemAttributes = list(
            list(
              StringValue = "string",
              BinaryValue = raw,
              StringListValues = list(
                "string"
              ),
              BinaryListValues = list(
                raw
              ),
              DataType = "string"
            )
          ),
          MessageDeduplicationId = "string",
          MessageGroupId = "string"
        )
      )
    )
