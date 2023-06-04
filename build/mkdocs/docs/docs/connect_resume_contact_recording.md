<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>connect_resume_contact_recording</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## When a contact is being recorded, and the recording has been suspended using SuspendContactRecording, this API resumes recording the call

### Description

When a contact is being recorded, and the recording has been suspended
using SuspendContactRecording, this API resumes recording the call.

Only voice recordings are supported at this time.

### Usage

    connect_resume_contact_recording(InstanceId, ContactId,
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
id="connect_resume_contact_recording_:_InstanceId">InstanceId</code></td>
<td><p>[required] The identifier of the Amazon Connect instance. You can
<a
href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find
the instance ID</a> in the Amazon Resource Name (ARN) of the
instance.</p></td>
</tr>
<tr class="even">
<td><code
id="connect_resume_contact_recording_:_ContactId">ContactId</code></td>
<td><p>[required] The identifier of the contact.</p></td>
</tr>
<tr class="odd">
<td><code
id="connect_resume_contact_recording_:_InitialContactId">InitialContactId</code></td>
<td><p>[required] The identifier of the contact. This is the identifier
of the contact associated with the first interaction with the contact
center.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$resume_contact_recording(
      InstanceId = "string",
      ContactId = "string",
      InitialContactId = "string"
    )
