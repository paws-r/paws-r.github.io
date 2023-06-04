<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ivschat_send_event</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Sends an event to a room

### Description

Sends an event to a room. Use this within your application’s business
logic to send events to clients of a room; e.g., to notify clients to
change the way the chat UI is rendered.

### Usage

    ivschat_send_event(attributes, eventName, roomIdentifier)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="ivschat_send_event_:_attributes">attributes</code></td>
<td><p>Application-defined metadata to attach to the event sent to
clients. The maximum length of the metadata is 1 KB total.</p></td>
</tr>
<tr class="even">
<td><code id="ivschat_send_event_:_eventName">eventName</code></td>
<td><p>[required] Application-defined name of the event to send to
clients.</p></td>
</tr>
<tr class="odd">
<td><code
id="ivschat_send_event_:_roomIdentifier">roomIdentifier</code></td>
<td><p>[required] Identifier of the room to which the event will be
sent. Currently this must be an ARN.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      id = "string"
    )

### Request syntax

    svc$send_event(
      attributes = list(
        "string"
      ),
      eventName = "string",
      roomIdentifier = "string"
    )
