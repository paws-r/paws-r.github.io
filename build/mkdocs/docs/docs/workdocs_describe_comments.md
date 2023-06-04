<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>workdocs_describe_comments</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## List all the comments for the specified document version

### Description

List all the comments for the specified document version.

### Usage

    workdocs_describe_comments(AuthenticationToken, DocumentId, VersionId,
      Limit, Marker)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="workdocs_describe_comments_:_AuthenticationToken">AuthenticationToken</code></td>
<td><p>Amazon WorkDocs authentication token. Not required when using
Amazon Web Services administrator credentials to access the
API.</p></td>
</tr>
<tr class="even">
<td><code
id="workdocs_describe_comments_:_DocumentId">DocumentId</code></td>
<td><p>[required] The ID of the document.</p></td>
</tr>
<tr class="odd">
<td><code
id="workdocs_describe_comments_:_VersionId">VersionId</code></td>
<td><p>[required] The ID of the document version.</p></td>
</tr>
<tr class="even">
<td><code id="workdocs_describe_comments_:_Limit">Limit</code></td>
<td><p>The maximum number of items to return.</p></td>
</tr>
<tr class="odd">
<td><code id="workdocs_describe_comments_:_Marker">Marker</code></td>
<td><p>The marker for the next set of results. This marker was received
from a previous call.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Comments = list(
        list(
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
      ),
      Marker = "string"
    )

### Request syntax

    svc$describe_comments(
      AuthenticationToken = "string",
      DocumentId = "string",
      VersionId = "string",
      Limit = 123,
      Marker = "string"
    )
