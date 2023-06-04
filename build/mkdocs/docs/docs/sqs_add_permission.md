<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sqs_add_permission</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Adds a permission to a queue for a specific principal

### Description

Adds a permission to a queue for a specific
[principal](https://docs.aws.amazon.com/general/latest/gr/glos-chap.html#P).
This allows sharing access to the queue.

When you create a queue, you have full control access rights for the
queue. Only you, the owner of the queue, can grant or deny permissions
to the queue. For more information about these permissions, see [Allow
Developers to Write Messages to a Shared
Queue](https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-basic-examples-of-iam-policies.html#write-messages-to-shared-queue)
in the *Amazon SQS Developer Guide*.

-   `add_permission` generates a policy for you. You can use
    `set_queue_attributes` to upload your policy. For more information,
    see [Using Custom Policies with the Amazon SQS Access Policy
    Language](https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-creating-custom-policies.html)
    in the *Amazon SQS Developer Guide*.

-   An Amazon SQS policy can have a maximum of 7 actions.

-   To remove the ability to change queue permissions, you must deny
    permission to the `add_permission`, `remove_permission`, and
    `set_queue_attributes` actions in your IAM policy.

Some actions take lists of parameters. These lists are specified using
the `param.n` notation. Values of `n` are integers starting from 1. For
example, a parameter list with two elements looks like this:

`⁠&AttributeName.1=first⁠`

`⁠&AttributeName.2=second⁠`

Cross-account permissions don't apply to this action. For more
information, see [Grant cross-account permissions to a role and a user
name](https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-basic-examples-of-sqs-policies.html#grant-cross-account-permissions-to-role-and-user-name)
in the *Amazon SQS Developer Guide*.

### Usage

    sqs_add_permission(QueueUrl, Label, AWSAccountIds, Actions)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="sqs_add_permission_:_QueueUrl">QueueUrl</code></td>
<td><p>[required] The URL of the Amazon SQS queue to which permissions
are added.</p>
<p>Queue URLs and names are case-sensitive.</p></td>
</tr>
<tr class="even">
<td><code id="sqs_add_permission_:_Label">Label</code></td>
<td><p>[required] The unique identification of the permission you're
setting (for example, <code>AliceSendMessage</code>). Maximum 80
characters. Allowed characters include alphanumeric characters, hyphens
(<code>-</code>), and underscores (<code
style="white-space: pre;">⁠_⁠</code>).</p></td>
</tr>
<tr class="odd">
<td><code
id="sqs_add_permission_:_AWSAccountIds">AWSAccountIds</code></td>
<td><p>[required] The Amazon Web Services account numbers of the <a
href="https://docs.aws.amazon.com/general/latest/gr/glos-chap.html#P">principals</a>
who are to receive permission. For information about locating the Amazon
Web Services account identification, see <a
href="https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-making-api-requests-xml.html#sqs-api-request-authentication">Your
Amazon Web Services Identifiers</a> in the <em>Amazon SQS Developer
Guide</em>.</p></td>
</tr>
<tr class="even">
<td><code id="sqs_add_permission_:_Actions">Actions</code></td>
<td><p>[required] The action the client wants to allow for the specified
principal. Valid values: the name of any action or <code>*</code>.</p>
<p>For more information about these actions, see <a
href="https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-overview-of-managing-access.html">Overview
of Managing Access Permissions to Your Amazon Simple Queue Service
Resource</a> in the <em>Amazon SQS Developer Guide</em>.</p>
<p>Specifying <code>send_message</code>, <code>delete_message</code>, or
<code>change_message_visibility</code> for <code>ActionName.n</code>
also grants permissions for the corresponding batch versions of those
actions: <code>send_message_batch</code>,
<code>delete_message_batch</code>, and
<code>change_message_visibility_batch</code>.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$add_permission(
      QueueUrl = "string",
      Label = "string",
      AWSAccountIds = list(
        "string"
      ),
      Actions = list(
        "string"
      )
    )
