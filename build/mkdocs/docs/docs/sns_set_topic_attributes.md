<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sns_set_topic_attributes</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Allows a topic owner to set an attribute of the topic to a new value

### Description

Allows a topic owner to set an attribute of the topic to a new value.

To remove the ability to change topic permissions, you must deny
permissions to the `add_permission`, `remove_permission`, and
`set_topic_attributes` actions in your IAM policy.

### Usage

    sns_set_topic_attributes(TopicArn, AttributeName, AttributeValue)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="sns_set_topic_attributes_:_TopicArn">TopicArn</code></td>
<td><p>[required] The ARN of the topic to modify.</p></td>
</tr>
<tr class="even">
<td><code
id="sns_set_topic_attributes_:_AttributeName">AttributeName</code></td>
<td><p>[required] A map of attributes with their corresponding
values.</p>
<p>The following lists the names, descriptions, and values of the
special request parameters that the <code>set_topic_attributes</code>
action uses:</p>
<ul>
<li><p><code>ApplicationSuccessFeedbackRoleArn</code> – Indicates failed
message delivery status for an Amazon SNS topic that is subscribed to a
platform application endpoint.</p></li>
<li><p><code>DeliveryPolicy</code> – The policy that defines how Amazon
SNS retries failed deliveries to HTTP/S endpoints.</p></li>
<li><p><code>DisplayName</code> – The display name to use for a topic
with SMS subscriptions.</p></li>
<li><p><code>Policy</code> – The policy that defines who can access your
topic. By default, only the topic owner can publish or subscribe to the
topic.</p></li>
<li><p><code>TracingConfig</code> – Tracing mode of an Amazon SNS topic.
By default <code>TracingConfig</code> is set to
<code>PassThrough</code>, and the topic passes through the tracing
header it receives from an Amazon SNS publisher to its subscriptions. If
set to <code>Active</code>, Amazon SNS will vend X-Ray segment data to
topic owner account if the sampled flag in the tracing header is true.
This is only supported on standard topics.</p></li>
<li><p>HTTP</p>
<ul>
<li><p><code>HTTPSuccessFeedbackRoleArn</code> – Indicates successful
message delivery status for an Amazon SNS topic that is subscribed to an
HTTP endpoint.</p></li>
<li><p><code>HTTPSuccessFeedbackSampleRate</code> – Indicates percentage
of successful messages to sample for an Amazon SNS topic that is
subscribed to an HTTP endpoint.</p></li>
<li><p><code>HTTPFailureFeedbackRoleArn</code> – Indicates failed
message delivery status for an Amazon SNS topic that is subscribed to an
HTTP endpoint.</p></li>
</ul></li>
<li><p>Amazon Kinesis Data Firehose</p>
<ul>
<li><p><code>FirehoseSuccessFeedbackRoleArn</code> – Indicates
successful message delivery status for an Amazon SNS topic that is
subscribed to an Amazon Kinesis Data Firehose endpoint.</p></li>
<li><p><code>FirehoseSuccessFeedbackSampleRate</code> – Indicates
percentage of successful messages to sample for an Amazon SNS topic that
is subscribed to an Amazon Kinesis Data Firehose endpoint.</p></li>
<li><p><code>FirehoseFailureFeedbackRoleArn</code> – Indicates failed
message delivery status for an Amazon SNS topic that is subscribed to an
Amazon Kinesis Data Firehose endpoint.</p></li>
</ul></li>
<li><p>Lambda</p>
<ul>
<li><p><code>LambdaSuccessFeedbackRoleArn</code> – Indicates successful
message delivery status for an Amazon SNS topic that is subscribed to an
Lambda endpoint.</p></li>
<li><p><code>LambdaSuccessFeedbackSampleRate</code> – Indicates
percentage of successful messages to sample for an Amazon SNS topic that
is subscribed to an Lambda endpoint.</p></li>
<li><p><code>LambdaFailureFeedbackRoleArn</code> – Indicates failed
message delivery status for an Amazon SNS topic that is subscribed to an
Lambda endpoint.</p></li>
</ul></li>
<li><p>Platform application endpoint</p>
<ul>
<li><p><code>ApplicationSuccessFeedbackRoleArn</code> – Indicates
successful message delivery status for an Amazon SNS topic that is
subscribed to an Amazon Web Services application endpoint.</p></li>
<li><p><code>ApplicationSuccessFeedbackSampleRate</code> – Indicates
percentage of successful messages to sample for an Amazon SNS topic that
is subscribed to an Amazon Web Services application endpoint.</p></li>
<li><p><code>ApplicationFailureFeedbackRoleArn</code> – Indicates failed
message delivery status for an Amazon SNS topic that is subscribed to an
Amazon Web Services application endpoint.</p></li>
</ul>
<p>In addition to being able to configure topic attributes for message
delivery status of notification messages sent to Amazon SNS application
endpoints, you can also configure application attributes for the
delivery status of push notification messages sent to push notification
services.</p>
<p>For example, For more information, see <a
href="https://docs.aws.amazon.com/sns/latest/dg/sns-msg-status.html">Using
Amazon SNS Application Attributes for Message Delivery
Status</a>.</p></li>
<li><p>Amazon SQS</p>
<ul>
<li><p><code>SQSSuccessFeedbackRoleArn</code> – Indicates successful
message delivery status for an Amazon SNS topic that is subscribed to an
Amazon SQS endpoint.</p></li>
<li><p><code>SQSSuccessFeedbackSampleRate</code> – Indicates percentage
of successful messages to sample for an Amazon SNS topic that is
subscribed to an Amazon SQS endpoint.</p></li>
<li><p><code>SQSFailureFeedbackRoleArn</code> – Indicates failed message
delivery status for an Amazon SNS topic that is subscribed to an Amazon
SQS endpoint.</p></li>
</ul></li>
</ul>
<p>The \&lt;ENDPOINT\&gt;SuccessFeedbackRoleArn and
\&lt;ENDPOINT\&gt;FailureFeedbackRoleArn attributes are used to give
Amazon SNS write access to use CloudWatch Logs on your behalf. The
\&lt;ENDPOINT\&gt;SuccessFeedbackSampleRate attribute is for specifying
the sample rate percentage (0-100) of successfully delivered messages.
After you configure the \&lt;ENDPOINT\&gt;FailureFeedbackRoleArn
attribute, then all failed message deliveries generate CloudWatch
Logs.</p>
<p>The following attribute applies only to <a
href="https://docs.aws.amazon.com/sns/latest/dg/sns-server-side-encryption.html">server-side-encryption</a>:</p>
<ul>
<li><p><code>KmsMasterKeyId</code> – The ID of an Amazon Web Services
managed customer master key (CMK) for Amazon SNS or a custom CMK. For
more information, see <a
href="https://docs.aws.amazon.com/sns/latest/dg/sns-server-side-encryption.html#sse-key-terms">Key
Terms</a>. For more examples, see <a
href="https://docs.aws.amazon.com/kms/latest/APIReference/API_DescribeKey.html#API_DescribeKey_RequestParameters">KeyId</a>
in the <em>Key Management Service API Reference</em>.</p></li>
<li><p><code>SignatureVersion</code> – The signature version corresponds
to the hashing algorithm used while creating the signature of the
notifications, subscription confirmations, or unsubscribe confirmation
messages sent by Amazon SNS. By default, <code>SignatureVersion</code>
is set to <code>1</code>.</p></li>
</ul>
<p>The following attribute applies only to <a
href="https://docs.aws.amazon.com/sns/latest/dg/sns-fifo-topics.html">FIFO
topics</a>:</p>
<ul>
<li><p><code>ContentBasedDeduplication</code> – Enables content-based
deduplication for FIFO topics.</p>
<ul>
<li><p>By default, <code>ContentBasedDeduplication</code> is set to
<code>false</code>. If you create a FIFO topic and this attribute is
<code>false</code>, you must specify a value for the
<code>MessageDeduplicationId</code> parameter for the
<code>publish</code> action.</p></li>
<li><p>When you set <code>ContentBasedDeduplication</code> to
<code>true</code>, Amazon SNS uses a SHA-256 hash to generate the
<code>MessageDeduplicationId</code> using the body of the message (but
not the attributes of the message).</p>
<p>(Optional) To override the generated value, you can specify a value
for the <code>MessageDeduplicationId</code> parameter for the
<code>publish</code> action.</p></li>
</ul></li>
</ul></td>
</tr>
<tr class="odd">
<td><code
id="sns_set_topic_attributes_:_AttributeValue">AttributeValue</code></td>
<td><p>The new value for the attribute.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$set_topic_attributes(
      TopicArn = "string",
      AttributeName = "string",
      AttributeValue = "string"
    )
