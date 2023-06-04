<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>connect_start_contact_streaming</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Initiates real-time message streaming for a new chat contact

### Description

Initiates real-time message streaming for a new chat contact.

For more information about message streaming, see [Enable real-time chat
message
streaming](https://docs.aws.amazon.com/connect/latest/adminguide/chat-message-streaming.html)
in the *Amazon Connect Administrator Guide*.

### Usage

    connect_start_contact_streaming(InstanceId, ContactId,
      ChatStreamingConfiguration, ClientToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="connect_start_contact_streaming_:_InstanceId">InstanceId</code></td>
<td><p>[required] The identifier of the Amazon Connect instance. You can
<a
href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find
the instance ID</a> in the Amazon Resource Name (ARN) of the
instance.</p></td>
</tr>
<tr class="even">
<td><code
id="connect_start_contact_streaming_:_ContactId">ContactId</code></td>
<td><p>[required] The identifier of the contact. This is the identifier
of the contact associated with the first interaction with the contact
center.</p></td>
</tr>
<tr class="odd">
<td><code
id="connect_start_contact_streaming_:_ChatStreamingConfiguration">ChatStreamingConfiguration</code></td>
<td><p>[required] The streaming configuration, such as the Amazon SNS
streaming endpoint.</p></td>
</tr>
<tr class="even">
<td><code
id="connect_start_contact_streaming_:_ClientToken">ClientToken</code></td>
<td><p>[required] A unique, case-sensitive identifier that you provide
to ensure the idempotency of the request. If not provided, the Amazon
Web Services SDK populates this field. For more information about
idempotency, see <a
href="https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/">Making
retries safe with idempotent APIs</a>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      StreamingId = "string"
    )

### Request syntax

    svc$start_contact_streaming(
      InstanceId = "string",
      ContactId = "string",
      ChatStreamingConfiguration = list(
        StreamingEndpointArn = "string"
      ),
      ClientToken = "string"
    )
