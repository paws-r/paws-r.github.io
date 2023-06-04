<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>quicksight_update_folder</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates the name of a folder

### Description

Updates the name of a folder.

### Usage

    quicksight_update_folder(AwsAccountId, FolderId, Name)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="quicksight_update_folder_:_AwsAccountId">AwsAccountId</code></td>
<td><p>[required] The ID for the Amazon Web Services account that
contains the folder to update.</p></td>
</tr>
<tr class="even">
<td><code id="quicksight_update_folder_:_FolderId">FolderId</code></td>
<td><p>[required] The ID of the folder.</p></td>
</tr>
<tr class="odd">
<td><code id="quicksight_update_folder_:_Name">Name</code></td>
<td><p>[required] The name of the folder.</p></td>
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

    svc$update_folder(
      AwsAccountId = "string",
      FolderId = "string",
      Name = "string"
    )
