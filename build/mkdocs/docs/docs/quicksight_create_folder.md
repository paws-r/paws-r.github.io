<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>quicksight_create_folder</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates an empty shared folder

### Description

Creates an empty shared folder.

### Usage

    quicksight_create_folder(AwsAccountId, FolderId, Name, FolderType,
      ParentFolderArn, Permissions, Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="quicksight_create_folder_:_AwsAccountId">AwsAccountId</code></td>
<td><p>[required] The ID for the Amazon Web Services account where you
want to create the folder.</p></td>
</tr>
<tr class="even">
<td><code id="quicksight_create_folder_:_FolderId">FolderId</code></td>
<td><p>[required] The ID of the folder.</p></td>
</tr>
<tr class="odd">
<td><code id="quicksight_create_folder_:_Name">Name</code></td>
<td><p>The name of the folder.</p></td>
</tr>
<tr class="even">
<td><code
id="quicksight_create_folder_:_FolderType">FolderType</code></td>
<td><p>The type of folder. By default, <code>folderType</code> is
<code>SHARED</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="quicksight_create_folder_:_ParentFolderArn">ParentFolderArn</code></td>
<td><p>The Amazon Resource Name (ARN) for the parent folder.</p>
<p><code>ParentFolderArn</code> can be null. An empty
<code>parentFolderArn</code> creates a root-level folder.</p></td>
</tr>
<tr class="even">
<td><code
id="quicksight_create_folder_:_Permissions">Permissions</code></td>
<td><p>A structure that describes the principals and the resource-level
permissions of a folder.</p>
<p>To specify no permissions, omit <code>Permissions</code>.</p></td>
</tr>
<tr class="odd">
<td><code id="quicksight_create_folder_:_Tags">Tags</code></td>
<td><p>Tags for the folder.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Status = 123,
      Arn = "string",
      FolderId = "string",
      RequestId = "string"
    )

### Request syntax

    svc$create_folder(
      AwsAccountId = "string",
      FolderId = "string",
      Name = "string",
      FolderType = "SHARED",
      ParentFolderArn = "string",
      Permissions = list(
        list(
          Principal = "string",
          Actions = list(
            "string"
          )
        )
      ),
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      )
    )
