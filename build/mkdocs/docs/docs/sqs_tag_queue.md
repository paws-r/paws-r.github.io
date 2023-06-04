<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sqs_tag_queue</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Add cost allocation tags to the specified Amazon SQS queue

### Description

Add cost allocation tags to the specified Amazon SQS queue. For an
overview, see [Tagging Your Amazon SQS
Queues](https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-queue-tags.html)
in the *Amazon SQS Developer Guide*.

When you use queue tags, keep the following guidelines in mind:

-   Adding more than 50 tags to a queue isn't recommended.

-   Tags don't have any semantic meaning. Amazon SQS interprets tags as
    character strings.

-   Tags are case-sensitive.

-   A new tag with a key identical to that of an existing tag overwrites
    the existing tag.

For a full list of tag restrictions, see [Quotas related to
queues](https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-quotas.html#limits-queues)
in the *Amazon SQS Developer Guide*.

Cross-account permissions don't apply to this action. For more
information, see [Grant cross-account permissions to a role and a user
name](https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-basic-examples-of-sqs-policies.html#grant-cross-account-permissions-to-role-and-user-name)
in the *Amazon SQS Developer Guide*.

### Usage

    sqs_tag_queue(QueueUrl, Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="sqs_tag_queue_:_QueueUrl">QueueUrl</code></td>
<td><p>[required] The URL of the queue.</p></td>
</tr>
<tr class="even">
<td><code id="sqs_tag_queue_:_Tags">Tags</code></td>
<td><p>[required] The list of tags to be added to the specified
queue.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$tag_queue(
      QueueUrl = "string",
      Tags = list(
        "string"
      )
    )
