<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>quicksight_describe_folder</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes a folder

### Description

Describes a folder.

### Usage

    quicksight_describe_folder(AwsAccountId, FolderId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="quicksight_describe_folder_:_AwsAccountId">AwsAccountId</code></td>
<td><p>[required] The ID for the Amazon Web Services account that
contains the folder.</p></td>
</tr>
<tr class="even">
<td><code
id="quicksight_describe_folder_:_FolderId">FolderId</code></td>
<td><p>[required] The ID of the folder.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Status = 123,
      Folder = list(
        FolderId = "string",
        Arn = "string",
        Name = "string",
        FolderType = "SHARED",
        FolderPath = list(
          "string"
        ),
        CreatedTime = as.POSIXct(
          "2015-01-01"
        ),
        LastUpdatedTime = as.POSIXct(
          "2015-01-01"
        )
      ),
      RequestId = "string"
    )

### Request syntax

    svc$describe_folder(
      AwsAccountId = "string",
      FolderId = "string"
    )
