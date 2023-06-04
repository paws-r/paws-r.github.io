<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>pinpointsmsvoice_send_voice_message</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Create a new voice message and send it to a recipient's phone number

### Description

Create a new voice message and send it to a recipient's phone number.

### Usage

    pinpointsmsvoice_send_voice_message(CallerId, ConfigurationSetName,
      Content, DestinationPhoneNumber, OriginationPhoneNumber)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="pinpointsmsvoice_send_voice_message_:_CallerId">CallerId</code></td>
<td><p>The phone number that appears on recipients' devices when they
receive the message.</p></td>
</tr>
<tr class="even">
<td><code
id="pinpointsmsvoice_send_voice_message_:_ConfigurationSetName">ConfigurationSetName</code></td>
<td><p>The name of the configuration set that you want to use to send
the message.</p></td>
</tr>
<tr class="odd">
<td><code
id="pinpointsmsvoice_send_voice_message_:_Content">Content</code></td>
<td></td>
</tr>
<tr class="even">
<td><code
id="pinpointsmsvoice_send_voice_message_:_DestinationPhoneNumber">DestinationPhoneNumber</code></td>
<td><p>The phone number that you want to send the voice message
to.</p></td>
</tr>
<tr class="odd">
<td><code
id="pinpointsmsvoice_send_voice_message_:_OriginationPhoneNumber">OriginationPhoneNumber</code></td>
<td><p>The phone number that Amazon Pinpoint should use to send the
voice message. This isn't necessarily the phone number that appears on
recipients' devices when they receive the message, because you can
specify a CallerId parameter in the request.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      MessageId = "string"
    )

### Request syntax

    svc$send_voice_message(
      CallerId = "string",
      ConfigurationSetName = "string",
      Content = list(
        CallInstructionsMessage = list(
          Text = "string"
        ),
        PlainTextMessage = list(
          LanguageCode = "string",
          Text = "string",
          VoiceId = "string"
        ),
        SSMLMessage = list(
          LanguageCode = "string",
          Text = "string",
          VoiceId = "string"
        )
      ),
      DestinationPhoneNumber = "string",
      OriginationPhoneNumber = "string"
    )
