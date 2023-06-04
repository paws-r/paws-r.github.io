<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>workdocs_delete_comment</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes the specified comment from the document version

### Description

Deletes the specified comment from the document version.

### Usage

    workdocs_delete_comment(AuthenticationToken, DocumentId, VersionId,
      CommentId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="workdocs_delete_comment_:_AuthenticationToken">AuthenticationToken</code></td>
<td><p>Amazon WorkDocs authentication token. Not required when using
Amazon Web Services administrator credentials to access the
API.</p></td>
</tr>
<tr class="even">
<td><code
id="workdocs_delete_comment_:_DocumentId">DocumentId</code></td>
<td><p>[required] The ID of the document.</p></td>
</tr>
<tr class="odd">
<td><code id="workdocs_delete_comment_:_VersionId">VersionId</code></td>
<td><p>[required] The ID of the document version.</p></td>
</tr>
<tr class="even">
<td><code id="workdocs_delete_comment_:_CommentId">CommentId</code></td>
<td><p>[required] The ID of the comment.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_comment(
      AuthenticationToken = "string",
      DocumentId = "string",
      VersionId = "string",
      CommentId = "string"
    )
