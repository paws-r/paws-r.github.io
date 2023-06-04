<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>workdocs_create_comment</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Adds a new comment to the specified document version

### Description

Adds a new comment to the specified document version.

### Usage

    workdocs_create_comment(AuthenticationToken, DocumentId, VersionId,
      ParentId, ThreadId, Text, Visibility, NotifyCollaborators)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="workdocs_create_comment_:_AuthenticationToken">AuthenticationToken</code></td>
<td><p>Amazon WorkDocs authentication token. Not required when using
Amazon Web Services administrator credentials to access the
API.</p></td>
</tr>
<tr class="even">
<td><code
id="workdocs_create_comment_:_DocumentId">DocumentId</code></td>
<td><p>[required] The ID of the document.</p></td>
</tr>
<tr class="odd">
<td><code id="workdocs_create_comment_:_VersionId">VersionId</code></td>
<td><p>[required] The ID of the document version.</p></td>
</tr>
<tr class="even">
<td><code id="workdocs_create_comment_:_ParentId">ParentId</code></td>
<td><p>The ID of the parent comment.</p></td>
</tr>
<tr class="odd">
<td><code id="workdocs_create_comment_:_ThreadId">ThreadId</code></td>
<td><p>The ID of the root comment in the thread.</p></td>
</tr>
<tr class="even">
<td><code id="workdocs_create_comment_:_Text">Text</code></td>
<td><p>[required] The text of the comment.</p></td>
</tr>
<tr class="odd">
<td><code
id="workdocs_create_comment_:_Visibility">Visibility</code></td>
<td><p>The visibility of the comment. Options are either PRIVATE, where
the comment is visible only to the comment author and document owner and
co-owners, or PUBLIC, where the comment is visible to document owners,
co-owners, and contributors.</p></td>
</tr>
<tr class="even">
<td><code
id="workdocs_create_comment_:_NotifyCollaborators">NotifyCollaborators</code></td>
<td><p>Set this parameter to TRUE to send an email out to the document
collaborators after the comment is created.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Comment = list(
        CommentId = "string",
        ParentId = "string",
        ThreadId = "string",
        Text = "string",
        Contributor = list(
          Id = "string",
          Username = "string",
          EmailAddress = "string",
          GivenName = "string",
          Surname = "string",
          OrganizationId = "string",
          RootFolderId = "string",
          RecycleBinFolderId = "string",
          Status = "ACTIVE"|"INACTIVE"|"PENDING",
          Type = "USER"|"ADMIN"|"POWERUSER"|"MINIMALUSER"|"WORKSPACESUSER",
          CreatedTimestamp = as.POSIXct(
            "2015-01-01"
          ),
          ModifiedTimestamp = as.POSIXct(
            "2015-01-01"
          ),
          TimeZoneId = "string",
          Locale = "en"|"fr"|"ko"|"de"|"es"|"ja"|"ru"|"zh_CN"|"zh_TW"|"pt_BR"|"default",
          Storage = list(
            StorageUtilizedInBytes = 123,
            StorageRule = list(
              StorageAllocatedInBytes = 123,
              StorageType = "UNLIMITED"|"QUOTA"
            )
          )
        ),
        CreatedTimestamp = as.POSIXct(
          "2015-01-01"
        ),
        Status = "DRAFT"|"PUBLISHED"|"DELETED",
        Visibility = "PUBLIC"|"PRIVATE",
        RecipientId = "string"
      )
    )

### Request syntax

    svc$create_comment(
      AuthenticationToken = "string",
      DocumentId = "string",
      VersionId = "string",
      ParentId = "string",
      ThreadId = "string",
      Text = "string",
      Visibility = "PUBLIC"|"PRIVATE",
      NotifyCollaborators = TRUE|FALSE
    )
