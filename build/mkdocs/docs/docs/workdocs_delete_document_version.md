<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>workdocs_delete_document_version</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes a specific version of a document

### Description

Deletes a specific version of a document.

### Usage

    workdocs_delete_document_version(AuthenticationToken, DocumentId,
      VersionId, DeletePriorVersions)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="workdocs_delete_document_version_:_AuthenticationToken">AuthenticationToken</code></td>
<td><p>Amazon WorkDocs authentication token. Not required when using
Amazon Web Services administrator credentials to access the
API.</p></td>
</tr>
<tr class="even">
<td><code
id="workdocs_delete_document_version_:_DocumentId">DocumentId</code></td>
<td><p>[required] The ID of the document associated with the version
being deleted.</p></td>
</tr>
<tr class="odd">
<td><code
id="workdocs_delete_document_version_:_VersionId">VersionId</code></td>
<td><p>[required] The ID of the version being deleted.</p></td>
</tr>
<tr class="even">
<td><code
id="workdocs_delete_document_version_:_DeletePriorVersions">DeletePriorVersions</code></td>
<td><p>[required] Deletes all versions of a document prior to the
current version.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_document_version(
      AuthenticationToken = "string",
      DocumentId = "string",
      VersionId = "string",
      DeletePriorVersions = TRUE|FALSE
    )
