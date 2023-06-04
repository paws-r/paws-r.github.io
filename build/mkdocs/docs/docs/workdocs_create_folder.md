<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>workdocs_create_folder</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a folder with the specified name and parent folder

### Description

Creates a folder with the specified name and parent folder.

### Usage

    workdocs_create_folder(AuthenticationToken, Name, ParentFolderId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="workdocs_create_folder_:_AuthenticationToken">AuthenticationToken</code></td>
<td><p>Amazon WorkDocs authentication token. Not required when using
Amazon Web Services administrator credentials to access the
API.</p></td>
</tr>
<tr class="even">
<td><code id="workdocs_create_folder_:_Name">Name</code></td>
<td><p>The name of the new folder.</p></td>
</tr>
<tr class="odd">
<td><code
id="workdocs_create_folder_:_ParentFolderId">ParentFolderId</code></td>
<td><p>[required] The ID of the parent folder.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Metadata = list(
        Id = "string",
        Name = "string",
        CreatorId = "string",
        ParentFolderId = "string",
        CreatedTimestamp = as.POSIXct(
          "2015-01-01"
        ),
        ModifiedTimestamp = as.POSIXct(
          "2015-01-01"
        ),
        ResourceState = "ACTIVE"|"RESTORING"|"RECYCLING"|"RECYCLED",
        Signature = "string",
        Labels = list(
          "string"
        ),
        Size = 123,
        LatestVersionSize = 123
      )
    )

### Request syntax

    svc$create_folder(
      AuthenticationToken = "string",
      Name = "string",
      ParentFolderId = "string"
    )
