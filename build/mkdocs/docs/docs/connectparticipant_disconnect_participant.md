<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>connectparticipant_disconnect_participant</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Disconnects a participant

### Description

Disconnects a participant.

`ConnectionToken` is used for invoking this API instead of
`ParticipantToken`.

The Amazon Connect Participant Service APIs do not use [Signature
Version 4
authentication](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html).

### Usage

    connectparticipant_disconnect_participant(ClientToken, ConnectionToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="connectparticipant_disconnect_participant_:_ClientToken">ClientToken</code></td>
<td><p>A unique, case-sensitive identifier that you provide to ensure
the idempotency of the request. If not provided, the Amazon Web Services
SDK populates this field. For more information about idempotency, see <a
href="https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/">Making
retries safe with idempotent APIs</a>.</p></td>
</tr>
<tr class="even">
<td><code
id="connectparticipant_disconnect_participant_:_ConnectionToken">ConnectionToken</code></td>
<td><p>[required] The authentication token associated with the
participant's connection.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$disconnect_participant(
      ClientToken = "string",
      ConnectionToken = "string"
    )
