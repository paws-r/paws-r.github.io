<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sqs_list_queue_tags</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## List all cost allocation tags added to the specified Amazon SQS queue

### Description

List all cost allocation tags added to the specified Amazon SQS queue.
For an overview, see [Tagging Your Amazon SQS
Queues](https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-queue-tags.html)
in the *Amazon SQS Developer Guide*.

Cross-account permissions don't apply to this action. For more
information, see [Grant cross-account permissions to a role and a user
name](https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-basic-examples-of-sqs-policies.html#grant-cross-account-permissions-to-role-and-user-name)
in the *Amazon SQS Developer Guide*.

### Usage

    sqs_list_queue_tags(QueueUrl)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="sqs_list_queue_tags_:_QueueUrl">QueueUrl</code></td>
<td><p>[required] The URL of the queue.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Tags = list(
        "string"
      )
    )

### Request syntax

    svc$list_queue_tags(
      QueueUrl = "string"
    )
