<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sqs_set_queue_attributes</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Sets the value of one or more queue attributes

### Description

Sets the value of one or more queue attributes. When you change a
queue's attributes, the change can take up to 60 seconds for most of the
attributes to propagate throughout the Amazon SQS system. Changes made
to the `MessageRetentionPeriod` attribute can take up to 15 minutes.

-   In the future, new attributes might be added. If you write code that
    calls this action, we recommend that you structure your code so that
    it can handle new attributes gracefully.

-   Cross-account permissions don't apply to this action. For more
    information, see [Grant cross-account permissions to a role and a
    user
    name](https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-basic-examples-of-sqs-policies.html#grant-cross-account-permissions-to-role-and-user-name)
    in the *Amazon SQS Developer Guide*.

-   To remove the ability to change queue permissions, you must deny
    permission to the `add_permission`, `remove_permission`, and
    `set_queue_attributes` actions in your IAM policy.

### Usage

    sqs_set_queue_attributes(QueueUrl, Attributes)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="sqs_set_queue_attributes_:_QueueUrl">QueueUrl</code></td>
<td><p>[required] The URL of the Amazon SQS queue whose attributes are
set.</p>
<p>Queue URLs and names are case-sensitive.</p></td>
</tr>
<tr class="even">
<td><code
id="sqs_set_queue_attributes_:_Attributes">Attributes</code></td>
<td><p>[required] A map of attributes to set.</p>
<p>The following lists the names, descriptions, and values of the
special request parameters that the <code>set_queue_attributes</code>
action uses:</p>
<ul>
<li><p><code>DelaySeconds</code> – The length of time, in seconds, for
which the delivery of all messages in the queue is delayed. Valid
values: An integer from 0 to 900 (15 minutes). Default: 0.</p></li>
<li><p><code>MaximumMessageSize</code> – The limit of how many bytes a
message can contain before Amazon SQS rejects it. Valid values: An
integer from 1,024 bytes (1 KiB) up to 262,144 bytes (256 KiB). Default:
262,144 (256 KiB).</p></li>
<li><p><code>MessageRetentionPeriod</code> – The length of time, in
seconds, for which Amazon SQS retains a message. Valid values: An
integer representing seconds, from 60 (1 minute) to 1,209,600 (14 days).
Default: 345,600 (4 days).</p></li>
<li><p><code>Policy</code> – The queue's policy. A valid Amazon Web
Services policy. For more information about policy structure, see <a
href="https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies.html">Overview
of Amazon Web Services IAM Policies</a> in the <em>Identity and Access
Management User Guide</em>.</p></li>
<li><p><code>ReceiveMessageWaitTimeSeconds</code> – The length of time,
in seconds, for which a <code>receive_message</code> action waits for a
message to arrive. Valid values: An integer from 0 to 20 (seconds).
Default: 0.</p></li>
<li><p><code>RedrivePolicy</code> – The string that includes the
parameters for the dead-letter queue functionality of the source queue
as a JSON object. For more information about the redrive policy and
dead-letter queues, see <a
href="https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-dead-letter-queues.html">Using
Amazon SQS Dead-Letter Queues</a> in the <em>Amazon SQS Developer
Guide</em>.</p>
<ul>
<li><p><code>deadLetterTargetArn</code> – The Amazon Resource Name (ARN)
of the dead-letter queue to which Amazon SQS moves messages after the
value of <code>maxReceiveCount</code> is exceeded.</p></li>
<li><p><code>maxReceiveCount</code> – The number of times a message is
delivered to the source queue before being moved to the dead-letter
queue. When the <code>ReceiveCount</code> for a message exceeds the
<code>maxReceiveCount</code> for a queue, Amazon SQS moves the message
to the dead-letter-queue.</p></li>
</ul>
<p>The dead-letter queue of a FIFO queue must also be a FIFO queue.
Similarly, the dead-letter queue of a standard queue must also be a
standard queue.</p></li>
<li><p><code>VisibilityTimeout</code> – The visibility timeout for the
queue, in seconds. Valid values: An integer from 0 to 43,200 (12 hours).
Default: 30. For more information about the visibility timeout, see <a
href="https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-visibility-timeout.html">Visibility
Timeout</a> in the <em>Amazon SQS Developer Guide</em>.</p></li>
</ul>
<p>The following attributes apply only to <a
href="https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-server-side-encryption.html">server-side-encryption</a>:</p>
<ul>
<li><p><code>KmsMasterKeyId</code> – The ID of an Amazon Web Services
managed customer master key (CMK) for Amazon SQS or a custom CMK. For
more information, see <a
href="https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-server-side-encryption.html#sqs-sse-key-terms">Key
Terms</a>. While the alias of the AWS-managed CMK for Amazon SQS is
always <code>alias/aws/sqs</code>, the alias of a custom CMK can, for
example, be <code>alias/MyAlias </code>. For more examples, see <a
href="https://docs.aws.amazon.com/kms/latest/APIReference/API_DescribeKey.html#API_DescribeKey_RequestParameters">KeyId</a>
in the <em>Key Management Service API Reference</em>.</p></li>
<li><p><code>KmsDataKeyReusePeriodSeconds</code> – The length of time,
in seconds, for which Amazon SQS can reuse a <a
href="https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#data-keys">data
key</a> to encrypt or decrypt messages before calling KMS again. An
integer representing seconds, between 60 seconds (1 minute) and 86,400
seconds (24 hours). Default: 300 (5 minutes). A shorter time period
provides better security but results in more calls to KMS which might
incur charges after Free Tier. For more information, see <a
href="https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-server-side-encryption.html#sqs-how-does-the-data-key-reuse-period-work">How
Does the Data Key Reuse Period Work?</a>.</p></li>
<li><p><code>SqsManagedSseEnabled</code> – Enables server-side queue
encryption using SQS owned encryption keys. Only one server-side
encryption option is supported per queue (e.g. <a
href="https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-configure-sse-existing-queue.html">SSE-KMS</a>
or <a
href="https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-configure-sqs-sse-queue.html">SSE-SQS</a>).</p></li>
</ul>
<p>The following attribute applies only to <a
href="https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/FIFO-queues.html">FIFO
(first-in-first-out) queues</a>:</p>
<ul>
<li><p><code>ContentBasedDeduplication</code> – Enables content-based
deduplication. For more information, see <a
href="https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/FIFO-queues-exactly-once-processing.html">Exactly-once
processing</a> in the <em>Amazon SQS Developer Guide</em>. Note the
following:</p>
<ul>
<li><p>Every message must have a unique
<code>MessageDeduplicationId</code>.</p>
<ul>
<li><p>You may provide a <code>MessageDeduplicationId</code>
explicitly.</p></li>
<li><p>If you aren't able to provide a
<code>MessageDeduplicationId</code> and you enable
<code>ContentBasedDeduplication</code> for your queue, Amazon SQS uses a
SHA-256 hash to generate the <code>MessageDeduplicationId</code> using
the body of the message (but not the attributes of the
message).</p></li>
<li><p>If you don't provide a <code>MessageDeduplicationId</code> and
the queue doesn't have <code>ContentBasedDeduplication</code> set, the
action fails with an error.</p></li>
<li><p>If the queue has <code>ContentBasedDeduplication</code> set, your
<code>MessageDeduplicationId</code> overrides the generated
one.</p></li>
</ul></li>
<li><p>When <code>ContentBasedDeduplication</code> is in effect,
messages with identical content sent within the deduplication interval
are treated as duplicates and only one copy of the message is
delivered.</p></li>
<li><p>If you send one message with
<code>ContentBasedDeduplication</code> enabled and then another message
with a <code>MessageDeduplicationId</code> that is the same as the one
generated for the first <code>MessageDeduplicationId</code>, the two
messages are treated as duplicates and only one copy of the message is
delivered.</p></li>
</ul></li>
</ul>
<p>The following attributes apply only to <a
href="https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/high-throughput-fifo.html">high
throughput for FIFO queues</a>:</p>
<ul>
<li><p><code>DeduplicationScope</code> – Specifies whether message
deduplication occurs at the message group or queue level. Valid values
are <code>messageGroup</code> and <code>queue</code>.</p></li>
<li><p><code>FifoThroughputLimit</code> – Specifies whether the FIFO
queue throughput quota applies to the entire queue or per message group.
Valid values are <code>perQueue</code> and
<code>perMessageGroupId</code>. The <code>perMessageGroupId</code> value
is allowed only when the value for <code>DeduplicationScope</code> is
<code>messageGroup</code>.</p></li>
</ul>
<p>To enable high throughput for FIFO queues, do the following:</p>
<ul>
<li><p>Set <code>DeduplicationScope</code> to
<code>messageGroup</code>.</p></li>
<li><p>Set <code>FifoThroughputLimit</code> to
<code>perMessageGroupId</code>.</p></li>
</ul>
<p>If you set these attributes to anything other than the values shown
for enabling high throughput, normal throughput is in effect and
deduplication occurs as specified.</p>
<p>For information on throughput quotas, see <a
href="https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/quotas-messages.html">Quotas
related to messages</a> in the <em>Amazon SQS Developer
Guide</em>.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$set_queue_attributes(
      QueueUrl = "string",
      Attributes = list(
        "string"
      )
    )
