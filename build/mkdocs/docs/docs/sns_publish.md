<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sns_publish</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Sends a message to an Amazon SNS topic, a text message (SMS message) directly to a phone number, or a message to a mobile platform endpoint (when you specify the TargetArn)

### Description

Sends a message to an Amazon SNS topic, a text message (SMS message)
directly to a phone number, or a message to a mobile platform endpoint
(when you specify the `TargetArn`).

If you send a message to a topic, Amazon SNS delivers the message to
each endpoint that is subscribed to the topic. The format of the message
depends on the notification protocol for each subscribed endpoint.

When a `messageId` is returned, the message is saved and Amazon SNS
immediately delivers it to subscribers.

To use the `publish` action for publishing a message to a mobile
endpoint, such as an app on a Kindle device or mobile phone, you must
specify the EndpointArn for the TargetArn parameter. The EndpointArn is
returned when making a call with the `create_platform_endpoint` action.

For more information about formatting messages, see [Send Custom
Platform-Specific Payloads in Messages to Mobile
Devices](https://docs.aws.amazon.com/sns/latest/dg/sns-send-custom-platform-specific-payloads-mobile-devices.html).

You can publish messages only to topics and endpoints in the same Amazon
Web Services Region.

### Usage

    sns_publish(TopicArn, TargetArn, PhoneNumber, Message, Subject,
      MessageStructure, MessageAttributes, MessageDeduplicationId,
      MessageGroupId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="sns_publish_:_TopicArn">TopicArn</code></td>
<td><p>The topic you want to publish to.</p>
<p>If you don't specify a value for the <code>TopicArn</code> parameter,
you must specify a value for the <code>PhoneNumber</code> or
<code>TargetArn</code> parameters.</p></td>
</tr>
<tr class="even">
<td><code id="sns_publish_:_TargetArn">TargetArn</code></td>
<td><p>If you don't specify a value for the <code>TargetArn</code>
parameter, you must specify a value for the <code>PhoneNumber</code> or
<code>TopicArn</code> parameters.</p></td>
</tr>
<tr class="odd">
<td><code id="sns_publish_:_PhoneNumber">PhoneNumber</code></td>
<td><p>The phone number to which you want to deliver an SMS message. Use
E.164 format.</p>
<p>If you don't specify a value for the <code>PhoneNumber</code>
parameter, you must specify a value for the <code>TargetArn</code> or
<code>TopicArn</code> parameters.</p></td>
</tr>
<tr class="even">
<td><code id="sns_publish_:_Message">Message</code></td>
<td><p>[required] The message you want to send.</p>
<p>If you are publishing to a topic and you want to send the same
message to all transport protocols, include the text of the message as a
String value. If you want to send different messages for each transport
protocol, set the value of the <code>MessageStructure</code> parameter
to <code>json</code> and use a JSON object for the <code>Message</code>
parameter.</p>
<p>Constraints:</p>
<ul>
<li><p>With the exception of SMS, messages must be UTF-8 encoded strings
and at most 256 KB in size (262,144 bytes, not 262,144
characters).</p></li>
<li><p>For SMS, each message can contain up to 140 characters. This
character limit depends on the encoding schema. For example, an SMS
message can contain 160 GSM characters, 140 ASCII characters, or 70
UCS-2 characters.</p>
<p>If you publish a message that exceeds this size limit, Amazon SNS
sends the message as multiple messages, each fitting within the size
limit. Messages aren't truncated mid-word but are cut off at whole-word
boundaries.</p>
<p>The total size limit for a single SMS <code>publish</code> action is
1,600 characters.</p></li>
</ul>
<p>JSON-specific constraints:</p>
<ul>
<li><p>Keys in the JSON object that correspond to supported transport
protocols must have simple JSON string values.</p></li>
<li><p>The values will be parsed (unescaped) before they are used in
outgoing messages.</p></li>
<li><p>Outbound notifications are JSON encoded (meaning that the
characters will be reescaped for sending).</p></li>
<li><p>Values have a minimum length of 0 (the empty string, "", is
allowed).</p></li>
<li><p>Values have a maximum length bounded by the overall message size
(so, including multiple protocols may limit message sizes).</p></li>
<li><p>Non-string values will cause the key to be ignored.</p></li>
<li><p>Keys that do not correspond to supported transport protocols are
ignored.</p></li>
<li><p>Duplicate keys are not allowed.</p></li>
<li><p>Failure to parse or validate any key or value in the message will
cause the <code>publish</code> call to return an error (no partial
delivery).</p></li>
</ul></td>
</tr>
<tr class="odd">
<td><code id="sns_publish_:_Subject">Subject</code></td>
<td><p>Optional parameter to be used as the "Subject" line when the
message is delivered to email endpoints. This field will also be
included, if present, in the standard JSON messages delivered to other
endpoints.</p>
<p>Constraints: Subjects must be ASCII text that begins with a letter,
number, or punctuation mark; must not include line breaks or control
characters; and must be less than 100 characters long.</p></td>
</tr>
<tr class="even">
<td><code
id="sns_publish_:_MessageStructure">MessageStructure</code></td>
<td><p>Set <code>MessageStructure</code> to <code>json</code> if you
want to send a different message for each protocol. For example, using
one publish action, you can send a short message to your SMS subscribers
and a longer message to your email subscribers. If you set
<code>MessageStructure</code> to <code>json</code>, the value of the
<code>Message</code> parameter must:</p>
<ul>
<li><p>be a syntactically valid JSON object; and</p></li>
<li><p>contain at least a top-level JSON key of "default" with a value
that is a string.</p></li>
</ul>
<p>You can define other top-level keys that define the message you want
to send to a specific transport protocol (e.g., "http").</p>
<p>Valid value: <code>json</code></p></td>
</tr>
<tr class="odd">
<td><code
id="sns_publish_:_MessageAttributes">MessageAttributes</code></td>
<td><p>Message attributes for Publish action.</p></td>
</tr>
<tr class="even">
<td><code
id="sns_publish_:_MessageDeduplicationId">MessageDeduplicationId</code></td>
<td><p>This parameter applies only to FIFO (first-in-first-out) topics.
The <code>MessageDeduplicationId</code> can contain up to 128
alphanumeric characters <code
style="white-space: pre;">⁠(a-z, A-Z, 0-9)⁠</code> and punctuation <code
style="white-space: pre;">⁠(!\"#$%&amp;\'()*+,-./:;&lt;=&gt;?@[\]^_\`{|}~)⁠</code>.</p>
<p>Every message must have a unique <code>MessageDeduplicationId</code>,
which is a token used for deduplication of sent messages. If a message
with a particular <code>MessageDeduplicationId</code> is sent
successfully, any message sent with the same
<code>MessageDeduplicationId</code> during the 5-minute deduplication
interval is treated as a duplicate.</p>
<p>If the topic has <code>ContentBasedDeduplication</code> set, the
system generates a <code>MessageDeduplicationId</code> based on the
contents of the message. Your <code>MessageDeduplicationId</code>
overrides the generated one.</p>
<p>[]: R:%5C</p></td>
</tr>
<tr class="odd">
<td><code id="sns_publish_:_MessageGroupId">MessageGroupId</code></td>
<td><p>This parameter applies only to FIFO (first-in-first-out) topics.
The <code>MessageGroupId</code> can contain up to 128 alphanumeric
characters <code style="white-space: pre;">⁠(a-z, A-Z, 0-9)⁠</code> and
punctuation <code
style="white-space: pre;">⁠(!\"#$%&amp;\'()*+,-./:;&lt;=&gt;?@[\]^_\`{|}~)⁠</code>.</p>
<p>The <code>MessageGroupId</code> is a tag that specifies that a
message belongs to a specific message group. Messages that belong to the
same message group are processed in a FIFO manner (however, messages in
different message groups might be processed out of order). Every message
must include a <code>MessageGroupId</code>.</p>
<p>[]: R:%5C</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      MessageId = "string",
      SequenceNumber = "string"
    )

### Request syntax

    svc$publish(
      TopicArn = "string",
      TargetArn = "string",
      PhoneNumber = "string",
      Message = "string",
      Subject = "string",
      MessageStructure = "string",
      MessageAttributes = list(
        list(
          DataType = "string",
          StringValue = "string",
          BinaryValue = raw
        )
      ),
      MessageDeduplicationId = "string",
      MessageGroupId = "string"
    )
