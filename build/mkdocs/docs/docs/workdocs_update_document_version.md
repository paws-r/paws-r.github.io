<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>workdocs_update_document_version</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Changes the status of the document version to ACTIVE

### Description

Changes the status of the document version to ACTIVE.

Amazon WorkDocs also sets its document container to ACTIVE. This is the
last step in a document upload, after the client uploads the document to
an S3-presigned URL returned by `initiate_document_version_upload`.

### Usage

    workdocs_update_document_version(AuthenticationToken, DocumentId,
      VersionId, VersionStatus)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="workdocs_update_document_version_:_AuthenticationToken">AuthenticationToken</code></td>
<td><p>Amazon WorkDocs authentication token. Not required when using
Amazon Web Services administrator credentials to access the
API.</p></td>
</tr>
<tr class="even">
<td><code
id="workdocs_update_document_version_:_DocumentId">DocumentId</code></td>
<td><p>[required] The ID of the document.</p></td>
</tr>
<tr class="odd">
<td><code
id="workdocs_update_document_version_:_VersionId">VersionId</code></td>
<td><p>[required] The version ID of the document.</p></td>
</tr>
<tr class="even">
<td><code
id="workdocs_update_document_version_:_VersionStatus">VersionStatus</code></td>
<td><p>The status of the version.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$update_document_version(
      AuthenticationToken = "string",
      DocumentId = "string",
      VersionId = "string",
      VersionStatus = "ACTIVE"
    )
