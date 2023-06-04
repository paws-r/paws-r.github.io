<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>workdocs_restore_document_versions</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Recovers a deleted version of an Amazon WorkDocs document

### Description

Recovers a deleted version of an Amazon WorkDocs document.

### Usage

    workdocs_restore_document_versions(AuthenticationToken, DocumentId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="workdocs_restore_document_versions_:_AuthenticationToken">AuthenticationToken</code></td>
<td><p>Amazon WorkDocs authentication token. Not required when using
Amazon Web Services administrator credentials to access the
API.</p></td>
</tr>
<tr class="even">
<td><code
id="workdocs_restore_document_versions_:_DocumentId">DocumentId</code></td>
<td><p>[required] The ID of the document.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$restore_document_versions(
      AuthenticationToken = "string",
      DocumentId = "string"
    )
