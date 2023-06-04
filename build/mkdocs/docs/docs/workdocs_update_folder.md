<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>workdocs_update_folder</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates the specified attributes of the specified folder

### Description

Updates the specified attributes of the specified folder. The user must
have access to both the folder and its parent folder, if applicable.

### Usage

    workdocs_update_folder(AuthenticationToken, FolderId, Name,
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
id="workdocs_update_folder_:_AuthenticationToken">AuthenticationToken</code></td>
<td><p>Amazon WorkDocs authentication token. Not required when using
Amazon Web Services administrator credentials to access the
API.</p></td>
</tr>
<tr class="even">
<td><code id="workdocs_update_folder_:_FolderId">FolderId</code></td>
<td><p>[required] The ID of the folder.</p></td>
</tr>
<tr class="odd">
<td><code id="workdocs_update_folder_:_Name">Name</code></td>
<td><p>The name of the folder.</p></td>
</tr>
<tr class="even">
<td><code
id="workdocs_update_folder_:_ParentFolderId">ParentFolderId</code></td>
<td><p>The ID of the parent folder.</p></td>
</tr>
<tr class="odd">
<td><code
id="workdocs_update_folder_:_ResourceState">ResourceState</code></td>
<td><p>The resource state of the folder. Only ACTIVE and RECYCLED are
accepted values from the API.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$update_folder(
      AuthenticationToken = "string",
      FolderId = "string",
      Name = "string",
      ParentFolderId = "string",
      ResourceState = "ACTIVE"|"RESTORING"|"RECYCLING"|"RECYCLED"
    )
