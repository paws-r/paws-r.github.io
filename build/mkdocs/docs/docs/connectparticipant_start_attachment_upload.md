<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>connectparticipant_start_attachment_upload</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Provides a pre-signed Amazon S3 URL in response for uploading the file directly to S3

### Description

Provides a pre-signed Amazon S3 URL in response for uploading the file
directly to S3.

`ConnectionToken` is used for invoking this API instead of
`ParticipantToken`.

The Amazon Connect Participant Service APIs do not use [Signature
Version 4
authentication](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html).

### Usage

    connectparticipant_start_attachment_upload(ContentType,
      AttachmentSizeInBytes, AttachmentName, ClientToken, ConnectionToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="connectparticipant_start_attachment_upload_:_ContentType">ContentType</code></td>
<td><p>[required] Describes the MIME file type of the attachment. For a
list of supported file types, see <a
href="https://docs.aws.amazon.com/connect/latest/adminguide/feature-limits.html">Feature
specifications</a> in the <em>Amazon Connect Administrator
Guide</em>.</p></td>
</tr>
<tr class="even">
<td><code
id="connectparticipant_start_attachment_upload_:_AttachmentSizeInBytes">AttachmentSizeInBytes</code></td>
<td><p>[required] The size of the attachment in bytes.</p></td>
</tr>
<tr class="odd">
<td><code
id="connectparticipant_start_attachment_upload_:_AttachmentName">AttachmentName</code></td>
<td><p>[required] A case-sensitive name of the attachment being
uploaded.</p></td>
</tr>
<tr class="even">
<td><code
id="connectparticipant_start_attachment_upload_:_ClientToken">ClientToken</code></td>
<td><p>[required] A unique, case-sensitive identifier that you provide
to ensure the idempotency of the request. If not provided, the Amazon
Web Services SDK populates this field. For more information about
idempotency, see <a
href="https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/">Making
retries safe with idempotent APIs</a>.</p></td>
</tr>
<tr class="odd">
<td><code
id="connectparticipant_start_attachment_upload_:_ConnectionToken">ConnectionToken</code></td>
<td><p>[required] The authentication token associated with the
participant's connection.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      AttachmentId = "string",
      UploadMetadata = list(
        Url = "string",
        UrlExpiry = "string",
        HeadersToInclude = list(
          "string"
        )
      )
    )

### Request syntax

    svc$start_attachment_upload(
      ContentType = "string",
      AttachmentSizeInBytes = 123,
      AttachmentName = "string",
      ClientToken = "string",
      ConnectionToken = "string"
    )
