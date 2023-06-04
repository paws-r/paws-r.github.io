<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>connectparticipant_send_event</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Sends an event

### Description

Sends an event.

`ConnectionToken` is used for invoking this API instead of
`ParticipantToken`.

The Amazon Connect Participant Service APIs do not use [Signature
Version 4
authentication](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html).

### Usage

    connectparticipant_send_event(ContentType, Content, ClientToken,
      ConnectionToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="connectparticipant_send_event_:_ContentType">ContentType</code></td>
<td><p>[required] The content type of the request. Supported types
are:</p>
<ul>
<li><p>application/vnd.amazonaws.connect.event.typing</p></li>
<li><p>application/vnd.amazonaws.connect.event.connection.acknowledged</p></li>
<li><p>application/vnd.amazonaws.connect.event.message.delivered</p></li>
<li><p>application/vnd.amazonaws.connect.event.message.read</p></li>
</ul></td>
</tr>
<tr class="even">
<td><code
id="connectparticipant_send_event_:_Content">Content</code></td>
<td><p>The content of the event to be sent (for example, message text).
For content related to message receipts, this is supported in the form
of a JSON string.</p>
<p>Sample Content:
"{\"messageId\":\"11111111-aaaa-bbbb-cccc-EXAMPLE01234\"}"</p></td>
</tr>
<tr class="odd">
<td><code
id="connectparticipant_send_event_:_ClientToken">ClientToken</code></td>
<td><p>A unique, case-sensitive identifier that you provide to ensure
the idempotency of the request. If not provided, the Amazon Web Services
SDK populates this field. For more information about idempotency, see <a
href="https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/">Making
retries safe with idempotent APIs</a>.</p></td>
</tr>
<tr class="even">
<td><code
id="connectparticipant_send_event_:_ConnectionToken">ConnectionToken</code></td>
<td><p>[required] The authentication token associated with the
participant's connection.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Id = "string",
      AbsoluteTime = "string"
    )

### Request syntax

    svc$send_event(
      ContentType = "string",
      Content = "string",
      ClientToken = "string",
      ConnectionToken = "string"
    )
