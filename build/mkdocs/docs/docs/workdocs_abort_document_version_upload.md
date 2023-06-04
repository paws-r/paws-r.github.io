<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>workdocs_abort_document_version_upload</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Aborts the upload of the specified document version that was previously initiated by InitiateDocumentVersionUpload

### Description

Aborts the upload of the specified document version that was previously
initiated by `initiate_document_version_upload`. The client should make
this call only when it no longer intends to upload the document version,
or fails to do so.

### Usage

    workdocs_abort_document_version_upload(AuthenticationToken, DocumentId,
      VersionId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="workdocs_abort_document_version_upload_:_AuthenticationToken">AuthenticationToken</code></td>
<td><p>Amazon WorkDocs authentication token. Not required when using
Amazon Web Services administrator credentials to access the
API.</p></td>
</tr>
<tr class="even">
<td><code
id="workdocs_abort_document_version_upload_:_DocumentId">DocumentId</code></td>
<td><p>[required] The ID of the document.</p></td>
</tr>
<tr class="odd">
<td><code
id="workdocs_abort_document_version_upload_:_VersionId">VersionId</code></td>
<td><p>[required] The ID of the version.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$abort_document_version_upload(
      AuthenticationToken = "string",
      DocumentId = "string",
      VersionId = "string"
    )
