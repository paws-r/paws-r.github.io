<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>quicksight_list_folder_members</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## List all assets (DASHBOARD, ANALYSIS, and DATASET) in a folder

### Description

List all assets (`DASHBOARD`, `ANALYSIS`, and `DATASET`) in a folder.

### Usage

    quicksight_list_folder_members(AwsAccountId, FolderId, NextToken,
      MaxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="quicksight_list_folder_members_:_AwsAccountId">AwsAccountId</code></td>
<td><p>[required] The ID for the Amazon Web Services account that
contains the folder.</p></td>
</tr>
<tr class="even">
<td><code
id="quicksight_list_folder_members_:_FolderId">FolderId</code></td>
<td><p>[required] The ID of the folder.</p></td>
</tr>
<tr class="odd">
<td><code
id="quicksight_list_folder_members_:_NextToken">NextToken</code></td>
<td><p>The token for the next set of results, or null if there are no
more results.</p></td>
</tr>
<tr class="even">
<td><code
id="quicksight_list_folder_members_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of results to be returned per
request.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Status = 123,
      FolderMemberList = list(
        list(
          MemberId = "string",
          MemberArn = "string"
        )
      ),
      NextToken = "string",
      RequestId = "string"
    )

### Request syntax

    svc$list_folder_members(
      AwsAccountId = "string",
      FolderId = "string",
      NextToken = "string",
      MaxResults = 123
    )
