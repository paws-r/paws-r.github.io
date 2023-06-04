<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>pinpointsmsvoicev2_send_text_message</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a new text message and sends it to a recipient's phone number

### Description

Creates a new text message and sends it to a recipient's phone number.

SMS throughput limits are measured in Message Parts per Second (MPS).
Your MPS limit depends on the destination country of your messages, as
well as the type of phone number (origination number) that you use to
send the message. For more information, see [Message Parts per Second
(MPS)
limits](https://docs.aws.amazon.com/pinpoint/latest/userguide/channels-sms-limitations-mps.html)
in the *Amazon Pinpoint User Guide*.

### Usage

    pinpointsmsvoicev2_send_text_message(DestinationPhoneNumber,
      OriginationIdentity, MessageBody, MessageType, Keyword,
      ConfigurationSetName, MaxPrice, TimeToLive, Context,
      DestinationCountryParameters, DryRun)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="pinpointsmsvoicev2_send_text_message_:_DestinationPhoneNumber">DestinationPhoneNumber</code></td>
<td><p>[required] The destination phone number in E.164 format.</p></td>
</tr>
<tr class="even">
<td><code
id="pinpointsmsvoicev2_send_text_message_:_OriginationIdentity">OriginationIdentity</code></td>
<td><p>The origination identity of the message. This can be either the
PhoneNumber, PhoneNumberId, PhoneNumberArn, SenderId, SenderIdArn,
PoolId, or PoolArn.</p></td>
</tr>
<tr class="odd">
<td><code
id="pinpointsmsvoicev2_send_text_message_:_MessageBody">MessageBody</code></td>
<td><p>The body of the text message.</p></td>
</tr>
<tr class="even">
<td><code
id="pinpointsmsvoicev2_send_text_message_:_MessageType">MessageType</code></td>
<td><p>The type of message. Valid values are TRANSACTIONAL for messages
that are critical or time-sensitive and PROMOTIONAL for messages that
aren't critical or time-sensitive.</p></td>
</tr>
<tr class="odd">
<td><code
id="pinpointsmsvoicev2_send_text_message_:_Keyword">Keyword</code></td>
<td><p>When you register a short code in the US, you must specify a
program name. If you don’t have a US short code, omit this
attribute.</p></td>
</tr>
<tr class="even">
<td><code
id="pinpointsmsvoicev2_send_text_message_:_ConfigurationSetName">ConfigurationSetName</code></td>
<td><p>The name of the configuration set to use. This can be either the
ConfigurationSetName or ConfigurationSetArn.</p></td>
</tr>
<tr class="odd">
<td><code
id="pinpointsmsvoicev2_send_text_message_:_MaxPrice">MaxPrice</code></td>
<td><p>The maximum amount that you want to spend, in US dollars, per
each text message part. A text message can contain multiple
parts.</p></td>
</tr>
<tr class="even">
<td><code
id="pinpointsmsvoicev2_send_text_message_:_TimeToLive">TimeToLive</code></td>
<td><p>How long the text message is valid for. By default this is 72
hours.</p></td>
</tr>
<tr class="odd">
<td><code
id="pinpointsmsvoicev2_send_text_message_:_Context">Context</code></td>
<td><p>You can specify custom data in this field. If you do, that data
is logged to the event destination.</p></td>
</tr>
<tr class="even">
<td><code
id="pinpointsmsvoicev2_send_text_message_:_DestinationCountryParameters">DestinationCountryParameters</code></td>
<td><p>This field is used for any country-specific registration
requirements. Currently, this setting is only used when you send
messages to recipients in India using a sender ID. For more information
see <a
href="https://docs.aws.amazon.com/pinpoint/latest/userguide/channels-sms-senderid-india.html">Special
requirements for sending SMS messages to recipients in
India</a>.</p></td>
</tr>
<tr class="odd">
<td><code
id="pinpointsmsvoicev2_send_text_message_:_DryRun">DryRun</code></td>
<td><p>When set to true, the message is checked and validated, but isn't
sent to the end recipient.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      MessageId = "string"
    )

### Request syntax

    svc$send_text_message(
      DestinationPhoneNumber = "string",
      OriginationIdentity = "string",
      MessageBody = "string",
      MessageType = "TRANSACTIONAL"|"PROMOTIONAL",
      Keyword = "string",
      ConfigurationSetName = "string",
      MaxPrice = "string",
      TimeToLive = 123,
      Context = list(
        "string"
      ),
      DestinationCountryParameters = list(
        "string"
      ),
      DryRun = TRUE|FALSE
    )
