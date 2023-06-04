<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sqs_delete_message</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes the specified message from the specified queue

### Description

Deletes the specified message from the specified queue. To select the
message to delete, use the `ReceiptHandle` of the message (*not* the
`MessageId` which you receive when you send the message). Amazon SQS can
delete a message from a queue even if a visibility timeout setting
causes the message to be locked by another consumer. Amazon SQS
automatically deletes messages left in a queue longer than the retention
period configured for the queue.

The `ReceiptHandle` is associated with a *specific instance* of
receiving a message. If you receive a message more than once, the
`ReceiptHandle` is different each time you receive a message. When you
use the `delete_message` action, you must provide the most recently
received `ReceiptHandle` for the message (otherwise, the request
succeeds, but the message might not be deleted).

For standard queues, it is possible to receive a message even after you
delete it. This might happen on rare occasions if one of the servers
which stores a copy of the message is unavailable when you send the
request to delete the message. The copy remains on the server and might
be returned to you during a subsequent receive request. You should
ensure that your application is idempotent, so that receiving a message
more than once does not cause issues.

### Usage

    sqs_delete_message(QueueUrl, ReceiptHandle)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="sqs_delete_message_:_QueueUrl">QueueUrl</code></td>
<td><p>[required] The URL of the Amazon SQS queue from which messages
are deleted.</p>
<p>Queue URLs and names are case-sensitive.</p></td>
</tr>
<tr class="even">
<td><code
id="sqs_delete_message_:_ReceiptHandle">ReceiptHandle</code></td>
<td><p>[required] The receipt handle associated with the message to
delete.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_message(
      QueueUrl = "string",
      ReceiptHandle = "string"
    )
