<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>connectparticipant_send_message</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Sends a message

### Description

Sends a message.

`ConnectionToken` is used for invoking this API instead of
`ParticipantToken`.

The Amazon Connect Participant Service APIs do not use [Signature
Version 4
authentication](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html).

### Usage

    connectparticipant_send_message(ContentType, Content, ClientToken,
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
id="connectparticipant_send_message_:_ContentType">ContentType</code></td>
<td><p>[required] The type of the content. Supported types are
<code>text/plain</code>, <code>text/markdown</code>,
<code>application/json</code>, and
<code>application/vnd.amazonaws.connect.message.interactive.response</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="connectparticipant_send_message_:_Content">Content</code></td>
<td><p>[required] The content of the message.</p>
<ul>
<li><p>For <code>text/plain</code> and <code>text/markdown</code>, the
Length Constraints are Minimum of 1, Maximum of 1024.</p></li>
<li><p>For <code>application/json</code>, the Length Constraints are
Minimum of 1, Maximum of 12000.</p></li>
<li><p>For
<code>application/vnd.amazonaws.connect.message.interactive.response</code>,
the Length Constraints are Minimum of 1, Maximum of 12288.</p></li>
</ul></td>
</tr>
<tr class="odd">
<td><code
id="connectparticipant_send_message_:_ClientToken">ClientToken</code></td>
<td><p>A unique, case-sensitive identifier that you provide to ensure
the idempotency of the request. If not provided, the Amazon Web Services
SDK populates this field. For more information about idempotency, see <a
href="https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/">Making
retries safe with idempotent APIs</a>.</p></td>
</tr>
<tr class="even">
<td><code
id="connectparticipant_send_message_:_ConnectionToken">ConnectionToken</code></td>
<td><p>[required] The authentication token associated with the
connection.</p></td>
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

    svc$send_message(
      ContentType = "string",
      Content = "string",
      ClientToken = "string",
      ConnectionToken = "string"
    )
