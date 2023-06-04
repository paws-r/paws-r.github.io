<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>connect_start_chat_contact</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Initiates a flow to start a new chat for the customer

### Description

Initiates a flow to start a new chat for the customer. Response of this
API provides a token required to obtain credentials from the
[CreateParticipantConnection](https://docs.aws.amazon.com/connect-participant/latest/APIReference/API_CreateParticipantConnection.html)
API in the Amazon Connect Participant Service.

When a new chat contact is successfully created, clients must subscribe
to the participant’s connection for the created chat within 5 minutes.
This is achieved by invoking
[CreateParticipantConnection](https://docs.aws.amazon.com/connect-participant/latest/APIReference/API_CreateParticipantConnection.html)
with WEBSOCKET and CONNECTION\_CREDENTIALS.

A 429 error occurs in the following situations:

-   API rate limit is exceeded. API TPS throttling returns a
    `TooManyRequests` exception.

-   The [quota for concurrent active
    chats](https://docs.aws.amazon.com/connect/latest/adminguide/amazon-connect-service-limits.html)
    is exceeded. Active chat throttling returns a
    `LimitExceededException`.

If you use the `ChatDurationInMinutes` parameter and receive a 400
error, your account may not support the ability to configure custom chat
durations. For more information, contact Amazon Web Services Support.

For more information about chat, see
[Chat](https://docs.aws.amazon.com/connect/latest/adminguide/web-and-mobile-chat.html)
in the *Amazon Connect Administrator Guide*.

### Usage

    connect_start_chat_contact(InstanceId, ContactFlowId, Attributes,
      ParticipantDetails, InitialMessage, ClientToken, ChatDurationInMinutes,
      SupportedMessagingContentTypes, PersistentChat, RelatedContactId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="connect_start_chat_contact_:_InstanceId">InstanceId</code></td>
<td><p>[required] The identifier of the Amazon Connect instance. You can
<a
href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find
the instance ID</a> in the Amazon Resource Name (ARN) of the
instance.</p></td>
</tr>
<tr class="even">
<td><code
id="connect_start_chat_contact_:_ContactFlowId">ContactFlowId</code></td>
<td><p>[required] The identifier of the flow for initiating the chat. To
see the ContactFlowId in the Amazon Connect console user interface, on
the navigation menu go to <strong>Routing</strong>, <strong>Contact
Flows</strong>. Choose the flow. On the flow page, under the name of the
flow, choose <strong>Show additional flow information</strong>. The
ContactFlowId is the last part of the ARN, shown here in bold:</p>
<p>arn:aws:connect:us-west-2:xxxxxxxxxxxx:instance/xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx/contact-flow/<strong>846ec553-a005-41c0-8341-xxxxxxxxxxxx</strong></p></td>
</tr>
<tr class="odd">
<td><code
id="connect_start_chat_contact_:_Attributes">Attributes</code></td>
<td><p>A custom key-value pair using an attribute map. The attributes
are standard Amazon Connect attributes. They can be accessed in flows
just like any other contact attributes.</p>
<p>There can be up to 32,768 UTF-8 bytes across all key-value pairs per
contact. Attribute keys can include only alphanumeric, dash, and
underscore characters.</p></td>
</tr>
<tr class="even">
<td><code
id="connect_start_chat_contact_:_ParticipantDetails">ParticipantDetails</code></td>
<td><p>[required] Information identifying the participant.</p></td>
</tr>
<tr class="odd">
<td><code
id="connect_start_chat_contact_:_InitialMessage">InitialMessage</code></td>
<td><p>The initial message to be sent to the newly created
chat.</p></td>
</tr>
<tr class="even">
<td><code
id="connect_start_chat_contact_:_ClientToken">ClientToken</code></td>
<td><p>A unique, case-sensitive identifier that you provide to ensure
the idempotency of the request. If not provided, the Amazon Web Services
SDK populates this field. For more information about idempotency, see <a
href="https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/">Making
retries safe with idempotent APIs</a>.</p></td>
</tr>
<tr class="odd">
<td><code
id="connect_start_chat_contact_:_ChatDurationInMinutes">ChatDurationInMinutes</code></td>
<td><p>The total duration of the newly started chat session. If not
specified, the chat session duration defaults to 25 hour. The minimum
configurable time is 60 minutes. The maximum configurable time is 10,080
minutes (7 days).</p></td>
</tr>
<tr class="even">
<td><code
id="connect_start_chat_contact_:_SupportedMessagingContentTypes">SupportedMessagingContentTypes</code></td>
<td><p>The supported chat message content types. Supported types are
<code>text/plain</code>, <code>text/markdown</code>,
<code>application/json</code>,
<code>application/vnd.amazonaws.connect.message.interactive</code>, and
<code>application/vnd.amazonaws.connect.message.interactive.response</code>.</p>
<p>Content types must always contain <code>text/plain</code>. You can
then put any other supported type in the list. For example, all the
following lists are valid because they contain <code>text/plain</code>:
<code
style="white-space: pre;">⁠[text/plain, text/markdown, application/json]⁠</code>,
<code style="white-space: pre;">⁠[text/markdown, text/plain]⁠</code>,
<code
style="white-space: pre;">⁠[text/plain, application/json, application/vnd.amazonaws.connect.message.interactive.response]⁠</code>.</p>
<p>The type
<code>application/vnd.amazonaws.connect.message.interactive</code> is
required to use the <a
href="https://docs.aws.amazon.com/connect/latest/adminguide/show-view-block.html">Show
view</a> flow block.</p></td>
</tr>
<tr class="odd">
<td><code
id="connect_start_chat_contact_:_PersistentChat">PersistentChat</code></td>
<td><p>Enable persistent chats. For more information about enabling
persistent chat, and for example use cases and how to configure for
them, see <a
href="https://docs.aws.amazon.com/connect/latest/adminguide/chat-persistence.html">Enable
persistent chat</a>.</p></td>
</tr>
<tr class="even">
<td><code
id="connect_start_chat_contact_:_RelatedContactId">RelatedContactId</code></td>
<td><p>The unique identifier for an Amazon Connect contact. This
identifier is related to the chat starting.</p>
<p>You cannot provide data for both RelatedContactId and
PersistentChat.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ContactId = "string",
      ParticipantId = "string",
      ParticipantToken = "string",
      ContinuedFromContactId = "string"
    )

### Request syntax

    svc$start_chat_contact(
      InstanceId = "string",
      ContactFlowId = "string",
      Attributes = list(
        "string"
      ),
      ParticipantDetails = list(
        DisplayName = "string"
      ),
      InitialMessage = list(
        ContentType = "string",
        Content = "string"
      ),
      ClientToken = "string",
      ChatDurationInMinutes = 123,
      SupportedMessagingContentTypes = list(
        "string"
      ),
      PersistentChat = list(
        RehydrationType = "ENTIRE_PAST_SESSION"|"FROM_SEGMENT",
        SourceContactId = "string"
      ),
      RelatedContactId = "string"
    )
