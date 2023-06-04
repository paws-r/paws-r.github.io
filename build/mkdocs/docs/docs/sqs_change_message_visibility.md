<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sqs_change_message_visibility</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Changes the visibility timeout of a specified message in a queue to a new value

### Description

Changes the visibility timeout of a specified message in a queue to a
new value. The default visibility timeout for a message is 30 seconds.
The minimum is 0 seconds. The maximum is 12 hours. For more information,
see [Visibility
Timeout](https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-visibility-timeout.html)
in the *Amazon SQS Developer Guide*.

For example, you have a message with a visibility timeout of 5 minutes.
After 3 minutes, you call `change_message_visibility` with a timeout of
10 minutes. You can continue to call `change_message_visibility` to
extend the visibility timeout to the maximum allowed time. If you try to
extend the visibility timeout beyond the maximum, your request is
rejected.

An Amazon SQS message has three basic states:

1.  Sent to a queue by a producer.

2.  Received from the queue by a consumer.

3.  Deleted from the queue.

A message is considered to be *stored* after it is sent to a queue by a
producer, but not yet received from the queue by a consumer (that is,
between states 1 and 2). There is no limit to the number of stored
messages. A message is considered to be *in flight* after it is received
from a queue by a consumer, but not yet deleted from the queue (that is,
between states 2 and 3). There is a limit to the number of inflight
messages.

Limits that apply to inflight messages are unrelated to the *unlimited*
number of stored messages.

For most standard queues (depending on queue traffic and message
backlog), there can be a maximum of approximately 120,000 inflight
messages (received from a queue by a consumer, but not yet deleted from
the queue). If you reach this limit, Amazon SQS returns the `OverLimit`
error message. To avoid reaching the limit, you should delete messages
from the queue after they're processed. You can also increase the number
of queues you use to process your messages. To request a limit increase,
file a support request.

For FIFO queues, there can be a maximum of 20,000 inflight messages
(received from a queue by a consumer, but not yet deleted from the
queue). If you reach this limit, Amazon SQS returns no error messages.

If you attempt to set the `VisibilityTimeout` to a value greater than
the maximum time left, Amazon SQS returns an error. Amazon SQS doesn't
automatically recalculate and increase the timeout to the maximum
remaining time.

Unlike with a queue, when you change the visibility timeout for a
specific message the timeout value is applied immediately but isn't
saved in memory for that message. If you don't delete a message after it
is received, the visibility timeout for the message reverts to the
original timeout value (not to the value you set using the
`change_message_visibility` action) the next time the message is
received.

### Usage

    sqs_change_message_visibility(QueueUrl, ReceiptHandle,
      VisibilityTimeout)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="sqs_change_message_visibility_:_QueueUrl">QueueUrl</code></td>
<td><p>[required] The URL of the Amazon SQS queue whose message's
visibility is changed.</p>
<p>Queue URLs and names are case-sensitive.</p></td>
</tr>
<tr class="even">
<td><code
id="sqs_change_message_visibility_:_ReceiptHandle">ReceiptHandle</code></td>
<td><p>[required] The receipt handle associated with the message whose
visibility timeout is changed. This parameter is returned by the
<code>receive_message</code> action.</p></td>
</tr>
<tr class="odd">
<td><code
id="sqs_change_message_visibility_:_VisibilityTimeout">VisibilityTimeout</code></td>
<td><p>[required] The new value for the message's visibility timeout (in
seconds). Values range: <code>0</code> to <code>43200</code>. Maximum:
12 hours.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$change_message_visibility(
      QueueUrl = "string",
      ReceiptHandle = "string",
      VisibilityTimeout = 123
    )
