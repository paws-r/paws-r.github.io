<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>quicksight_delete_folder</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes an empty folder

### Description

Deletes an empty folder.

### Usage

    quicksight_delete_folder(AwsAccountId, FolderId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="quicksight_delete_folder_:_AwsAccountId">AwsAccountId</code></td>
<td><p>[required] The ID for the Amazon Web Services account that
contains the folder.</p></td>
</tr>
<tr class="even">
<td><code id="quicksight_delete_folder_:_FolderId">FolderId</code></td>
<td><p>[required] The ID of the folder.</p></td>
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

    svc$delete_folder(
      AwsAccountId = "string",
      FolderId = "string"
    )
