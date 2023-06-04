<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ivschat_delete_message</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Sends an event to a specific room which directs clients to delete a specific message; that is, unrender it from view and delete it from the client’s chat history

### Description

Sends an event to a specific room which directs clients to delete a
specific message; that is, unrender it from view and delete it from the
client’s chat history. This event’s `EventName` is `aws:DELETE_MESSAGE`.
This replicates the
[DeleteMessage](https://docs.aws.amazon.com/ivs/latest/chatmsgapireference/actions-deletemessage-publish.html)
WebSocket operation in the Amazon IVS Chat Messaging API.

### Usage

    ivschat_delete_message(id, reason, roomIdentifier)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="ivschat_delete_message_:_id">id</code></td>
<td><p>[required] ID of the message to be deleted. This is the
<code>Id</code> field in the received message (see <a
href="https://docs.aws.amazon.com/ivs/latest/chatmsgapireference/actions-message-subscribe.html">Message
(Subscribe)</a> in the Chat Messaging API).</p></td>
</tr>
<tr class="even">
<td><code id="ivschat_delete_message_:_reason">reason</code></td>
<td><p>Reason for deleting the message.</p></td>
</tr>
<tr class="odd">
<td><code
id="ivschat_delete_message_:_roomIdentifier">roomIdentifier</code></td>
<td><p>[required] Identifier of the room where the message should be
deleted. Currently this must be an ARN.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      id = "string"
    )

### Request syntax

    svc$delete_message(
      id = "string",
      reason = "string",
      roomIdentifier = "string"
    )
