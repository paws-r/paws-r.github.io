<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sqs_delete_queue</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes the queue specified by the QueueUrl, regardless of the queue's contents

### Description

Deletes the queue specified by the `QueueUrl`, regardless of the queue's
contents.

Be careful with the `delete_queue` action: When you delete a queue, any
messages in the queue are no longer available.

When you delete a queue, the deletion process takes up to 60 seconds.
Requests you send involving that queue during the 60 seconds might
succeed. For example, a `send_message` request might succeed, but after
60 seconds the queue and the message you sent no longer exist.

When you delete a queue, you must wait at least 60 seconds before
creating a queue with the same name.

Cross-account permissions don't apply to this action. For more
information, see [Grant cross-account permissions to a role and a user
name](https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-basic-examples-of-sqs-policies.html#grant-cross-account-permissions-to-role-and-user-name)
in the *Amazon SQS Developer Guide*.

### Usage

    sqs_delete_queue(QueueUrl)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="sqs_delete_queue_:_QueueUrl">QueueUrl</code></td>
<td><p>[required] The URL of the Amazon SQS queue to delete.</p>
<p>Queue URLs and names are case-sensitive.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_queue(
      QueueUrl = "string"
    )
