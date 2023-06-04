<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>workdocs_delete_folder_contents</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes the contents of the specified folder

### Description

Deletes the contents of the specified folder.

### Usage

    workdocs_delete_folder_contents(AuthenticationToken, FolderId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="workdocs_delete_folder_contents_:_AuthenticationToken">AuthenticationToken</code></td>
<td><p>Amazon WorkDocs authentication token. Not required when using
Amazon Web Services administrator credentials to access the
API.</p></td>
</tr>
<tr class="even">
<td><code
id="workdocs_delete_folder_contents_:_FolderId">FolderId</code></td>
<td><p>[required] The ID of the folder.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_folder_contents(
      AuthenticationToken = "string",
      FolderId = "string"
    )
