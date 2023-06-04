<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>quicksight_update_folder_permissions</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates permissions of a folder

### Description

Updates permissions of a folder.

### Usage

    quicksight_update_folder_permissions(AwsAccountId, FolderId,
      GrantPermissions, RevokePermissions)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="quicksight_update_folder_permissions_:_AwsAccountId">AwsAccountId</code></td>
<td><p>[required] The ID for the Amazon Web Services account that
contains the folder to update.</p></td>
</tr>
<tr class="even">
<td><code
id="quicksight_update_folder_permissions_:_FolderId">FolderId</code></td>
<td><p>[required] The ID of the folder.</p></td>
</tr>
<tr class="odd">
<td><code
id="quicksight_update_folder_permissions_:_GrantPermissions">GrantPermissions</code></td>
<td><p>The permissions that you want to grant on a resource.</p></td>
</tr>
<tr class="even">
<td><code
id="quicksight_update_folder_permissions_:_RevokePermissions">RevokePermissions</code></td>
<td><p>The permissions that you want to revoke from a resource.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Status = 123,
      Arn = "string",
      FolderId = "string",
      Permissions = list(
        list(
          Principal = "string",
          Actions = list(
            "string"
          )
        )
      ),
      RequestId = "string"
    )

### Request syntax

    svc$update_folder_permissions(
      AwsAccountId = "string",
      FolderId = "string",
      GrantPermissions = list(
        list(
          Principal = "string",
          Actions = list(
            "string"
          )
        )
      ),
      RevokePermissions = list(
        list(
          Principal = "string",
          Actions = list(
            "string"
          )
        )
      )
    )
