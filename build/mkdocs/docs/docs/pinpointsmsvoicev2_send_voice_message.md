<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>pinpointsmsvoicev2_send_voice_message</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Allows you to send a request that sends a text message through Amazon Pinpoint

### Description

Allows you to send a request that sends a text message through Amazon
Pinpoint. This operation uses [Amazon
Polly](https://aws.amazon.com/polly/) to convert a text script into a
voice message.

### Usage

    pinpointsmsvoicev2_send_voice_message(DestinationPhoneNumber,
      OriginationIdentity, MessageBody, MessageBodyTextType, VoiceId,
      ConfigurationSetName, MaxPricePerMinute, TimeToLive, Context, DryRun)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="pinpointsmsvoicev2_send_voice_message_:_DestinationPhoneNumber">DestinationPhoneNumber</code></td>
<td><p>[required] The destination phone number in E.164 format.</p></td>
</tr>
<tr class="even">
<td><code
id="pinpointsmsvoicev2_send_voice_message_:_OriginationIdentity">OriginationIdentity</code></td>
<td><p>[required] The origination identity to use for the voice call.
This can be the PhoneNumber, PhoneNumberId, PhoneNumberArn, PoolId, or
PoolArn.</p></td>
</tr>
<tr class="odd">
<td><code
id="pinpointsmsvoicev2_send_voice_message_:_MessageBody">MessageBody</code></td>
<td><p>The text to convert to a voice message.</p></td>
</tr>
<tr class="even">
<td><code
id="pinpointsmsvoicev2_send_voice_message_:_MessageBodyTextType">MessageBodyTextType</code></td>
<td><p>Specifies if the MessageBody field contains text or <a
href="https://docs.aws.amazon.com/polly/latest/dg/what-is.html">speech
synthesis markup language (SSML)</a>.</p>
<ul>
<li><p>TEXT: This is the default value. When used the maximum character
limit is 3000.</p></li>
<li><p>SSML: When used the maximum character limit is 6000 including
SSML tagging.</p></li>
</ul></td>
</tr>
<tr class="odd">
<td><code
id="pinpointsmsvoicev2_send_voice_message_:_VoiceId">VoiceId</code></td>
<td><p>The voice for the <a
href="https://docs.aws.amazon.com/polly/latest/dg/what-is.html">Amazon
Polly</a> service to use. By default this is set to "MATTHEW".</p></td>
</tr>
<tr class="even">
<td><code
id="pinpointsmsvoicev2_send_voice_message_:_ConfigurationSetName">ConfigurationSetName</code></td>
<td><p>The name of the configuration set to use. This can be either the
ConfigurationSetName or ConfigurationSetArn.</p></td>
</tr>
<tr class="odd">
<td><code
id="pinpointsmsvoicev2_send_voice_message_:_MaxPricePerMinute">MaxPricePerMinute</code></td>
<td><p>The maximum amount to spend per voice message, in US
dollars.</p></td>
</tr>
<tr class="even">
<td><code
id="pinpointsmsvoicev2_send_voice_message_:_TimeToLive">TimeToLive</code></td>
<td><p>How long the voice message is valid for. By default this is 72
hours.</p></td>
</tr>
<tr class="odd">
<td><code
id="pinpointsmsvoicev2_send_voice_message_:_Context">Context</code></td>
<td><p>You can specify custom data in this field. If you do, that data
is logged to the event destination.</p></td>
</tr>
<tr class="even">
<td><code
id="pinpointsmsvoicev2_send_voice_message_:_DryRun">DryRun</code></td>
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

    svc$send_voice_message(
      DestinationPhoneNumber = "string",
      OriginationIdentity = "string",
      MessageBody = "string",
      MessageBodyTextType = "TEXT"|"SSML",
      VoiceId = "AMY"|"ASTRID"|"BIANCA"|"BRIAN"|"CAMILA"|"CARLA"|"CARMEN"|"CELINE"|"CHANTAL"|"CONCHITA"|"CRISTIANO"|"DORA"|"EMMA"|"ENRIQUE"|"EWA"|"FILIZ"|"GERAINT"|"GIORGIO"|"GWYNETH"|"HANS"|"INES"|"IVY"|"JACEK"|"JAN"|"JOANNA"|"JOEY"|"JUSTIN"|"KARL"|"KENDRA"|"KIMBERLY"|"LEA"|"LIV"|"LOTTE"|"LUCIA"|"LUPE"|"MADS"|"MAJA"|"MARLENE"|"MATHIEU"|"MATTHEW"|"MAXIM"|"MIA"|"MIGUEL"|"MIZUKI"|"NAJA"|"NICOLE"|"PENELOPE"|"RAVEENA"|"RICARDO"|"RUBEN"|"RUSSELL"|"SALLI"|"SEOYEON"|"TAKUMI"|"TATYANA"|"VICKI"|"VITORIA"|"ZEINA"|"ZHIYU",
      ConfigurationSetName = "string",
      MaxPricePerMinute = "string",
      TimeToLive = 123,
      Context = list(
        "string"
      ),
      DryRun = TRUE|FALSE
    )
