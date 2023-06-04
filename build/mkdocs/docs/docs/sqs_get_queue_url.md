<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sqs_get_queue_url</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns the URL of an existing Amazon SQS queue

### Description

Returns the URL of an existing Amazon SQS queue.

To access a queue that belongs to another AWS account, use the
`QueueOwnerAWSAccountId` parameter to specify the account ID of the
queue's owner. The queue's owner must grant you permission to access the
queue. For more information about shared queue access, see
`add_permission` or see [Allow Developers to Write Messages to a Shared
Queue](https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-basic-examples-of-iam-policies.html#write-messages-to-shared-queue)
in the *Amazon SQS Developer Guide*.

### Usage

    sqs_get_queue_url(QueueName, QueueOwnerAWSAccountId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="sqs_get_queue_url_:_QueueName">QueueName</code></td>
<td><p>[required] The name of the queue whose URL must be fetched.
Maximum 80 characters. Valid values: alphanumeric characters, hyphens
(<code>-</code>), and underscores (<code
style="white-space: pre;">⁠_⁠</code>).</p>
<p>Queue URLs and names are case-sensitive.</p></td>
</tr>
<tr class="even">
<td><code
id="sqs_get_queue_url_:_QueueOwnerAWSAccountId">QueueOwnerAWSAccountId</code></td>
<td><p>The Amazon Web Services account ID of the account that created
the queue.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      QueueUrl = "string"
    )

### Request syntax

    svc$get_queue_url(
      QueueName = "string",
      QueueOwnerAWSAccountId = "string"
    )
