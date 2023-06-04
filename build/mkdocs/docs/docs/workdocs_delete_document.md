<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>workdocs_delete_document</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Permanently deletes the specified document and its associated metadata

### Description

Permanently deletes the specified document and its associated metadata.

### Usage

    workdocs_delete_document(AuthenticationToken, DocumentId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="workdocs_delete_document_:_AuthenticationToken">AuthenticationToken</code></td>
<td><p>Amazon WorkDocs authentication token. Not required when using
Amazon Web Services administrator credentials to access the
API.</p></td>
</tr>
<tr class="even">
<td><code
id="workdocs_delete_document_:_DocumentId">DocumentId</code></td>
<td><p>[required] The ID of the document.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_document(
      AuthenticationToken = "string",
      DocumentId = "string"
    )
