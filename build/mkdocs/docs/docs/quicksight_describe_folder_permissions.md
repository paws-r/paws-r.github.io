<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>quicksight_describe_folder_permissions</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes permissions for a folder

### Description

Describes permissions for a folder.

### Usage

    quicksight_describe_folder_permissions(AwsAccountId, FolderId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="quicksight_describe_folder_permissions_:_AwsAccountId">AwsAccountId</code></td>
<td><p>[required] The ID for the Amazon Web Services account that
contains the folder.</p></td>
</tr>
<tr class="even">
<td><code
id="quicksight_describe_folder_permissions_:_FolderId">FolderId</code></td>
<td><p>[required] The ID of the folder.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Status = 123,
      FolderId = "string",
      Arn = "string",
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

    svc$describe_folder_permissions(
      AwsAccountId = "string",
      FolderId = "string"
    )
