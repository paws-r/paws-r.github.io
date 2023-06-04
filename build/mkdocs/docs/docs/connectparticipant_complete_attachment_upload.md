<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>connectparticipant_complete_attachment_upload</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Allows you to confirm that the attachment has been uploaded using the pre-signed URL provided in StartAttachmentUpload API

### Description

Allows you to confirm that the attachment has been uploaded using the
pre-signed URL provided in StartAttachmentUpload API.

`ConnectionToken` is used for invoking this API instead of
`ParticipantToken`.

The Amazon Connect Participant Service APIs do not use [Signature
Version 4
authentication](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html).

### Usage

    connectparticipant_complete_attachment_upload(AttachmentIds,
      ClientToken, ConnectionToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="connectparticipant_complete_attachment_upload_:_AttachmentIds">AttachmentIds</code></td>
<td><p>[required] A list of unique identifiers for the
attachments.</p></td>
</tr>
<tr class="even">
<td><code
id="connectparticipant_complete_attachment_upload_:_ClientToken">ClientToken</code></td>
<td><p>[required] A unique, case-sensitive identifier that you provide
to ensure the idempotency of the request. If not provided, the Amazon
Web Services SDK populates this field. For more information about
idempotency, see <a
href="https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/">Making
retries safe with idempotent APIs</a>.</p></td>
</tr>
<tr class="odd">
<td><code
id="connectparticipant_complete_attachment_upload_:_ConnectionToken">ConnectionToken</code></td>
<td><p>[required] The authentication token associated with the
participant's connection.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$complete_attachment_upload(
      AttachmentIds = list(
        "string"
      ),
      ClientToken = "string",
      ConnectionToken = "string"
    )
