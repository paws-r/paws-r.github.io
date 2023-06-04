<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>workdocs_update_document</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates the specified attributes of a document

### Description

Updates the specified attributes of a document. The user must have
access to both the document and its parent folder, if applicable.

### Usage

    workdocs_update_document(AuthenticationToken, DocumentId, Name,
      ParentFolderId, ResourceState)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="workdocs_update_document_:_AuthenticationToken">AuthenticationToken</code></td>
<td><p>Amazon WorkDocs authentication token. Not required when using
Amazon Web Services administrator credentials to access the
API.</p></td>
</tr>
<tr class="even">
<td><code
id="workdocs_update_document_:_DocumentId">DocumentId</code></td>
<td><p>[required] The ID of the document.</p></td>
</tr>
<tr class="odd">
<td><code id="workdocs_update_document_:_Name">Name</code></td>
<td><p>The name of the document.</p></td>
</tr>
<tr class="even">
<td><code
id="workdocs_update_document_:_ParentFolderId">ParentFolderId</code></td>
<td><p>The ID of the parent folder.</p></td>
</tr>
<tr class="odd">
<td><code
id="workdocs_update_document_:_ResourceState">ResourceState</code></td>
<td><p>The resource state of the document. Only ACTIVE and RECYCLED are
supported.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$update_document(
      AuthenticationToken = "string",
      DocumentId = "string",
      Name = "string",
      ParentFolderId = "string",
      ResourceState = "ACTIVE"|"RESTORING"|"RECYCLING"|"RECYCLED"
    )
