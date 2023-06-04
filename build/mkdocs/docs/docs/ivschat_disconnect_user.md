<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ivschat_disconnect_user</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Disconnects all connections using a specified user ID from a room

### Description

Disconnects all connections using a specified user ID from a room. This
replicates the
[DisconnectUser](https://docs.aws.amazon.com/ivs/latest/chatmsgapireference/actions-disconnectuser-publish.html)
WebSocket operation in the Amazon IVS Chat Messaging API.

### Usage

    ivschat_disconnect_user(reason, roomIdentifier, userId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="ivschat_disconnect_user_:_reason">reason</code></td>
<td><p>Reason for disconnecting the user.</p></td>
</tr>
<tr class="even">
<td><code
id="ivschat_disconnect_user_:_roomIdentifier">roomIdentifier</code></td>
<td><p>[required] Identifier of the room from which the user's clients
should be disconnected. Currently this must be an ARN.</p></td>
</tr>
<tr class="odd">
<td><code id="ivschat_disconnect_user_:_userId">userId</code></td>
<td><p>[required] ID of the user (connection) to disconnect from the
room.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$disconnect_user(
      reason = "string",
      roomIdentifier = "string",
      userId = "string"
    )
