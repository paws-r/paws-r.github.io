<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>connect_suspend_contact_recording</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## When a contact is being recorded, this API suspends recording the call

### Description

When a contact is being recorded, this API suspends recording the call.
For example, you might suspend the call recording while collecting
sensitive information, such as a credit card number. Then use
ResumeContactRecording to restart recording.

The period of time that the recording is suspended is filled with
silence in the final recording.

Only voice recordings are supported at this time.

### Usage

    connect_suspend_contact_recording(InstanceId, ContactId,
      InitialContactId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="connect_suspend_contact_recording_:_InstanceId">InstanceId</code></td>
<td><p>[required] The identifier of the Amazon Connect instance. You can
<a
href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find
the instance ID</a> in the Amazon Resource Name (ARN) of the
instance.</p></td>
</tr>
<tr class="even">
<td><code
id="connect_suspend_contact_recording_:_ContactId">ContactId</code></td>
<td><p>[required] The identifier of the contact.</p></td>
</tr>
<tr class="odd">
<td><code
id="connect_suspend_contact_recording_:_InitialContactId">InitialContactId</code></td>
<td><p>[required] The identifier of the contact. This is the identifier
of the contact associated with the first interaction with the contact
center.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$suspend_contact_recording(
      InstanceId = "string",
      ContactId = "string",
      InitialContactId = "string"
    )
