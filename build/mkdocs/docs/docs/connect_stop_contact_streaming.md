<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>connect_stop_contact_streaming</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Ends message streaming on a specified contact

### Description

Ends message streaming on a specified contact. To restart message
streaming on that contact, call the `start_contact_streaming` API.

### Usage

    connect_stop_contact_streaming(InstanceId, ContactId, StreamingId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="connect_stop_contact_streaming_:_InstanceId">InstanceId</code></td>
<td><p>[required] The identifier of the Amazon Connect instance. You can
<a
href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find
the instance ID</a> in the Amazon Resource Name (ARN) of the
instance.</p></td>
</tr>
<tr class="even">
<td><code
id="connect_stop_contact_streaming_:_ContactId">ContactId</code></td>
<td><p>[required] The identifier of the contact. This is the identifier
of the contact that is associated with the first interaction with the
contact center.</p></td>
</tr>
<tr class="odd">
<td><code
id="connect_stop_contact_streaming_:_StreamingId">StreamingId</code></td>
<td><p>[required] The identifier of the streaming configuration
enabled.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$stop_contact_streaming(
      InstanceId = "string",
      ContactId = "string",
      StreamingId = "string"
    )
