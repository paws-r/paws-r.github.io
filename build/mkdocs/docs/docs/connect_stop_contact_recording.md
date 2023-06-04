<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>connect_stop_contact_recording</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Stops recording a call when a contact is being recorded

### Description

Stops recording a call when a contact is being recorded.
StopContactRecording is a one-time action. If you use
StopContactRecording to stop recording an ongoing call, you can't use
StartContactRecording to restart it. For scenarios where the recording
has started and you want to suspend it for sensitive information (for
example, to collect a credit card number), and then restart it, use
SuspendContactRecording and ResumeContactRecording.

Only voice recordings are supported at this time.

### Usage

    connect_stop_contact_recording(InstanceId, ContactId, InitialContactId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="connect_stop_contact_recording_:_InstanceId">InstanceId</code></td>
<td><p>[required] The identifier of the Amazon Connect instance. You can
<a
href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find
the instance ID</a> in the Amazon Resource Name (ARN) of the
instance.</p></td>
</tr>
<tr class="even">
<td><code
id="connect_stop_contact_recording_:_ContactId">ContactId</code></td>
<td><p>[required] The identifier of the contact.</p></td>
</tr>
<tr class="odd">
<td><code
id="connect_stop_contact_recording_:_InitialContactId">InitialContactId</code></td>
<td><p>[required] The identifier of the contact. This is the identifier
of the contact associated with the first interaction with the contact
center.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$stop_contact_recording(
      InstanceId = "string",
      ContactId = "string",
      InitialContactId = "string"
    )
