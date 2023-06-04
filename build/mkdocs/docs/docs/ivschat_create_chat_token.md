<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ivschat_create_chat_token</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates an encrypted token that is used by a chat participant to establish an individual WebSocket chat connection to a room

### Description

Creates an encrypted token that is used by a chat participant to
establish an individual WebSocket chat connection to a room. When the
token is used to connect to chat, the connection is valid for the
session duration specified in the request. The token becomes invalid at
the token-expiration timestamp included in the response.

Use the `capabilities` field to permit an end user to send messages or
moderate a room.

The `attributes` field securely attaches structured data to the chat
session; the data is included within each message sent by the end user
and received by other participants in the room. Common use cases for
attributes include passing end-user profile data like an icon, display
name, colors, badges, and other display features.

Encryption keys are owned by Amazon IVS Chat and never used directly by
your application.

### Usage

    ivschat_create_chat_token(attributes, capabilities, roomIdentifier,
      sessionDurationInMinutes, userId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ivschat_create_chat_token_:_attributes">attributes</code></td>
<td><p>Application-provided attributes to encode into the token and
attach to a chat session. Map keys and values can contain UTF-8 encoded
text. The maximum length of this field is 1 KB total.</p></td>
</tr>
<tr class="even">
<td><code
id="ivschat_create_chat_token_:_capabilities">capabilities</code></td>
<td><p>Set of capabilities that the user is allowed to perform in the
room. Default: None (the capability to view messages is implicitly
included in all requests).</p></td>
</tr>
<tr class="odd">
<td><code
id="ivschat_create_chat_token_:_roomIdentifier">roomIdentifier</code></td>
<td><p>[required] Identifier of the room that the client is trying to
access. Currently this must be an ARN.</p></td>
</tr>
<tr class="even">
<td><code
id="ivschat_create_chat_token_:_sessionDurationInMinutes">sessionDurationInMinutes</code></td>
<td><p>Session duration (in minutes), after which the session expires.
Default: 60 (1 hour).</p></td>
</tr>
<tr class="odd">
<td><code id="ivschat_create_chat_token_:_userId">userId</code></td>
<td><p>[required] Application-provided ID that uniquely identifies the
user associated with this token. This can be any UTF-8 encoded
text.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      sessionExpirationTime = as.POSIXct(
        "2015-01-01"
      ),
      token = "string",
      tokenExpirationTime = as.POSIXct(
        "2015-01-01"
      )
    )

### Request syntax

    svc$create_chat_token(
      attributes = list(
        "string"
      ),
      capabilities = list(
        "SEND_MESSAGE"|"DISCONNECT_USER"|"DELETE_MESSAGE"
      ),
      roomIdentifier = "string",
      sessionDurationInMinutes = 123,
      userId = "string"
    )
