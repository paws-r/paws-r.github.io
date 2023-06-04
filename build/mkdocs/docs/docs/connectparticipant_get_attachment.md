<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>connectparticipant_get_attachment</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Provides a pre-signed URL for download of a completed attachment

### Description

Provides a pre-signed URL for download of a completed attachment. This
is an asynchronous API for use with active contacts.

`ConnectionToken` is used for invoking this API instead of
`ParticipantToken`.

The Amazon Connect Participant Service APIs do not use [Signature
Version 4
authentication](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html).

### Usage

    connectparticipant_get_attachment(AttachmentId, ConnectionToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="connectparticipant_get_attachment_:_AttachmentId">AttachmentId</code></td>
<td><p>[required] A unique identifier for the attachment.</p></td>
</tr>
<tr class="even">
<td><code
id="connectparticipant_get_attachment_:_ConnectionToken">ConnectionToken</code></td>
<td><p>[required] The authentication token associated with the
participant's connection.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Url = "string",
      UrlExpiry = "string"
    )

### Request syntax

    svc$get_attachment(
      AttachmentId = "string",
      ConnectionToken = "string"
    )
