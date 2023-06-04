<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sns_set_subscription_attributes</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Allows a subscription owner to set an attribute of the subscription to a new value

### Description

Allows a subscription owner to set an attribute of the subscription to a
new value.

### Usage

    sns_set_subscription_attributes(SubscriptionArn, AttributeName,
      AttributeValue)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="sns_set_subscription_attributes_:_SubscriptionArn">SubscriptionArn</code></td>
<td><p>[required] The ARN of the subscription to modify.</p></td>
</tr>
<tr class="even">
<td><code
id="sns_set_subscription_attributes_:_AttributeName">AttributeName</code></td>
<td><p>[required] A map of attributes with their corresponding
values.</p>
<p>The following lists the names, descriptions, and values of the
special request parameters that this action uses:</p>
<ul>
<li><p><code>DeliveryPolicy</code> – The policy that defines how Amazon
SNS retries failed deliveries to HTTP/S endpoints.</p></li>
<li><p><code>FilterPolicy</code> – The simple JSON object that lets your
subscriber receive only a subset of messages, rather than receiving
every message published to the topic.</p></li>
<li><p><code>FilterPolicyScope</code> – This attribute lets you choose
the filtering scope by using one of the following string value
types:</p>
<ul>
<li><p><code>MessageAttributes</code> (default) – The filter is applied
on the message attributes.</p></li>
<li><p><code>MessageBody</code> – The filter is applied on the message
body.</p></li>
</ul></li>
<li><p><code>RawMessageDelivery</code> – When set to <code>true</code>,
enables raw message delivery to Amazon SQS or HTTP/S endpoints. This
eliminates the need for the endpoints to process JSON formatting, which
is otherwise created for Amazon SNS metadata.</p></li>
<li><p><code>RedrivePolicy</code> – When specified, sends undeliverable
messages to the specified Amazon SQS dead-letter queue. Messages that
can't be delivered due to client errors (for example, when the
subscribed endpoint is unreachable) or server errors (for example, when
the service that powers the subscribed endpoint becomes unavailable) are
held in the dead-letter queue for further analysis or
reprocessing.</p></li>
</ul>
<p>The following attribute applies only to Amazon Kinesis Data Firehose
delivery stream subscriptions:</p>
<ul>
<li><p><code>SubscriptionRoleArn</code> – The ARN of the IAM role that
has the following:</p>
<ul>
<li><p>Permission to write to the Kinesis Data Firehose delivery
stream</p></li>
<li><p>Amazon SNS listed as a trusted entity</p></li>
</ul>
<p>Specifying a valid ARN for this attribute is required for Kinesis
Data Firehose delivery stream subscriptions. For more information, see
<a
href="https://docs.aws.amazon.com/sns/latest/dg/sns-firehose-as-subscriber.html">Fanout
to Kinesis Data Firehose delivery streams</a> in the <em>Amazon SNS
Developer Guide</em>.</p></li>
</ul></td>
</tr>
<tr class="odd">
<td><code
id="sns_set_subscription_attributes_:_AttributeValue">AttributeValue</code></td>
<td><p>The new value for the attribute in JSON format.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$set_subscription_attributes(
      SubscriptionArn = "string",
      AttributeName = "string",
      AttributeValue = "string"
    )
