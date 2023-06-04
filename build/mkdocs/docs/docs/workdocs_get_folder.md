<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>workdocs_get_folder</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves the metadata of the specified folder

### Description

Retrieves the metadata of the specified folder.

### Usage

    workdocs_get_folder(AuthenticationToken, FolderId,
      IncludeCustomMetadata)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="workdocs_get_folder_:_AuthenticationToken">AuthenticationToken</code></td>
<td><p>Amazon WorkDocs authentication token. Not required when using
Amazon Web Services administrator credentials to access the
API.</p></td>
</tr>
<tr class="even">
<td><code id="workdocs_get_folder_:_FolderId">FolderId</code></td>
<td><p>[required] The ID of the folder.</p></td>
</tr>
<tr class="odd">
<td><code
id="workdocs_get_folder_:_IncludeCustomMetadata">IncludeCustomMetadata</code></td>
<td><p>Set to TRUE to include custom metadata in the response.</p></td>
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
      ),
      CustomMetadata = list(
        "string"
      )
    )

### Request syntax

    svc$get_folder(
      AuthenticationToken = "string",
      FolderId = "string",
      IncludeCustomMetadata = TRUE|FALSE
    )
