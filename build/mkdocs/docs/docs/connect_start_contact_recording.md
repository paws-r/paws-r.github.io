<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>connect_start_contact_recording</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Starts recording the contact:

### Description

Starts recording the contact:

-   If the API is called *before* the agent joins the call, recording
    starts when the agent joins the call.

-   If the API is called *after* the agent joins the call, recording
    starts at the time of the API call.

StartContactRecording is a one-time action. For example, if you use
StopContactRecording to stop recording an ongoing call, you can't use
StartContactRecording to restart it. For scenarios where the recording
has started and you want to suspend and resume it, such as when
collecting sensitive information (for example, a credit card number),
use SuspendContactRecording and ResumeContactRecording.

You can use this API to override the recording behavior configured in
the [Set recording
behavior](https://docs.aws.amazon.com/connect/latest/adminguide/set-recording-behavior.html)
block.

Only voice recordings are supported at this time.

### Usage

    connect_start_contact_recording(InstanceId, ContactId, InitialContactId,
      VoiceRecordingConfiguration)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="connect_start_contact_recording_:_InstanceId">InstanceId</code></td>
<td><p>[required] The identifier of the Amazon Connect instance. You can
<a
href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find
the instance ID</a> in the Amazon Resource Name (ARN) of the
instance.</p></td>
</tr>
<tr class="even">
<td><code
id="connect_start_contact_recording_:_ContactId">ContactId</code></td>
<td><p>[required] The identifier of the contact.</p></td>
</tr>
<tr class="odd">
<td><code
id="connect_start_contact_recording_:_InitialContactId">InitialContactId</code></td>
<td><p>[required] The identifier of the contact. This is the identifier
of the contact associated with the first interaction with the contact
center.</p></td>
</tr>
<tr class="even">
<td><code
id="connect_start_contact_recording_:_VoiceRecordingConfiguration">VoiceRecordingConfiguration</code></td>
<td><p>[required] The person being recorded.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$start_contact_recording(
      InstanceId = "string",
      ContactId = "string",
      InitialContactId = "string",
      VoiceRecordingConfiguration = list(
        VoiceRecordingTrack = "FROM_AGENT"|"TO_AGENT"|"ALL"
      )
    )
