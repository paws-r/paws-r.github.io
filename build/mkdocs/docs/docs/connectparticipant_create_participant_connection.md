<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>connectparticipant_create_participant_connection</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates the participant's connection

### Description

Creates the participant's connection.

`ParticipantToken` is used for invoking this API instead of
`ConnectionToken`.

The participant token is valid for the lifetime of the participant –
until they are part of a contact.

The response URL for `WEBSOCKET` Type has a connect expiry timeout of
100s. Clients must manually connect to the returned websocket URL and
subscribe to the desired topic.

For chat, you need to publish the following on the established websocket
connection:

`⁠{"topic":"aws/subscribe","content":{"topics":["aws/chat"]}}⁠`

Upon websocket URL expiry, as specified in the response ConnectionExpiry
parameter, clients need to call this API again to obtain a new websocket
URL and perform the same steps as before.

**Message streaming support**: This API can also be used together with
the
[StartContactStreaming](https://docs.aws.amazon.com/connect/latest/APIReference/API_StartContactStreaming.html)
API to create a participant connection for chat contacts that are not
using a websocket. For more information about message streaming, [Enable
real-time chat message
streaming](https://docs.aws.amazon.com/connect/latest/adminguide/chat-message-streaming.html)
in the *Amazon Connect Administrator Guide*.

**Feature specifications**: For information about feature
specifications, such as the allowed number of open websocket connections
per participant, see [Feature
specifications](https://docs.aws.amazon.com/connect/latest/adminguide/amazon-connect-service-limits.html#feature-limits)
in the *Amazon Connect Administrator Guide*.

The Amazon Connect Participant Service APIs do not use [Signature
Version 4
authentication](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html).

### Usage

    connectparticipant_create_participant_connection(Type, ParticipantToken,
      ConnectParticipant)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="connectparticipant_create_participant_connection_:_Type">Type</code></td>
<td><p>Type of connection information required. This can be omitted if
<code>ConnectParticipant</code> is <code>true</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="connectparticipant_create_participant_connection_:_ParticipantToken">ParticipantToken</code></td>
<td><p>[required] This is a header parameter.</p>
<p>The ParticipantToken as obtained from <a
href="https://docs.aws.amazon.com/connect/latest/APIReference/API_StartChatContact.html">StartChatContact</a>
API response.</p></td>
</tr>
<tr class="odd">
<td><code
id="connectparticipant_create_participant_connection_:_ConnectParticipant">ConnectParticipant</code></td>
<td><p>Amazon Connect Participant is used to mark the participant as
connected for customer participant in message streaming, as well as for
agent or manager participant in non-streaming chats.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Websocket = list(
        Url = "string",
        ConnectionExpiry = "string"
      ),
      ConnectionCredentials = list(
        ConnectionToken = "string",
        Expiry = "string"
      )
    )

### Request syntax

    svc$create_participant_connection(
      Type = list(
        "WEBSOCKET"|"CONNECTION_CREDENTIALS"
      ),
      ParticipantToken = "string",
      ConnectParticipant = TRUE|FALSE
    )
