<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>quicksight_create_folder_membership</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Adds an asset, such as a dashboard, analysis, or dataset into a folder

### Description

Adds an asset, such as a dashboard, analysis, or dataset into a folder.

### Usage

    quicksight_create_folder_membership(AwsAccountId, FolderId, MemberId,
      MemberType)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="quicksight_create_folder_membership_:_AwsAccountId">AwsAccountId</code></td>
<td><p>[required] The ID for the Amazon Web Services account that
contains the folder.</p></td>
</tr>
<tr class="even">
<td><code
id="quicksight_create_folder_membership_:_FolderId">FolderId</code></td>
<td><p>[required] The ID of the folder.</p></td>
</tr>
<tr class="odd">
<td><code
id="quicksight_create_folder_membership_:_MemberId">MemberId</code></td>
<td><p>[required] The ID of the asset (the dashboard, analysis, or
dataset).</p></td>
</tr>
<tr class="even">
<td><code
id="quicksight_create_folder_membership_:_MemberType">MemberType</code></td>
<td><p>[required] The type of the member, including
<code>DASHBOARD</code>, <code>ANALYSIS</code>, and
<code>DATASET</code>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Status = 123,
      FolderMember = list(
        MemberId = "string",
        MemberType = "DASHBOARD"|"ANALYSIS"|"DATASET"
      ),
      RequestId = "string"
    )

### Request syntax

    svc$create_folder_membership(
      AwsAccountId = "string",
      FolderId = "string",
      MemberId = "string",
      MemberType = "DASHBOARD"|"ANALYSIS"|"DATASET"
    )
