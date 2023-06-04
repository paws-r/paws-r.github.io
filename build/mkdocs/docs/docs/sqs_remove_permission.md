<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sqs_remove_permission</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Revokes any permissions in the queue policy that matches the specified Label parameter

### Description

Revokes any permissions in the queue policy that matches the specified
`Label` parameter.

-   Only the owner of a queue can remove permissions from it.

-   Cross-account permissions don't apply to this action. For more
    information, see [Grant cross-account permissions to a role and a
    user
    name](https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-basic-examples-of-sqs-policies.html#grant-cross-account-permissions-to-role-and-user-name)
    in the *Amazon SQS Developer Guide*.

-   To remove the ability to change queue permissions, you must deny
    permission to the `add_permission`, `remove_permission`, and
    `set_queue_attributes` actions in your IAM policy.

### Usage

    sqs_remove_permission(QueueUrl, Label)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="sqs_remove_permission_:_QueueUrl">QueueUrl</code></td>
<td><p>[required] The URL of the Amazon SQS queue from which permissions
are removed.</p>
<p>Queue URLs and names are case-sensitive.</p></td>
</tr>
<tr class="even">
<td><code id="sqs_remove_permission_:_Label">Label</code></td>
<td><p>[required] The identification of the permission to remove. This
is the label added using the <code>add_permission</code>
action.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$remove_permission(
      QueueUrl = "string",
      Label = "string"
    )
